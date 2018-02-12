require 'rails_helper'
   context '(when logged in)' do
     before :each do
       profile = Profile.create(email: 's0test@htw-berlin.de', password: '123456789123456789', password_confirmation: '123456789123456789')
       login_as(profile, :scope => :profile)
      end
      it 'check if map gets rendered' do
        visit impressum_impressum_path
        page.find('#map')
   end
end
