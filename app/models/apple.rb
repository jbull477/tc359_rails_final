class Apple < ActiveRecord::Base
  validates_presence_of :name, :diameter, :height

  validates :diameter, :numericality => {:greater_than => 0.0}
  validates :height, :numericality => {:greater_than => 0.0}

  def self.search(query)
    return all if query.blank?
    where('LOWER(name) LIKE LOWER(?)', "%#{query}%")
  end
end
