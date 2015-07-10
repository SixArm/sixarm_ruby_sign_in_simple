# SixArm.com » Ruby » <br> SignInSimple for authentication in apps

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_sign_in_simple.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_sign_in_simple)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple.png)](https://travis-ci.org/SixArm/sixarm_ruby_sign_in_simple)

* Git: <https://github.com/sixarm/sixarm_ruby_sign_in_simple>
* Doc: <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_sign_in_simple>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--HEADER-SHUT-->


## Introduction

SignInSimple provides methods for authentication in apps, such as typical Ruby On Rails web applications.

SignInSimple accepts the user's username and password, then verifies them.

For docs go to <http://sixarm.com/sixarm_ruby_sign_in_simple/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_sign_in_simple", ">= 1.1.5, < 2"

To install using the command line, run this:

    gem install sixarm_ruby_sign_in_simple -v ">= 1.1.5, < 2"

To install using the command with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_sign_in_simple -v ">= 1.1.5, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_sign_in_simple"

<!--INSTALL-SHUT-->


## Defaults

The defaults for this module are:

    params[:username]
    params[:password]
    User.find_by_username
