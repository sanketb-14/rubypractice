require 'chilkat'
sftp = Chilkat::CKSFtp.new()

#set_timeout
sftp.put_ConnectTimeoutMs(10000)
sftp.put_IdleTimeoutMs(10000)

#connect to SSH Server

success =sftp.connect("127.0.0.1",22)
if (success != true)
  print sftp.lastErrorText() + "\n"
  exit
end

#authenticate
success = sftp.AuthenticatePw("ankit","ankit123@")
if (success != true)
  print sftp.lastErrorText() + "\n"
  exit
end

#sftp initialize

success = sftp.InitializeSftp()
if (success != true)
  print sftp.lastErrorText() + "\n"
  exit
end

#create directory

success = sftp.CreateDir("/ankit/mynewDir2")
if (success != true)
  p sftp.lastErrorText()
  exit
end

p "success"
