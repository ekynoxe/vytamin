class Admin::SportsController < ApplicationController
  before_filter :require_admin
  layout 'admin'
  
  def index
    @sports = Sport.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
