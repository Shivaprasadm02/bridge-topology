class vbase_seq extends uvm_sequence #(uvm_sequence_item);

	`uvm_object_utils(vbase_seq)
	
	ahb_sequencer ahb_seqrh;
	apb_sequencer apb_seqrh;
	virtual_sequencer vsqrh;
	
 	function new(string name = "vbase_seq");
		super.new(name);
	endfunction
	
	task body();
		assert($cast(vsqrh,m_sequencer))
		else
		 begin
			`uvm_error("body","err in casting")
		 end
		ahb_seqrh=vsqrh.ahb_seqrh;
		apb_seqrh=vsqrh.apb_seqrh;
	endtask

endclass 

