# ina219-tool
A simple utility for working with one or more ina219-based devices connected via i2c to a Linux computer has been implemented.

The libi2c-dev package is required.

ina219-tool [-v] [-c] [-p] [-a] [-k {koeff}] [-s {sample_size = (1, 2, 4, 32, 128)}] {-d {filename }} {device_addr_1 [device_addr_2 ... [device_addr_n]]}

Keys:
* -v bus voltage output
* -c current output
* -p output of energy consumption
* -a output of all three previous
* -k current gain
* -s sample size (options: 1, 2, 4, 32, 128). 128 by default
* -d {filename} - file for accessing the bus

Usage example:
ina219-tool -a -d /dev/i2c-0 40 41 - Read current and voltage from devices with addresses 0x40, 0x41 on /dev/i2c-0 bus
ina219-tool -a -k 1.3 -d /dev/i2c-0 40 41 - Reading the current and voltage from devices with addresses 0x40, 0x41 on /dev/i2c-0 bus, with current coefficient of 1.3