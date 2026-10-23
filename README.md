# APB
ARM APB Verification

# Project Goals
My goals with this project are to expand my UVM experience by taking on a project that emphasizes the following:
* protocol knowledge
* reusable testbench components
* SVA usage

My previous project, block-level verification for a synchronous FIFO, emphasized the basics of UVM and RTL. While I would benefit at this point from more experience with RTL, I'd like to lean more into SVA's and protocols in order to separate my learning into component parts. I have a basic level of UVM experience and will be relying on this project to create a more robust base in the methodology, at which point I will choose another project which emphasizes RTL more. This will allow me to learn each part of the process in a more manageable way. 	
	In order to achieve this, I will be verifying APB3 protocol. I will create a reusable agent whose purpose is to verify protocol compliance and can be used in a larger verification suite.

# NOMENCLATURE
A note on nomenclature: for this project, I will be using the terms "Manager" and "Subordinate" in order to fit in with the conventions "MISO" and "MOSI" (manager in subordinate out, manager out subordinate in). I have also changed the name of the corresponding signals, etc. in the project accordingly. 
