require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('node --version') do
  its(:exit_status) { should eq 0 }
end

describe command('npm --version') do
  its(:exit_status) { should eq 0 }
end