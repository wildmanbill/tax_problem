describe BusinessUser do
  
  
  let(:business_user){FactoryGirl.build(:business_user)}
  
  describe 'factory' do
    it 'should be valid' do
      expect(business_user).to be_valid
    end
  end
  
  describe 'hstore accessors' do
    
    it 'responds to business_id_number' do
      expect(business_user.respond_to?(:business_id_number)).to eq(true)
    end
    
    it 'responds to industry' do
      expect(business_user.respond_to?(:industry)).to eq(true)
    end
    
  end
  
  describe 'validations and setters' do
      
    describe 'business_id_number' do
      ## setter
      it 'cannot have any characters other than digits' do
        business_user.business_id_number = '1,3,sfd&$fda;5'
        expect(business_user.business_id_number).to eq('135')
      end
      

      it 'cannot be blank' do
        business_user.business_id_number = ''
        business_user.valid?
        expect(business_user.errors[:business_id_number]).not_to be_empty
      end
    end
    
    describe 'industry' do
      it 'cannot be blank' do
        business_user.industry = ''
        business_user.valid?
        expect(business_user.errors[:industry]).not_to be_empty
      end
    end
    
  end
  
end