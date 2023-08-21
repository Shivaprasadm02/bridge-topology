class ahb_agt_top extends uvm_env;

	`uvm_component_utils(ahb_agt_top)
  
      	 ahb_agent agnth;
	
	function new(string name = "ahb_agt_top" , uvm_component parent);
		super.new(name,parent);
	endfunction
	
    function void build_phase(uvm_phase phase);
     		super.build_phase(phase);
	
		agnth=ahb_agent::type_id::create("agnth",this);
	endfunction
	
endclass
