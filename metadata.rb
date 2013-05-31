name             "the_silver_searcher"
maintainer       "Mark Cornick"
maintainer_email "mark@teamsnap.com"
license          "MIT"
description      "Installs/Configures The Silver Searcher"
depends          "build-essential"
version          "1.1.1"

%w(debian ubuntu linuxmint raspbian redhat centos oracle scientific amazon
   enterpriseenterprise suse).each do |platform|
  supports platform
end
