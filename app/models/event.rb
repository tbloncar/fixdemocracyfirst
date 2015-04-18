class Event < ActiveRecord::Base
  include DirtyColumns
  
  belongs_to :venue
  has_many :event_days
  has_many :attendees
  has_many :users, through: :attendees
  has_and_belongs_to_many :candidates
  
  attr_reader :venue_name
  
  def venue_name
    v = self.venue
    v ? v.name : '-- No Venue --'
  end
  
  def add_candidate(candidate_id)
    candidate = Candidate.find(candidate_id)
    self.candidates << candidate if candidate
    candidate
  end
  
  def remove_candidate(candidate_id)
    candidate = Candidate.find(candidate_id)
    self.candidates.delete(candidate) if candidate
    candidate
  end
end