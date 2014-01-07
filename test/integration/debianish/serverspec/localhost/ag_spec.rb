require "spec_helper"

%w(automake pkg-config zlib1g-dev libpcre3-dev liblzma-dev).each do |prereq|
  describe "the #{prereq} package" do
    it "should be installed" do
      expect(package(prereq)).to be_installed
    end
  end
end

ag = file("/usr/local/bin/ag")
describe "/usr/local/bin/ag" do
  it "should exist" do
    expect(ag).to be_file
  end
  it "should be owned by root" do
    expect(ag).to be_owned_by("root")
  end
  %w(owner group others).each do |executor|
    it "should be executable by #{executor}" do
      expect(ag).to be_executable.by(executor)
    end
  end
end
