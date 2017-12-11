json.array!(@artists) do |artist|
  json.extract! artist, :id, :handle, :url, :name, :bio, :members, :website, :wiki_page, :donation_url, :tags, :location
  json.url artist_url(artist, format: :json)
end
