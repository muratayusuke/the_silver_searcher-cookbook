# the_silver_searcher cookbook

Builds [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
from source.

# Requirements

* only debian and redhat platform families are supported

# Usage

`include_recipe "the_silver_searcher"`

# Attributes

* `[:the_silver_searcher][:version]` = version number to install
* `[:the_silver_searcher][:checksum]` = checksum of tar.gz source for this version

# Recipes

* default - installs The Silver Searcher

# Author

Author:: Mark Cornick (<mark@teamsnap.com>)
