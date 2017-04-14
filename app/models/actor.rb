class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  # binding.pry

  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name
  end

  def list_roles
    self.characters.map do |x|
      "#{x.name} - #{x.show.name}"
    end
  end


end
