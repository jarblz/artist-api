require 'spec_helper'
# spec/requests/api/v1/messages_spec.rb
describe "Artists API", type: :controller do
  it 'lists all artists' do
    response = RestClient.get ENV['PRODUCTION_API_INDEX']
    expect(response.net_http_res.code).to eq('200')
    json = JSON.parse(response.body)

    # test for the 200 status-code

    # check to make sure the right amount of messages are returned
    expect(json.count).to eq(300)
  end

  it 'searches a subset of artists' do
    response = RestClient.get ENV['PRODUCTION_API_SEARCH'], {params: {term: "all"}}
    expect(response.net_http_res.code).to eq('200')
    json = JSON.parse(response.body)

    # test for the 200 status-code

    # check to make sure the right amount of messages are returned
    expect(json.count).to eq(4)
  end
end
