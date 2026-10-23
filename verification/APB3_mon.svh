class APB3_mon extends uvm_monitor;
	`uvm_component_utils(APB3_mon)

	// declarations
	uvm_analysis_port #(packet) mon_ap;
	APB3_if vif;

	// constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
      		mon_ap = new("mon_ap", this);
	endfunction : new

	// phases
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		// try to retrieve interface
		if (!uvm_config_db#(virtual APB3_if)::get(this, "", "APB3_if", vif)) begin
			`uvm_fatal("MONITOR_NO_VIF", "Could not retrieve virtual interface in monitor")
		end
	endfunction : build_phase

	virtual task run_phase(uvm_phase phase);
		APB3_tx tx;

		// sample
		forever begin
			// wait for rising edge of clock
			@ (posedge vif.PCLK);

			// get data from virtual interface
			tx.PRESETn = vif.PRESETn;
			tx.PADDR = vif.PADDR;
			tx.PSELx = vif.PSELx;
			tx.PENABLE = vif.PENABLE;
			tx.PWRITE = vif.PWRITE;
			tx.PWDATA = vif.PWDATA;
			tx.PREADY = vif.PREADY;
			tx.PRDATA = vif.PRDATA;
			tx.PSUBERR = vif.PSUBERR;
		
			// write to analysis port
			mon_ap.write(tx);
		end // forever
	endtask : run_phase
endclass : APB3_mon
