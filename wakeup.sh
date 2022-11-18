#!/bin/bash
#i2c_hid said it was in use by i2c_hid_acpI changeing the scirpt to i2c_hid_acpi made the track pad work again
#sudo rmmod i2c_hid
#sudo modprobe i2c_hid
sudo rmmod i2c_hid_acpi
sudo modprobe i2c_hid_acpi
