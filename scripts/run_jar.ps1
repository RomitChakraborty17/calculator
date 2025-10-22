# Run the calculator JAR
param()

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$projectRoot = Resolve-Path (Join-Path $scriptDir "..")
Push-Location $projectRoot

if (!(Test-Path -Path dist\calculator.jar)) {
    Write-Error "dist\calculator.jar not found. Run scripts/build_jar.ps1 first."
    Pop-Location
    exit 1
}

java -jar dist\calculator.jar
Pop-Location
