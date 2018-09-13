#!/bin/sh
export smtpemailfrom='NAME <EMAIL>'
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
export smtpserver=SMTP_HOST
export smtplogin="USER"
export smtppass="PASSWORD"
export smtphelo="HELLO_MESSAGE"


echo "$zabbixbody" | mailx \
 -r "$smtpemailfrom" \
 -s "$zabbixsubject" \
 -S smtp="$smtpserver:25" \
 -S smtp-use-starttls \
 -S smtp-auth=login \
 -S smtp-auth-user="$smtplogin" \
 -S smtp-auth-password="$smtppass" \
 -S ssl-verify=ignore \
$zabbixemailto
