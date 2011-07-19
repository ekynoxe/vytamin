class Admin::EntriesController < ApplicationController
  def index
    @entries = Entry.all.paginate
  end

  def edit
  end

  def update
  end

end
