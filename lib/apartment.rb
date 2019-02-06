require 'pry'
class Apartment

  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter, :apartment


  def initialize(args)
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def add_renter(renter)
    @renter = renter
  end
end
