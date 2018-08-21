title 'passwd backdoor'

# you add controls here
control "passwd-1.0" do
  title "Check for a backdoor in /etc/passwd"
  desc "Do some basic checks on /etc/passwd"
  describe file('/etc/passwd') do
    it { should be_owned_by 'root' }
    its('owner') { should eq 'root' }		# <- another syntax
    its('content') { should match "^root:" }
    its('content') { should_not match "^toor:" }
  end
end

