desc "Runs foodcritic linter"
task :foodcritic do
  if Gem::Version.new("1.9.2") <= Gem::Version.new(RUBY_VERSION.dup)
    sandbox = File.join(File.dirname(__FILE__), %w{tmp foodcritic cookbook})
    prepare_foodcritic_sandbox(sandbox)
    sh "foodcritic --epic-fail any #{File.dirname(sandbox)}"
  else
    puts "WARN: foodcritic run is skipped as Ruby #{RUBY_VERSION} is < 1.9.2."
  end
end

task :default => 'foodcritic'

require 'stove/rake_task'

Stove::RakeTask.new do |stove|
  stove.bump = true
  stove.changelog = false
  stove.dev = false
  stove.upload = true
  stove.community = true
  stove.git = true
  stove.github = true
  stove.jira = false
end

private

def prepare_foodcritic_sandbox(sandbox)
  files = %w{*.md *.rb attributes definitions files libraries providers
                        recipes resources templates}
  rm_rf sandbox
  mkdir_p sandbox
  cp_r Dir.glob("{#{files.join(',')}}"), sandbox
  puts "\n\n"
end
