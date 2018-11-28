
dev="18:"


#echo "Set MaxReadRequestSize.."
#lspci -vvvs $dev | grep  Read
#echo "After set the reg.."
#setpci -v -s $dev CAP_EXP+8.w=7000:2000   #0000 -> 128 byes 2000-> 512 bytes 5000-> 4096 bytes
#lspci -vvvs $dev | grep  Read


echo "Set MaxPayload.."
lspci -vvvs $dev | grep  Read
echo "After set the reg.."
setpci -v -s $dev CAP_EXP+8.w=00e0:0080   # 0080-> 4096 bytes
lspci -vvvs $dev | grep  Read


#echo "Set ACS.."
#lspci -vvvs $dev | grep  ACS
#echo "After set the reg.."
#setpci -v -s $dev  ECAP_ACS+6.w=0x0   #------- => 0x0 , +++++++ => 0x7f , +-+++-- =>0x1d
#lspci -vvvs $dev | grep  Read




#echo "Set SRIOV of ARI Capable Hierarchy.."
#lspci -vvvs $dev
#echo "Disable VF enable"
#setpci -v -s $dev  ECAP_SRIOV+8.w=00:01
#echo "Set ARI Capable Hierachy"
#setpci -v -s $dev  ECAP_SRIOV+8.w=ff:10
#echo "Enable VF enable"
#setpci -v -s $dev  ECAP_SRIOV+8.w=ff:01

#lspci -vvvs $dev
