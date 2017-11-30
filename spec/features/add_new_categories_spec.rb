
require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'create a new category' do
        visit new_category_path
        fill_in 'category_name', with: 'Freizeit'
        click_button 'Create Category'
        expect(page).to have_content('Freizeit')
   end
end
