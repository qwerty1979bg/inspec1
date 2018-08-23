title 'website check'

control "website-status-1.0" do
  title "Web server status check"
  desc "Basic check to make sure our website still works"

  describe http('https://www.hashicorp.com/') do
    its('status') { should cmp 200 }
  end

end



