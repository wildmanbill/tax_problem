#require 'rails_helper'

describe TaxableEntity do

  describe 'factory' do
    it 'should be valid' do
      te = FactoryGirl.build(:taxable_entity)
      expect(te.valid?).to eq(false)
    end
  end

  describe 'validations' do
    
    let(:taxable_entity){ FactoryGirl.build(:taxable_entity) }
    
    describe '@name' do
      describe '- presence -' do
        it 'cannot be blank' do
          taxable_entity.name = ''
          taxable_entity.valid?
          expect(taxable_entity.errors[:name]).not_to be_blank
        end
      end
      
      describe '- length - ' do
        it 'must be less than 50 characters' do
          taxable_entity.name = 'a'*51
          taxable_entity.valid?
          expect(taxable_entity.errors[:name]).not_to be_blank
        end
      end
    end
    
    describe '@country' do
      describe '- format -' do
        it 'must be two non-digit characters' do
          taxable_entity.country = '11'
          taxable_entity.valid?
          expect(taxable_entity.errors[:country]).not_to be_blank
        end
      end
    end
  
  end


end
