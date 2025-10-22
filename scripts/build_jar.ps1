# Build a runnable JAR for the Calculator app
param()

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$projectRoot = Resolve-Path (Join-Path $scriptDir "..")
Push-Location $projectRoot

if (!(Test-Path -Path dist)) { New-Item -ItemType Directory -Path dist | Out-Null }
if (!(Test-Path -Path bin)) { New-Item -ItemType Directory -Path bin | Out-Null }

Write-Host "Compiling..."
javac -d bin src\Calculator.java
if ($LASTEXITCODE -ne 0) {
    Write-Error "Compilation failed"
    Pop-Location
    exit 1
}

Write-Host "Creating manifest..."
$manifest = @"
Main-Class: Calculator
"@
$manifestPath = Join-Path $projectRoot "bin\manifest.txt"
$manifest | Out-File -Encoding ASCII $manifestPath

Write-Host "Building JAR..."
jar cfm dist\calculator.jar $manifestPath -C bin .
if ($LASTEXITCODE -ne 0) {
    Write-Error "Jar creation failed"
    Pop-Location
    exit 1
}

Write-Host "Built dist\calculator.jar"
Pop-Location
