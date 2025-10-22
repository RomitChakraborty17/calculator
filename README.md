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

Repository files added
- `.gitignore` - common ignores for Java projects and editors
- `LICENSE` - MIT license
- `.gitattributes` - enforce CRLF for Java/MD on Windows
- `scripts/compile_and_run.ps1` - helper to compile and run on PowerShell

Initialize git repository (one-time)

Run these commands in PowerShell from the project root:

```powershell
git init
git add .
git commit -m "chore: initial project import"
```

Then push to a remote GitHub repo (example):

```powershell
git remote add origin https://github.com/<youruser>/<yourrepo>.git
git branch -M main
git push -u origin main
```
