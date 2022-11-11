require 'chilkat'

sftp = Chilkat::CkSFtp.new()

sftp.put_ConnectTimeoutMs(2000)
sftp.put_IdleTimeoutMs(5000)

success = sftp.Connect("127.0.0.1",22)
if success != true
p sftp.lastErrorText()
exit
end

success = sftp.AuthenticatePw("ankit","ankit123@")
if(success != true)
p sftp.lastErrorText()
exit
end

success = sftp.InitializeSftp()
if(success != true)
p sftp.lastErrorText()
exit
end

success = sftp.RenameFileOrDir("/ankit/file1.pdf","/ankit/rename_file.pdf")
if success != true
p sftp.lastErrorText
exit 
end
p "Success"