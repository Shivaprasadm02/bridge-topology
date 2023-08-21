class ahb_agent extends uvm_agent;

	`uvm_component_utils(ahb_agent)
       
	ahb_monitor monh;
	ahb_sequencer seqrh;
	ahb_driver drvh;

  function new(string name = "ahb_agent", uvm_component parent = null);
	super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	    monh=ahb_monitor::type_id::create("monh",this);	
		drvh=ahb_driver::type_id::create("drvh",this);
		seqrh=ahb_sequencer::type_id::create("seqrh",this);
	endfunction

 endclass 


