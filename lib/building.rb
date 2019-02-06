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

  def renter_with_highest_rent
    occupied_units = @units.find_all do |apartment|
      apartment.renter != nil
    end
    highest_rent = occupied_units.max_by do |apartment|
      apartment.monthly_rent
    end
    return highest_rent.renter
  end

  # def annual_breakdown
  #   break_down = {}
  #   occupied_units = @units.find_all do |apartment|
  #     apartment.renter != nil
  #   end
  #   break_down = occupied_units.each do |k,v|
  #     instance_variable_set("#{k.renter.name}", v.monthly_rent * 12) unless v.nil?
  #   end
  #   #populate keys with occupied_units.renter.name
  #   #populate values with renter.monthly_rent * 12
  # end

end
