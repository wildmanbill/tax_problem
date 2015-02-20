describe PersonalUser do
  
  let(:personal_user){FactoryGirl.build(:personal_user)}
  
  describe 'factory' do
    it 'should be valid' do
      expect(personal_user).to be_valid
    end
  end
  
  describe 'hstore accessors' do
    it 'responds to personal_id_number' do
      expect(personal_user.respond_to?(:personal_id_number)).to eq(true)
    end
  end
  
  describe 'validations and setters' do
    describe '@personal_id_number' do
      it 'cannot be blank' do
        personal_user.personal_id_number = ''
        personal_user.valid?
        expect(personal_user.errors[:personal_id_number]).not_to be_blank
      end
      
      ## setter
      it 'cannot contain anything other than digits' do
        personal_user.personal_id_number = 'af78fadaf9'
        expect(personal_user.personal_id_number).to eq('789')
      end
      
    end
    
  end
  
end