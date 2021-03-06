require 'rails_helper'

RSpec.describe "songs/show", type: :view do
  before(:each) do
    @album = FactoryGirl.create(:album)
    @song = assign(:song, Song.create!(
      :name => "Name",
      :track_number => 1,
      :album => @album
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
