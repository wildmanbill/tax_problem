feature 'creating a PersonalUser' do
  scenario 'when a user first sets up their account' do
    visit 'users/new'
    within('#choose_user_type') do
      find('#user_type').set(1)
      find('#submit').click
    end  
    expect(current_path).to eq(new_personal_user_path)  
  end
end

# describe 'creating a BusinessUser' do
#
#
#
# end
