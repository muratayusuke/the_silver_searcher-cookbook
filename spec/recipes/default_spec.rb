require_relative "../spec_helper"

describe "the_silver_searcher::default" do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  %w(automake pkg-config zlib1g-dev libpcre3-dev liblzma-dev).each do |p|
    it "installs #{p}" do
      expect(chef_run).to install_package(p)
    end
  end

  it "downloads and compiles the_silver_searcher" do
    version = chef_run.node.the_silver_searcher.version
    cache_file = "#{Chef::Config['file_cache_path']}/the_silver_searcher-#{version}.tar.gz"
    expect(chef_run).to create_remote_file(cache_file)
    expect(chef_run.remote_file(cache_file)).to notify("bash[install the_silver_searcher]").to(:run)
  end
end
