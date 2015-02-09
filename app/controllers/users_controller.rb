class UsersController < ApplicationController

  def show
    @mosaic = []
  	@user = User.find(params[:id])
    works = Work.all
    works.each do |work|
      @mosaic << work if work.liked_by? @user
    end
  end

  def edit
    @user = User.friendly.find(params[:id])
  end

  def index
  	@users = User.all
  end

end
