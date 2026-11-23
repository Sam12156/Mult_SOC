
`timescale 1 ns / 1 ps

	module sc_fifo_axi_v1_0_S00_AXI #
	(
		// Users to add parameters here
		// sc_fifo parameters (Lab 3 defaults). CONFIG_REG and THRESHOLD_REG
		// are built from these, so they stay correct if any are changed.
		parameter integer WIDTH                  = 16,
		parameter integer DEPTH                  = 32,
		parameter integer ALMOST_EMPTY_THRESHOLD = 1,
		parameter integer ALMOST_FULL_THRESHOLD  = 31,
		parameter integer READ_LATENCY           = 1,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 16
	//-- Register map (16 x 32-bit, offsets 0x00 - 0x3C)
	//--   0x00 slv_reg0  FPGA_REV_REG    RO  constant 0x5200_0004
	//--   0x04 slv_reg1  FIFO_RST_REG    WO  write 1 -> srst pulse
	//--   0x08 slv_reg2  WR_DATA_REG     WO  write   -> write_enable pulse
	//--   0x0C slv_reg3  RD_REQ_REG      WO  write 1 -> read_enable pulse
	//--   0x10 slv_reg4  RD_DATA_REG     RO  last word popped
	//--   0x14 slv_reg5  STATUS_REG      RO  {rd_valid, a_full, a_empty, full, empty}
	//--   0x18 slv_reg6  DATA_COUNT_REG  RO  data_count
	//--   0x1C slv_reg7  CONFIG_REG      RO  {READ_LATENCY, DEPTH, WIDTH}
	//--   0x20 slv_reg8  THRESHOLD_REG   RO  {ALMOST_FULL_THR, ALMOST_EMPTY_THR}
	//--   0x24 - 0x3C    RESERVED            reads as 0
	//-- No storage registers are needed: the WO registers only generate
	//-- one-clock pulses, and the RO registers come straight from the FIFO.
	localparam integer COUNT_WIDTH = $clog2(DEPTH + 1);

	localparam [31:0] FPGA_REV_VALUE = 32'h5200_0004;

	// Fixed-width copies of the parameters for packing into CONFIG/THRESHOLD
	localparam [3:0]  CFG_READ_LATENCY = READ_LATENCY;
	localparam [15:0] CFG_DEPTH        = DEPTH;
	localparam [7:0]  CFG_WIDTH        = WIDTH;
	localparam [15:0] CFG_AF_THRESHOLD = ALMOST_FULL_THRESHOLD;
	localparam [15:0] CFG_AE_THRESHOLD = ALMOST_EMPTY_THRESHOLD;

	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	reg	 aw_en;

	// Register index of the current write (0..15)
	wire [OPT_MEM_ADDR_BITS:0] wr_index = axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

	// One-clock command pulses to the FIFO
	reg              fifo_rst_pulse;
	reg              fifo_wr_pulse;
	reg              fifo_rd_pulse;
	reg  [WIDTH-1:0] fifo_data_in;

	// FIFO outputs
	wire [WIDTH-1:0]       fifo_data_out;
	wire                   fifo_valid;
	wire [COUNT_WIDTH-1:0] fifo_data_count;
	wire                   fifo_almost_full;
	wire                   fifo_almost_empty;
	wire                   fifo_full;
	wire                   fifo_empty;
	wire                   fifo_srst;

	// RD_DATA_REG and the RD_VALID status bit
	reg  [31:0] rd_data;
	reg         rd_valid;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	// FIFO command pulse generation (replaces the template's slv_reg writes)
	// slv_reg_wren is high for exactly one clock per AXI write, so each
	// pulse below is high for exactly one clock per write. Writes to the
	// read-only and reserved offsets do nothing.
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      fifo_rst_pulse <= 1'b0;
	      fifo_wr_pulse  <= 1'b0;
	      fifo_rd_pulse  <= 1'b0;
	      fifo_data_in   <= 0;
	    end 
	  else
	    begin
	      // 0x04 FIFO_RST_REG: writing 1 resets the FIFO, writing 0 does nothing
	      fifo_rst_pulse <= slv_reg_wren && (wr_index == 4'h1) && S_AXI_WDATA[0];
	      // 0x08 WR_DATA_REG: every write pushes one word
	      fifo_wr_pulse  <= slv_reg_wren && (wr_index == 4'h2);
	      // 0x0C RD_REQ_REG: writing 1 pops one word, writing 0 does nothing
	      fifo_rd_pulse  <= slv_reg_wren && (wr_index == 4'h3) && S_AXI_WDATA[0];

	      if (slv_reg_wren && (wr_index == 4'h2))
	        fifo_data_in <= S_AXI_WDATA[WIDTH-1:0];
	    end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        4'h0   : reg_data_out <= FPGA_REV_VALUE;                       // FPGA_REV_REG
	        4'h1   : reg_data_out <= 0;                                    // FIFO_RST_REG (WO)
	        4'h2   : reg_data_out <= 0;                                    // WR_DATA_REG  (WO)
	        4'h3   : reg_data_out <= 0;                                    // RD_REQ_REG   (WO)
	        4'h4   : reg_data_out <= rd_data;                              // RD_DATA_REG
	        4'h5   : reg_data_out <= {27'b0, rd_valid, fifo_almost_full,
	                                  fifo_almost_empty, fifo_full, fifo_empty}; // STATUS_REG
	        4'h6   : reg_data_out <= fifo_data_count;                      // DATA_COUNT_REG (zero-extended)
	        4'h7   : reg_data_out <= {4'b0, CFG_READ_LATENCY, CFG_DEPTH, CFG_WIDTH};  // CONFIG_REG
	        4'h8   : reg_data_out <= {CFG_AF_THRESHOLD, CFG_AE_THRESHOLD};           // THRESHOLD_REG
	        default : reg_data_out <= 0;                                   // 0x24 - 0x3C reserved
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here

	// FIFO reset: AXI reset (active low) or a software write of 1 to FIFO_RST_REG
	assign fifo_srst = ~S_AXI_ARESETN | fifo_rst_pulse;

	sc_fifo #(
		.WIDTH                  (WIDTH),
		.DEPTH                  (DEPTH),
		.ALMOST_EMPTY_THRESHOLD (ALMOST_EMPTY_THRESHOLD),
		.ALMOST_FULL_THRESHOLD  (ALMOST_FULL_THRESHOLD),
		.READ_LATENCY           (READ_LATENCY)
	) sc_fifo_inst (
		.clk          (S_AXI_ACLK),
		.srst         (fifo_srst),
		.data_in      (fifo_data_in),
		.write_enable (fifo_wr_pulse),
		.read_enable  (fifo_rd_pulse),
		.data_count   (fifo_data_count),
		.valid        (fifo_valid),
		.data_out     (fifo_data_out),
		.almost_full  (fifo_almost_full),
		.almost_empty (fifo_almost_empty),
		.full         (fifo_full),
		.empty        (fifo_empty)
	);

	// RD_DATA_REG / RD_VALID: capture data_out on the clock where valid is
	// high. RD_VALID clears on AXI reset, FIFO_RST, or the next read request.
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 || fifo_rst_pulse )
	    begin
	      rd_data  <= 0;
	      rd_valid <= 1'b0;
	    end
	  else if ( fifo_valid )
	    begin
	      rd_data  <= fifo_data_out;   // zero-extended to 32 bits
	      rd_valid <= 1'b1;
	    end
	  else if ( fifo_rd_pulse )
	    begin
	      rd_valid <= 1'b0;
	    end
	end

	// User logic ends

	endmodule
