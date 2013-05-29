require File.expand_path('../spec_helper', __FILE__)

describe 'the_silver_searcher::default' do

  include Helpers::TheSilverSearcher

  describe "/usr/local/bin/ag" do
    let(:ag) { file("/usr/local/bin/ag") }
    it { ag.must_exist }
    it { ag.must_have(:mode, "755") }
    it { ag.must_have(:owner, "root") }
    it { ag.must_have(:group, "root") }
  end
end
