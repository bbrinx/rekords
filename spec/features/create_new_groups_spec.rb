require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'create a new group' do
        visit new_group_path
        fill_in 'group_username', with: 'Manfred'
        fill_in 'group_password', with: '123456789'
        click_button 'Create Group'
        expect(page).to have_content('Manfred')
        expect(page).to have_content('123456789')
   end
end
