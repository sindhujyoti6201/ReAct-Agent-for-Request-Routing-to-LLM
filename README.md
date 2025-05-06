# ReAct-Agent-for-Request-Routing-to-LLM

This project implements a ReAct-style intelligent agent to perform dynamic request routing across multiple LLMs using structured reasoning and planning. It leverages:

- **PDDL** to model the domain of LLM capabilities, costs, and constraints.
- **Unified Planning** as the backend solver to determine optimal routing paths.
- **ReAct Agent** architecture for step-by-step reasoning and tool usage.
- **(Optional)** Integration with OpenRouter API for real-world simulation.

## Key Features
- Ontology-based modeling of LLM providers and capabilities
- Automatic generation and solving of PDDL domain and problem files
- Modular agent design using the Model Context Protocol (MCP)
- Fully implemented in Python

## Getting Started
Instructions on setup, dependencies, and running the planner/agent are provided in the `docs/` folder.
