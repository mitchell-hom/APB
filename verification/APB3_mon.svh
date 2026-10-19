class APB3_mon extends uvm_monitor;
	`uvm_component_utils(APB3_mon)

	// declarations
	uvm_analysis_port #(packet) monAP;

	// constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
      		monAP = new("monAP", this);
	endfunction : new

	// phases
	// TODO	
endclass : APB3_mon
