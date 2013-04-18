# encoding: utf-8

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user # 注册后直接登陆
      flash[:success] = "Welcome to the Sample App07!"
      redirect_to @user
    else
      render 'new'
    end
  end

end
