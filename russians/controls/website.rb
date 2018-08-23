# encoding: utf-8

title 'website check'

control "website-status-1.0" do
  title "Web server status check"
  desc "Basic check to make sure our website still works"
  describe http('https://www.hashicorp.com/') do
    its('status') { should cmp 200 }
  end
end

control "website-content-1.0" do
  title "Web page content check"
  desc "Make sure the Russians have not defaced our website"
  describe http('https://www.hashicorp.com/about') do
    its('status') { should cmp 200 }
    its('body') { should match 'Mitchell Hashimoto' }
    its('body') { should_not match "Поручик Ржевский" }
  end
end



