name             "the_silver_searcher"
maintainer       "Mark Cornick"
maintainer_email "mark@teamsnap.com"
license          "MIT"
description      "Installs/Configures The Silver Searcher"
depends          "build-essential"
version          "1.1.0"

%w(debian ubuntu linuxmint raspbian redhat centos oracle scientific amazon
   enterpriseenterprise).each do |platform|
  supports platform
end
