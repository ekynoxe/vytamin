class Entry < ActiveRecord::Base
  
  validates_presence_of :sport_id
  
  belongs_to :sport
end
