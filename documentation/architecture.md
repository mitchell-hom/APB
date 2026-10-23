# ARCHITECTURE
This project will primarily focus on the reusable agent for APB protocol compliance. The agent will start out as just a passive component, after which I plan to add configurable (optional) ability to add active components like a sequencer, driver, and scoreboard (the scoreboard being instantiated in the environment).

Transactions will be sampled on the rising edge of `PCLK`, since this is when all signals are sampled according to spec.

# Agent Hierarchy
The passive agent will contain the following components:
* monitor
* subscriber (coverage collector)

The monitor will sample transactions from the virtual interface and deposit them in the subscriber's analysis implementation. After this, SVA's will be used to analyze protocol compliance.

In the future, I expect to add optional active components in the form of a sequencer and driver.
