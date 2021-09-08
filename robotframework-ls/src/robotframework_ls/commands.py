# Warning: Don't edit file (autogenerated from python -m dev codegen).
from typing import List

ROBOT_RUN_TEST = "robot.runTest"  # Run Test/Task
ROBOT_DEBUG_TEST = "robot.debugTest"  # Debug Test/Task
ROBOT_RUN_SUITE = "robot.runSuite"  # Run Tests/Tasks Suite
ROBOT_DEBUG_SUITE = "robot.debugSuite"  # Debug Tests/Tasks Suite
ROBOT_INTERACTIVE_SHELL = "robot.interactiveShell"  # Start Interactive Console
ROBOT_INTERNAL_RFINTERACTIVE_START = "robot.internal.rfinteractive.start"  # Create Interactive Console
ROBOT_INTERNAL_RFINTERACTIVE_EVALUATE = "robot.internal.rfinteractive.evaluate"  # Evaluate in Interactive Console
ROBOT_INTERNAL_RFINTERACTIVE_STOP = "robot.internal.rfinteractive.stop"  # Stop Interactive Console
ROBOT_INTERNAL_RFINTERACTIVE_SEMANTIC_TOKENS = "robot.internal.rfinteractive.semanticTokens"  # Get the semantic tokens based on the code entered.
ROBOT_INTERNAL_RFINTERACTIVE_COMPLETIONS = "robot.internal.rfinteractive.completions"  # Get the completions based on the code entered.

ALL_SERVER_COMMANDS: List[str] = [
    ROBOT_INTERNAL_RFINTERACTIVE_START,
    ROBOT_INTERNAL_RFINTERACTIVE_EVALUATE,
    ROBOT_INTERNAL_RFINTERACTIVE_STOP,
    ROBOT_INTERNAL_RFINTERACTIVE_SEMANTIC_TOKENS,
    ROBOT_INTERNAL_RFINTERACTIVE_COMPLETIONS,
]
