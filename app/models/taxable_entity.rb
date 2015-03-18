class TaxableEntity < ActiveRecord::Base
  
  COUNTRY_FORMAT = /\A[A-Za-z]{2}\Z/
  ONLY_DIGITS = /[^\d]+/
  
  validates :name,     presence: true,
                       length: {maximum: 50}
                     
  validates :country,  format: {with: COUNTRY_FORMAT}
  
  def self.create_account_object(object,type)
    if type == 1
      object.new_personal_user_path
    else
      object.new_business_user_path
    end  
  end  
                     
  
  
end