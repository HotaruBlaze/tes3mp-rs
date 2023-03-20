Set-Location $PSScriptRoot

$ExternalFolder = $PSScriptRoot+"\extern"
$ExternalTES3MPFolder = $ExternalFolder+"/tes3mp"
$ExternalCrabnetFolder = $ExternalFolder+"/CrabNet"

if (-Not (Test-Path -Path $ExternalFolder )) {  New-Item -Path $ExternalFolder -ItemType Directory }
if (-Not (Test-Path -Path $ExternalTES3MPFolder  )) {  git clone --branch 0.8.1 --depth 1 https://github.com/TES3MP/openmw-tes3mp.git $ExternalTES3MPFolder }
if (-Not (Test-Path -Path $ExternalCrabnetFolder  )) {  git clone --depth 1 https://github.com/TES3MP/CrabNet $ExternalCrabnetFolder }