# Simple Java Swing Calculator

This is a minimal calculator implemented with Java Swing.

Files
- `src/Calculator.java` - main source file (single-class app)

Build and run (PowerShell / Windows)

1. Compile:

   javac -d bin src\Calculator.java

2. Run:

   java -cp bin Calculator

Notes
- Requires a JDK installed and `javac` / `java` available on PATH.
- Supports + - * /, percent, sign toggle, decimal, clear.
- Division by zero shows "Error".
