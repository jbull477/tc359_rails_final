class Apple < ActiveRecord::Base
  validates_presence_of :name, :diameter, :height

  validates :diameter, :numericality => {:greater_than => 0.0}
  validates :height, :numericality => {:greater_than => 0.0}

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end
