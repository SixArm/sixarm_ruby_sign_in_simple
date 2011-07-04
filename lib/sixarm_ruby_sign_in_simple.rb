# -*- coding: utf-8 -*-

=begin rdoc

= SixArm.com » Ruby » SignInSimple gem for typical Rails user sign in

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file

SignInSimple provides typical sign in for a Rails web application.

This uses a the approach of having the user enter a username and password.

The defaults for this module are:
- params[:username]
- params[:password]
- User.find_by_username

=end

require 'sixarm_ruby_sign_in'

module SignInSimple

 include SignIn

 ####################################################################
 #
 # Implement interface of SignIn
 #
 ####################################################################

  def sign_in_attempt(options=nil)
    username=sign_in_username; username and username!='' or sign_in_error_no_username(options)
    password=sign_in_password; password and password!='' or sign_in_error_no_password(options)
    u=User.find_by_username(username)
    u and u.password==password or sign_in_not_found(options)
    self.current_user=u
  end

  def sign_in_failure(options=nil)
    flash[:warning]=sign_in_failure_message(options)
  end


 ####################################################################
 #
 # Helpers
 #
 ####################################################################


 def sign_in_failure_message(options=nil)
   "Sorry, your sign in failed." + ($! ? " #{$!}" : '')
 end

 def sign_in_username(options=nil)
  params[:username]
 end

 def sign_in_error_no_username(options=nil)
  raise SecurityError, sign_in_error_no_username_message(options)
 end

 def sign_in_error_no_username_message(options=nil)
  "Please type in your username."
 end

 def sign_in_password(options=nil)
  params[:password]
 end

 def sign_in_error_no_password(options=nil)
  raise SecurityError, sign_in_error_no_password_message(options)
 end

 def sign_in_error_no_password_message(options=nil)
  "Please type in your password."
 end

 def sign_in_not_found(options=nil)
  raise SecurityError, sign_in_not_found_message(options)
 end

 def sign_in_not_found_message(options=nil)
  "Sorry, the username/password combination is not registered."
 end


end
