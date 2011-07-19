class Entry < ActiveRecord::Base
  
  validates_presence_of :sport_id
  
  belongs_to :sport
  belongs_to :user
  
  def duration()
    seconds = self.enddate - self.startdate
    
    hours = mins = 0
    if seconds >=  60 then
      mins = (seconds / 60).to_i 
      seconds = (seconds % 60 ).to_i

      if mins >= 60 then
        hours = (mins / 60).to_i 
        mins = (mins % 60).to_i
      end
    end
    
    hours.to_s+"h, "+mins.to_s+"m, "+seconds.to_s+"s"
  end
end
