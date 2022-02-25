require "pry"

class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

def received_one(item_name)
  Freebie.where(dev_id: self.id, item_name: item_name).exists?
end

def give_away(dev, freebie)

  if self.received_one(freebie.item_name)
    freebie.update_attribute(:dev_id, dev.id)
  else
    puts "Watch it scammer dev! You can't give away freebies you don't have in your inventory. Please select another freebie to give away."
  end
end

end
