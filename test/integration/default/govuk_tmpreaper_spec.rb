describe package('tmpreaper') do
  it { should be_installed }
end

describe file('/etc/tmpreaper.conf') do
  its('content') { should match(%r{TMPREAPER_DELAY='256'}) }
end
