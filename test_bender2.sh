#!/bin/bash

# Change some xrootd timeout to see if it helps
# echo $XRD_STREAMTIMEOUT
export XRD_STREAMTIMEOUT=600
# echo $XRD_STREAMTIMEOUT
export XRD_LOGLEVEL=Dump

echo source /cvmfs/lhcb.cern.ch/lib/LbLogin.sh
     source /cvmfs/lhcb.cern.ch/lib/LbLogin.sh

# Set up the input files

### Uncomment the next line for a more random list of files (used for the real testing of RAL)
# rootfiles=$(shuf -n 12 listOfRandomRALFiles4)
# echo $rootfiles

### Use this definition of "rootfiles" for a simple definition to test out the code
rootfiles="
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0000/00051289_00003811_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0000/00051289_00004931_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0001/00051289_00013720_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0001/00051289_00014290_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0001/00051289_00014914_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0001/00051289_00015942_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051289/0001/00051289_00017478_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051290/0000/00051290_00008053_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051290/0000/00051290_00008388_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051290/0001/00051290_00010208_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051290/0001/00051290_00010416_1.turbo.mdst
root://xrootd.echo.stfc.ac.uk/lhcb:prod/lhcb/LHCb/Collision15/TURBO.MDST/00051290/0002/00051290_00025910_1.turbo.mdst
"
echo $rootfiles


lb-run Bender/v35r6 dst-dump -q $rootfiles
