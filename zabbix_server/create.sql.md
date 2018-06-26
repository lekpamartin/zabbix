#Email


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
