#!/bin/sh
export smtpemailfrom='NAME <EMAIL>'
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
export smtpserver=SMTP_HOST
export smtplogin="USER"
export smtppass="PASSWORD"
export smtphelo="HELLO_MESSAGE"

MAIL_TXT="Subject: $zabbixsubject\nFrom: $smtpemailfrom\nTo: $zabbixemailto\nMime-Version: 1.0\nContent-Type: text/html\n\n$zabbixbody"
echo -e $MAIL_TXT | sendmail -H "exec openssl s_client -quiet -connect $smtpserver:25 -tls1 -starttls smtp" -f $smtpemailfrom -au"$smtplogin" -ap"$smtppass" -t
