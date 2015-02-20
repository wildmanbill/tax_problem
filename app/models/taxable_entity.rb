class TaxableEntity < ActiveRecord::Base
  
  COUNTRY_FORMAT = /\A[A-Za-z]{2}\Z/
  ONLY_DIGITS = /[^\d]+/
  
  validates :name,     presence: true,
                       length: {maximum: 50}
                     
  validates :country,  format: {with: COUNTRY_FORMAT}
                     
  
  
end