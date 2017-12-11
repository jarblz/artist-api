require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :handle => "MyString",
      :url => "MyString",
      :name => "MyString",
      :bio => "MyText",
      :members => "MyString",
      :website => "MyString",
      :wiki_page => "MyString",
      :donation_url => "MyString",
      :tags => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_handle[name=?]", "artist[handle]"

      assert_select "input#artist_url[name=?]", "artist[url]"

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_bio[name=?]", "artist[bio]"

      assert_select "input#artist_members[name=?]", "artist[members]"

      assert_select "input#artist_website[name=?]", "artist[website]"

      assert_select "input#artist_wiki_page[name=?]", "artist[wiki_page]"

      assert_select "input#artist_donation_url[name=?]", "artist[donation_url]"

      assert_select "input#artist_tags[name=?]", "artist[tags]"

      assert_select "input#artist_location[name=?]", "artist[location]"
    end
  end
end
