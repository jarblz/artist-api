require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :handle => "Handle",
      :url => "Url",
      :name => "Name",
      :bio => "MyText",
      :members => "Members",
      :website => "Website",
      :wiki_page => "Wiki Page",
      :donation_url => "Donation Url",
      :tags => "Tags",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Handle/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Members/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Wiki Page/)
    expect(rendered).to match(/Donation Url/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/Location/)
  end
end
