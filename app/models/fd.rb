class Fd < ActiveRecord::Base
  attr_accessible :addr, :city, :customername, :depositamount, :dateofbirth, :noy, :openedon, :pan, :pin, :roi, :sex, :md, :interest
  
before_save :set_openedon    
  def set_openedon
    self.openedon = Date.today.strftime("%d/%m/%Y")
  end  


before_save :calculate_md
  def calculate_md
    self.openedon = Date.today
     case self.noy
      when 12
        self.md = self.openedon + 1.year
      when 24
        self.md = self.openedon + 2.years
      when 36
        self.md = self.openedon + 3.years
      when 48
        self.md = self.openedon + 4.years
      else
        self.md = self.openedon + 5.years      
     end
  end

before_save :calculate_age
  def calculate_age
    self.age = ((DateTime.now - self.dateofbirth)/365)
  end

before_save :calculate_roi
  def calculate_roi
     if self.age >= 58 && self.age < 75 && self.noy == 12
       self.roi += 0.5
     elsif self.age >= 58 && self.age < 75 && self.noy == 24
       self.roi += 0.5
     elsif self.age >= 58 && self.age < 75 && self.noy == 36
       self.roi += 0.5
     elsif self.age >= 58 && self.age < 75 && self.noy == 48
       self.roi += 0.5
     elsif self.age >= 58 && self.age < 75 && self.noy == 60
       self.roi += 0.25     
     elsif self.age >= 75 && self.noy == 12
       self.roi += 1.0
     elsif self.age >= 75 && self.noy == 24
       self.roi += 1.0
     elsif self.age >= 75 && self.noy == 36
       self.roi += 1.0
     elsif self.age >= 75 && self.noy == 48
       self.roi += 0.75
     elsif self.age >= 75 && self.noy == 60
       self.roi += 0.25     
     else
       self.roi
     end
  end

before_save :calculate_interest
  def calculate_interest
    self.roi = self.roi/100
    self.interest = ((self.depositamount.round * self.roi)/12).round
  end

before_save :set_roi
  def set_roi
    self.roi = self.roi * 100
  end
  
  validates :customername, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }

  #validates_numericality_of :pin, presence: true, length: { maximum: 6 }  

  #validates :openedon, presence: true  

  #validates :addr, presence: true

  #validates :pan, :uniqueness => true, presence:true, format: { with: %r{^[A-Z]{5}\d{4}[A-Z]{1}} }, length: {maximum: 10}

  validates_inclusion_of :dateofbirth,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"   

  #validates :age, presence: true    

  validates :city, presence: true  

  validates :sex, presence: true    

  validates :depositamount, presence: true
end
