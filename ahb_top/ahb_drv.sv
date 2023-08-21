class ahb_driver extends uvm_driver #();
	
	`uvm_component_utils(ahb_driver)
	
	function new(string name ="ahb_driver",uvm_component parent);
		super.new(name,parent);
	endfunction
	
	function void build_phase(uvm_phase phase);
		super.build_phase(phase); 
    endfunction

endclass


 


	


