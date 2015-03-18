class BusinessUser < TaxableEntity
  
  NOT_DIGITS = /[^\d]/
  
  store_accessor :store, :business_id_number, :industry

  validates :business_id_number,        presence: true,
                                        numericality: true

  validates :industry,                  presence: true

  def business_id_number= id_number
    self.store['business_id_number'] = id_number.gsub!(NOT_DIGITS, '')
  end  

  def another_method
    # holler
  end
   
end  