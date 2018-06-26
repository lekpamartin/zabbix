# Email
<pre>
UPDATE media_type SET \
type=0, \
smtp_server='' \
smtp_helo=''
smtp_email=''
username=''
passwd=''
smtp_port=25 \
smtp_security=1 \
smtp_verify_peer=0 \
smtp_verify_host=0 \
smtp_authentication=1 \
status=0 \
WHERE mediatypeid=1;
</pre>

# Script 
<pre>
UPDATE media_type SET \
type=1, \
exec_path='html_email.sh',
exec_params='{ALERT.SENDTO}
{ALERT.SUBJECT}
{ALERT.MESSAGE}
{ALERT.TEST}', \
status=0 \
WHERE mediatypeid=1;
</pre>
