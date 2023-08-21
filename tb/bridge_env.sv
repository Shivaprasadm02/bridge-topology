class bridge_env extends uvm_env;

    `uvm_component_utils(bridge_env)

	ahb_agt_top ahb_top;	
	apb_agt_top apb_top;
	
	virtual_sequencer v_seqrh;
	
	function new(string name = "bridge_env", uvm_component parent);
		super.new(name,parent);
	endfunction

    function void build_phase(uvm_phase phase);
	
	    ahb_top=ahb_agt_top::type_id::create("ahb_top" ,this);
	    apb_top=apb_agt_top::type_id::create("apb_top" ,this);
		
		v_seqrh=virtual_sequencer::type_id::create("v_seqrh",this);
	
       super.build_phase(phase);
               
	endfunction
	
	task run_phase(uvm_phase phase);
		uvm_top.print_topology;
	endtask
endclass
