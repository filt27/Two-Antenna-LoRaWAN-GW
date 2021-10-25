#!/bin/bash

echo "########################### Change SPI0.0 to SPI1.2"
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/lora_gateway/libloragw/inc/imst_rpi.h
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_spi.native.c
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_hal.c
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_reg.c
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/lora_gateway/libloragw/src/loragw_spi.ftdi.c
sed -i '0,/spidev0.0/s//spidev1.2/' /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/src/poly_pkt_fwd.c

sed -i '0,/SX1301_RESET_BCM_PIN=13/s//SX1301_RESET_BCM_PIN=22/' /opt/ttn-gateway/bin/start.sh


echo "###########################/opt/ttn-gateway/lora_gateway/libloragw/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/libloragw/ -f Makefile

echo "###########################/opt/ttn-gateway/lora_gateway/Makefile"
sudo make -C /opt/ttn-gateway/lora_gateway/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/poly_pkt_fwd/ -f Makefile

echo "###########################/opt/ttn-gateway/packet_forwarder/Makefile"
sudo make -C /opt/ttn-gateway/packet_forwarder/ -f Makefile




echo "############################"
echo "############################"
echo "Starting start.sh script"
sudo ./start.sh





