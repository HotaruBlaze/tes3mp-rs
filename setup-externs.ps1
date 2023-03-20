Set-Location $PSScriptRoot
$ExternalFolder = $PSScriptRoot+"\extern"
$ExternalTES3MPFolder = $ExternalFolder+"/tes3mp"
$ExternalCrabnetFolder = $ExternalFolder+"/CrabNet"
$ExternalBoostFolder =  $ExternalFolder+"/boost"

if (-Not (Test-Path -Path $ExternalFolder)) {New-Item -Path $ExternalFolder -ItemType Directory }
if (-Not (Test-Path -Path $ExternalTES3MPFolder)) {git clone --branch 0.8.1 --depth 1 https://github.com/TES3MP/openmw-tes3mp.git $ExternalTES3MPFolder }
if (-Not (Test-Path -Path $ExternalBoostFolder)) {git clone --depth 1 https://github.com/scipy/boost-headers-only.git $ExternalBoostFolder }
if (-Not (Test-Path -Path $ExternalCrabnetFolder)) {
    git clone https://github.com/TES3MP/CrabNet $ExternalCrabnetFolder;
    Set-Location $ExternalCrabnetFolder;
    git fetch origin 19e66190e83f53bcdcbcd6513238ed2e54878a21;
    git reset --hard 19e66190e83f53bcdcbcd6513238ed2e54878a21;
    Set-Location $PSScriptRoot
}

# Patch out OSG because we dont care about it.
$files = @(
    "extern/tes3mp/components/esm/defs.hpp",
    "extern/tes3mp/components/esm/util.hpp"
)
foreach ($emp in $files) {
    Get-Content $emp | Where-Object {$_ -notmatch 'osg'} | Set-Content $emp+".patched"
    Move-Item -Force $emp+".patched" $emp
}
