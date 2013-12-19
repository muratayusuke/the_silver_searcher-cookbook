require "spec_helper"

%w(automake pkg-config zlib1g-dev libpcre3-dev liblzma-dev).each do |prereq|
  describe package(prereq) do
    it { should be_installed }
  end
end

describe file("/usr/local/bin/ag") do
  it { should be_file }
  it { should be_owned_by('root') }
  it { should be_grouped_into('root') }
  %w(owner group others).each do |executor|
    it { should be_executable.by(executor)}
  end
end
