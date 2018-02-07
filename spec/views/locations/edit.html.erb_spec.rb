require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "MyString",
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input[name=?]", "location[name]"

      assert_select "input[name=?]", "location[lat]"

      assert_select "input[name=?]", "location[lng]"
    end
  end
end
