package bridge_test_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"


`include "ahb_drv.sv"
`include "ahb_mon.sv"
`include "ahb_seqr.sv"
`include "ahb_agent.sv"
`include "ahb_agt_top.sv"
`include "ahb_seqs.sv"

`include "apb_drv.sv"
`include "apb_mon.sv"
`include "apb_seqr.sv"
`include "apb_agent.sv"
`include "apb_agt_top.sv"
`include "apb_seqs.sv"

`include "virtual_seqr.sv"
`include "virtual_seqs.sv"
`include "bridge_env.sv"
`include "test.sv"


endpackage