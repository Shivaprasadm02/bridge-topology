class bridge_base_test extends uvm_test;
	`uvm_component_utils(bridge_base_test)
	
	bridge_env envh;
	
	vbase_seq seqh;
	
	function new(string name="bridge_base_test",uvm_component parent);
		super.new(name,parent);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		envh=bridge_env::type_id::create("envh",this);
	endfunction
	
	task run_phase(uvm_phase phase);
	
		seqh=vbase_seq::type_id::create("seqh");
		uvm_top.print_topology;
	endtask
endclass