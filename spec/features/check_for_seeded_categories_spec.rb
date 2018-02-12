require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'create a new group' do
        visit categories_path
        expect(page).to have_content('Sport')
        expect(page).to have_content('Eating')
        expect(page).to have_content('Drinking')
        expect(page).to have_content('Knowledge')
        expect(page).to have_content('Other')

   end
end
