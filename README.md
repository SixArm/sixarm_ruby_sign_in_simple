# SixArm.com → Ruby → <br> SignInSimple for authentication in apps

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_sign_in_simple.svg)](http://badge.fury.io/rb/sixarm_ruby_sign_in_simple)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple.png)](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple)
[![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/953c4591bc72a6e59d8f/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_sign_in_simple/maintainability)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_sign_in_simple/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_sign_in_simple?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_sign_in_simple>
* Doc: <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_sign_in_simple>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

SignInSimple provides methods for authentication in apps, such as typical Ruby On Rails web applications.

SignInSimple accepts the user's username and password, then verifies them.

For docs go to <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_sign_in_simple

Or add this to your Gemfile:

    gem 'sixarm_ruby_sign_in_simple'

### Require

To require the gem in your code:

    require 'sixarm_ruby_sign_in_simple'

<!--install-shut-->


## Defaults

The defaults for this module are:

    params[:username]
    params[:password]
    User.find_by_username
