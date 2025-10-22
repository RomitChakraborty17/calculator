# Compile and run helper for Windows PowerShell
# Usage: ./scripts/compile_and_run.ps1
param()

$root = Split-Path -Parent $MyInvocation.MyCommand.Definition
Push-Location $root
if (!(Test-Path -Path bin)) { New-Item -ItemType Directory -Path bin | Out-Null }
Write-Host "Compiling..."
javac -d bin src\Calculator.java
if ($LASTEXITCODE -ne 0) {
    Write-Error "Compilation failed"
    Pop-Location
    exit 1
}
Write-Host "Running..."
java -cp bin Calculator
Pop-Location
