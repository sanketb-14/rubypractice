#create a new text file in server and add text

require 'chilkat'

sftp = Chilkat::CkSFtp.new()
success = sftp.Connect("127.0.0.1",22)
if success == true
success=sftp.AuthenticatePw("ankit","ankit123@")
end
if success == true
success = sftp.InitializeSftp()
end
if success == true
handle = sftp.openFile("/ankit/file_new.txt","writeOnly","createTruncate")
success = sftp.WriteFileText(handle,"ansi","hello new fileeeeeee asaqsas")
success = sftp.WriteFileText(handle,"ansi","1225378271")
end
if success != true
p sftp.lastErrorText()
exit 
end


p "success"