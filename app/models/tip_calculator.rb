class TipCalculator
  include ActiveModel::Model
  attr_accessor :cost, :tip_percent, :num_people
  validates_presence_of :cost, :tip_percent, :num_people
  validates :cost, numericality: { greater_than_or_equal_to: 0 }
  validates :tip_percent, numericality: { message: 'must be a number between 1 and 100', greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :num_people, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  
  def calc
    c = cost.to_f
    tp = tip_percent.to_f
    np = num_people.to_i
    
    return "$" + (c*(tp/100)/np).to_s
  end

end
