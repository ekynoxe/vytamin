class EntriesController < ApplicationController
  before_filter :require_user
  before_filter :store_location
  
  def index
    @entries = Entry.all
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
