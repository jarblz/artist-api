require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
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
      ),
      Artist.create!(
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
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Handle".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Members".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Wiki Page".to_s, :count => 2
    assert_select "tr>td", :text => "Donation Url".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
