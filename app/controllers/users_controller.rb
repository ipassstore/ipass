class UsersController < ApplicationController
  layout 'admin'

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        auto_login @user
        format.html { redirect_to root_path, notice: 'Welcome!' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    @user = current_user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to admin_path, notice: 'Welcome!' }
      else
        format.html { render action: 'create'}
      end
    end
  end


end
