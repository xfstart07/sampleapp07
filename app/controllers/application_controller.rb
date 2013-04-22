# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery  # 开启csrf安全性功能
  include SessionsHelper
  include MicropostsHelper
end
