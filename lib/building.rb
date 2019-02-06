class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rents = []
    @units.each do |apartment|
      rents << apartment.monthly_rent
    end
    avg_rent = 0
    rents.each do |rent|
      avg_rent += rent.to_f
    end
    avg_rent = avg_rent/@units.count.to_f
  end
end



# pry(main)> building = Building.new
# # => #<Building:0x00007f83778c5a80...>
#
# pry(main)> building.units
# # => []
#
# pry(main)> a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
# # => #<Apartment:0x00007f8377209bb0...>
#
# pry(main)> b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
# # => #<Apartment:0x00007f83779f0900...>
#
# pry(main)> building.add_unit(a1)
#
# pry(main)> building.add_unit(b2)
#
# pry(main)> building.units
# # => [#<Apartment:0x00007f8377209bb0...>, #<Apartment:0x00007f83779f0900...>]
#
# pry(main)> building.average_rent
# # => 1099.5
