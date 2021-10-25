# Two-Antenna-LoRaWAN-GW
LoraWAN gateway with two sets of concentrator iC880A and antenna connected via 2 SPI connections on Raspberry Pi.

Gateway is based on https://github.com/ttn-zh/ic880a-gateway. Second set of concentrator and antenna is added on predefined Raspberry Pi connection SPI1.2.

To start two antenna LoRaWAN gateway open two terminals on Raspberry Pi and call bin/0_0_to_1_2 in one window and bin/1_2_to_0_0 in other.

