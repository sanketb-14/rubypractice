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

handle = sftp.openFile("/ankit/file1.pdf","writeOnly","createTruncate")

if(success != true)
p sftp.lastErrorText()
exit
end

success  = sftp.UploadFile(handle,"/home/ubuntu/ruby/file1.pdf")
if(success != true)
p sftp.lastErrorText()
exit
end

success =sftp.CloseHandle(handle)
if(success != true)
p sftp.lastErrorText()
exit
end

p "success"
