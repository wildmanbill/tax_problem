class PersonalUser < TaxableEntity
  
  NOT_DIGITS = /[^\d]/
  
  store_accessor :store, :personal_id_number
  
  validates :personal_id_number,  presence: true
  
  
  def personal_id_number= id_number
    self.store['personal_id_number'] = id_number.gsub!(NOT_DIGITS, '')
  end
  
  
end  