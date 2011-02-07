# -*- coding: utf-8 -*-
require 'test/unit'
require 'sixarm_ruby_sign_in_simple'
require 'sixarm_ruby_application_controller_mock'

class SignInSimpleTest < Test::Unit::TestCase

  USERNAME='anna'
  PASSWORD='secret'

  def setup
   @uc=UsersController.new
  end

  def test_sign_in
   assert_nil(@uc.current_user,'user before sign in')
   @uc.sign_in
   assert_equal(User.singleton,@uc.current_user,'user after sign in')
  end

  def test_sign_in_success_message
   s=@uc.sign_in_success_message
   assert_kind_of(String,s)
  end

  def test_sign_in_failure_message
   s=@uc.sign_in_failure_message
   assert_kind_of(String,s)
  end

  def test_sign_in_error_no_username
   assert_raise SecurityError do
    @uc.sign_in_error_no_username
   end
  end

  def test_sign_in_error_no_username_message
   s=@uc.sign_in_error_no_username_message
   assert_kind_of(String,s)
  end

  def test_sign_in_error_no_password
   assert_raise SecurityError do
    @uc.sign_in_error_no_password
   end
  end

  def test_sign_in_error_no_password_message
   s=@uc.sign_in_error_no_password_message
   assert_kind_of(String,s)
  end

  def test_sign_in_failure_message
   s=@uc.sign_in_failure_message
   assert_kind_of(String,s)
  end

  def test_sign_in_not_found
   assert_raise SecurityError do
    @uc.sign_in_not_found
   end
  end

  def test_sign_in_not_found_message
   s=@uc.sign_in_not_found_message
   assert_kind_of(String,s)
  end

end


class UsersController < ApplicationController

  attr_accessor :current_user
  include SignInSimple

  def initialize(*ops)
    super(:params=>{:username=>'anne',:password=>'secret'})
  end

end


class User

  def self.find(id)
    pp "User#find(#{id})"
    singleton
  end
  
  def self.find_by_username(username)
    singleton
  end

  def username
    'anne'
  end

  def password
    'secret'
  end

  def self.singleton
    @@singleton||=User.new
  end

end
