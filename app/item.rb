class Item
  attr_accessor :name, :price
  @@item = []
  def initialize(name,price)
    @name = name
    @price = price
    @@item << self
  end
  
  def self.all
    @@item
  end
    
end
