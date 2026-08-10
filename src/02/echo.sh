#!/bin/bash

echo HOSTNAME = "${hn}"  tee -a tmp.status
echo TIMEZONE = "${tz}" | tee -a tmp.status
echo USER = "${user}" | tee -a tmp.status
echo OS = "${osv}" | tee -a tmp.status
echo DATE = "${dt}" | tee -a tmp.status
echo UPTIME = "${upt}" | tee -a tmp.status
echo UPTIME_SEC = "${upts}" | tee -a tmp.status
echo IP = "${ipad}" | tee -a tmp.status
echo MASK = "${msk}" | tee -a tmp.status
echo GATEWAY = "${gtw}" | tee -a tmp.status
echo RAM_TOTAL = "${rtt}" GB | tee -a tmp.status
echo RAM_USED = "${rus}" GB | tee -a tmp.status
echo RAM_FREE = "${rfr}" GB | tee -a tmp.status
echo SPACE_ROOT = "${spr}" MB | tee -a tmp.status
echo SPACE_ROOT_USED = "${spru}" MB | tee -a tmp.status
echo SPACE_ROOT_FREE = "${sprfr}" MB | tee -a tmp.status
echo ----------------------------------------------
echo Do you want to save it? [y/n]