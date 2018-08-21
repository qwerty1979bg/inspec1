title 'passwd backdoor'

# you add controls here
control "passwd-1.0" do
  title "Check for a backdoor in /etc/passwd"
  describe file('/etc/passwd') do
    it { should be_owned_by 'root' }
  end
end

