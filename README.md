# SixArm.com » Ruby » <br> SignInSimple for authentication in apps

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_sign_in_simple.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_sign_in_simple)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple.png)](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple)

* Doc: <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_sign_in_simple>
* Repo: <http://github.com/sixarm/sixarm_ruby_sign_in_simple>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

SignInSimple provides methods for authentication in apps, such as typical Ruby On Rails web applications.

SignInSimple accepts the user's username and password, then verifies them.

For docs go to <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_sign_in_simple

Bundler:

    gem "sixarm_ruby_sign_in_simple", ">=1.1.5", "<2"

Require:

    require "sixarm_ruby_sign_in_simple"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_sign_in_simple --trust-policy HighSecurity


## Defaults

The defaults for this module are:

    params[:username]
    params[:password]
    User.find_by_username
