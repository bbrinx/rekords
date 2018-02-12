require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: 'testtest', password_confirmation: 'testtest')
       login_as(profile, :scope => :profile)
      end
      it 'show home screen' do
        visit homes_path
        expect(page).to have_content('Deine letzten Rekorde')
   end
end
