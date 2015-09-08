boost Cookbook
==============

[![Build Status](https://travis-ci.org/chef-cookbooks/boost.svg?branch=master)](https://travis-ci.org/chef-cookbooks/boost)
[![Cookbook Version](https://img.shields.io/cookbook/v/boost.svg)](https://supermarket.chef.io/cookbooks/boost)


Installs the [Boost C++ Libraries](http://www.boost.org/)

Requirements
============

## Platform:

* Ubuntu / Debian and derivatives
* RHEL / Fedora and derivatives

## Chef
* Chef 11+

## Cookbooks
* Recommends build-essential for the source install recipe


Usage
=====

Include this recipe to install boost development packages.

    include_recipe "boost"

Merely installs the libboost-dev package which should grab a bunch of dependencies and get the right thing.

License and Author
==================

Author:: Joshua Timberman (<joshua@chef.io>)

```text
Copyright 2009-2015, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
