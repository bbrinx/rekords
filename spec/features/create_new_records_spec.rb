require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'create a new record' do
        visit new_record_path
        fill_in 'record_name', with: 'Bester Rekord'
        fill_in 'record_description', with: 'Das ist ein Test Rekord'
        select 'Eating', :from => "record[category_id]"
        click_button 'Create Record'
        expect(page).to have_content('Bester Rekord')
        expect(page).to have_content('Das ist ein Test Rekord')
        expect(page).to have_content('Category: 2')
   end
end
