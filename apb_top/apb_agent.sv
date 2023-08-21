class apb_agent extends uvm_agent;

	`uvm_component_utils(apb_agent)
       
	apb_monitor monh;
	apb_sequencer seqrh;
	apb_driver drvh;

  function new(string name = "apb_agent", uvm_component parent = null);
	super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	    monh=apb_monitor::type_id::create("monh",this);	
		drvh=apb_driver::type_id::create("drvh",this);
		seqrh=apb_sequencer::type_id::create("seqrh",this);
	endfunction

 endclass 


