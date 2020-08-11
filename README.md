# lhcb-ral-test

The script "test_bender2.sh" should work out of the box. This is the actual test code which produces the error. Note that

1. you need a grid proxy to use it - possibly a lhcb specific one.
2. Obviously CVMFS should be available on the machine being used.
3. The machine used should hopefully be sl7 (or maybe sl6)

If you want to avoid using a LHCb proxy, you probably need to get hold of / access a few production files (possibly from LHCb?) into your local storage and work from there.

The files "listOfRandomRALFiles4" has a list of 1996 root files at RAL which is used for the production testing. See the commented out code in test_bender2.sh for usage. It is not utilised for now, but can be, by commenting (and uncommenting) out the relevant bit of code.