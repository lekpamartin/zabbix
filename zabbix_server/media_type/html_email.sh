#!/bin/sh
#https://github.com/dimuskin/ax-zabbix-html-template

export smtpemailfrom='NAME <EMAIL>'
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
export smtpserver=SMTP_HOST

MAIL_TXT="Subject: $zabbixsubject\nFrom: $smtpemailfrom\nTo: $zabbixemailto\nMime-Version: 1.0\nContent-Type: text/html\n\n$zabbixbody"
echo -e $MAIL_TXT | sendmail -S $smtpserver:25 -o tls=no -o message-content-type=html -t
