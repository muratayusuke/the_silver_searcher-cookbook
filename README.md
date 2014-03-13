# the_silver_searcher cookbook

Builds [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
from source.

# Requirements

This cookbook supports Debian and Red Hat platform families. It is
tested on the most recent versions of CentOS 5 and 6, the most recent
stable version of Debian, the most recent version of Fedora, the current
and previous LTS versions of Ubuntu, and the most recent version of
Ubuntu.

The `build_essential` cookbook is the only other cookbook required.

# Usage

Include `recipe[the_silver_searcher]` in a run list.

# Attributes

* `[:the_silver_searcher][:version]` = version number to install
* `[:the_silver_searcher][:checksum]` = checksum of tar.gz source for this version
* `[:the_silver_searcher][:url]` = url of tar.gz source

# Recipes

* default - installs The Silver Searcher to `/usr/local/bin/ag`

# Author

Author:: Mark Cornick (<mark@teamsnap.com>)

# Flair

[![Build Status](https://secure.travis-ci.org/teamsnap/the_silver_searcher-cookbook.png)](http://travis-ci.org/teamsnap/the_silver_searcher-cookbook)
