class APB3_agent extends uvm_agent;
	`uvm_component_utils(APB3_agent);

	// handle declarations
	APB3_mon Imon;
	uvm_analysis_port #(APB3_tx) mon_ap;
	APB3_cov_sub Icov_sub;
	uvm_analysis_imp #(APB3_tx, APB3_cov_sub) cov_sub_imp;

	// constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	// phases
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		// instantiate components/ports
		mon_ap = new("mon_ap", this);
		cov_sub_imp = new("cov_sub_imp", this);
		Imon = APB3_mon::type_id::create("Imon", this);
		Icov_sub = APB3_cov_sub::type_id::create("Icov_sub", this);
	endfunction : build_phase

	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);

		// connect ports
		Imon.mon_ap.connect(mon_ap);
		Imon.mon_ap.connect(cov_sub_imp);
	endfunction : connect_phase
endclass : agent
