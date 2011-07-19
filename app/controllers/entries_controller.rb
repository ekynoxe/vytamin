class EntriesController < ApplicationController
  before_filter :require_user
  before_filter :store_location
  
  def index
    @entries = current_user.entries.all.paginate
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(params[:entry])
    if @entry.save
      flash[:notice] = "Successfully created entry."
      redirect_to user_entries_url
    else
      render :action => 'new'
    end
  end

  def edit
    @entry = current_user.entries.find(params[:id])
  end

  def update
    @entry = current_user.entries.find(params[:id])
    if @entry.update_attributes(params[:entry])
      flash[:notice] = "Successfully updated entry."
      redirect_to entries_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @entry = current_user.entries.find(params[:id])
    @entry.destroy
    flash[:notice] = "Successfully destroyed entry."
    redirect_to entries_url
  end
end
