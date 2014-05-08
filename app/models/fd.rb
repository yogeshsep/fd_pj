class Fd < ActiveRecord::Base
  attr_accessible :addr, :city, :cusna, :depamt, :dob, :noy, :openedon, :pan, :pin, :roi, :sex, :md, :int
  
after_save :calculate_int
private
  def calculate_int(int, depamt, roi)
    int = ((depamt * roi)/12).round
  end

before_save :set_openedon
    
    def set_openedon
      self.openedon = Date.today
    end  
  

  validates :cusna, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }

  validates_numericality_of :pin, presence: true, length: { maximum: 6 }

  validates :pan, :uniqueness => true, presence:true, format: { with: %r{^[A-Z]{5}\d{4}[A-Z]{1}} }, length: {maximum: 10}

  validates_inclusion_of :dob,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"

  validates :addr, presence: true

  validates :city, presence: true

  validates :sex, presence: true

  validates :depamt, numericality: { greater_than_or_equal_to: 100, presence: true }

end
