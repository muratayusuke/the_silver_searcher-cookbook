require "spec_helper"

describe file("/usr/local/bin/ag") do
  it { should be_file }
  it { should be_owned_by('root') }
  it { should be_grouped_into('root') }
  %w(owner group others).each do |executor|
    it { should be_executable.by(executor)}
  end
end
