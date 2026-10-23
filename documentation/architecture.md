# ARCHITECTURE
This project will primarily focus on the reusable agent for APB protocol compliance. The agent will start out as just a passive component, after which I plan to add configurable (optional) ability to add active components like a sequencer, driver, and scoreboard (the scoreboard being instantiated in the environment).

Transactions will be sampled on the rising edge of `PCLK`, since this is when all signals are sampled according to spec.
