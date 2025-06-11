#!/bin/bash
#

curl 'http://localhost:9116/snmp?auth=monitor_v3&module=huawei_ibmc_mib&target=192.168.1.88'

curl 'http://localhost:9116/snmp?auth=cq_v2&module=if_mib&target=192.168.1.9'

curl 'http://localhost:9116/snmp?auth=optiway_v2&module=optiway_haohan_mib,optiway_self_mib&target=192.168.1.19'

curl 'http://localhost:9116/snmp?auth=npb_v2&module=npt_byzoro_mib&target=111.6.69.88'
