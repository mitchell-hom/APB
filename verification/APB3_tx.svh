class APB3_tx extends uvm_sequence_item;
	logic PCLK;
	logic PRESETn;
	logic [constants::ADDR_WIDTH-1 : 0] PADDR;
	logic PSELx;
	logic PENABLE;
	logic PWRITE;
	logic [constants::DATA_WIDTH-1 : 0] PWDATA; 
	logic PREADY;
	logic [constants::DATA_WIDTH-1 : 0] PRDATA; 
	logic PSUBERR; 
endclass : APB3_tx
