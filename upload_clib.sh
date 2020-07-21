#!/bin/bash

echo "Remove old ovf and vmdk files"
rm ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance-disk-0.vmdk ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance.ovf > /dev/null 2>&1
echo "Create ovf and vmkd from ova"
ovftool -q ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance_0.1.0.ova ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance_0.1.0.ovf > /dev/null 2>&1
echo "copy ovf and vmkd to pCloud"
cp ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance_0.1.0.ovf ~/pCloudDrive/Public\ Folder/clib/PhotonOS_Appliance/ > /dev/null 2>&1
cp ~/photonos-appliance/output-vmware-iso/PhotonOS_Appliance_0.1.0-disk1.vmdk ~/pCloudDrive/Public\ Folder/clib/PhotonOS_Appliance/ > /dev/null 2>&1
echo "rebuild content library index"
~/vmw-clib/update_clib.sh > /dev/null 2>&1
