require 'net/ssh'
require 'net/sftp'
server = '127.0.0.1'
username = 'ankit'
password = 'ankit123@'
Net::SFTP.start(server,username,:password => password) do |sftp|
sftp.upload!("/home/ubuntu/ruby/demo", "/ankit/")

end

# session=Net::SSH.start("sftp url","username", :password=>"password",:port=>"sftp port number",:verify_host_key => :never)sftp=Net::SFTP::Session.new(session).connect!sftp.upload!(file path)