class Role < ActiveRecord::Base
  
  has_many :auditions

  def actors
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    self.auditions.map do |audition|
      audition.location
    end
  end

  # def lead
  #   self.auditions.find_by(hired: true) || "No actor has been hired for this role."
  # end

  # def lead
  #   lead = self.auditions.find_by(hired: true)
    
  #   if lead
  #     lead
  #   else
  #     "No actor has been hired for this role."
  # end

  def lead
    lead = self.auditions.find_by(hired: true)
    lead ? lead : "No actor has been hired for this role."
  end

  def understudy
    self.auditions.where(hired: true)[1] || "No actor has been hired for this role."
  end

end