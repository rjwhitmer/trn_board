# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new; end

  def create
    @user = User.new

    @user.update(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )

    if @user.save!
      flash.now[:alert] = 'User successfully created!'
      redirect_to action: 'index'
    else
      flash.now[:error] = 'Something went wrong. Try again'
      render action: 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def delete; end
end
