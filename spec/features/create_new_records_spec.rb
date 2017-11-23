require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'creates a new record' do
        visit  new_record_path
        fill_in 'record_name', with: '30 sec. Luftanhalten'
        fill_in 'record_description', with: '#Jamaika swimming'
        expect(page).to have_content('30 sec. Luftanhalten')
        expect(page).to have_content('#Jamaika swimming')
   end
end

:record_name
