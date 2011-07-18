class Admin::SportsController < ApplicationController
  before_filter :require_admin
  layout 'admin'
  
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(params[:sport])
    if !@sport.save
      flash[:item_notice]='could not create sport'
      render :new
      return
    end
    redirect_to admin_sports_url
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
