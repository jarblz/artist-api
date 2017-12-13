require 'spec_helper'
# spec/requests/api/v1/messages_spec.rb
describe "Artists API", type: :controller do
  it 'sends a list of messages' do
    FactoryGirl.create(:artist)
    FactoryGirl.create(:artist, name: 'kewl')

    request = RestClient.get ENV['PRODUCTION_API_INDEX']

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['messages'].length).to eq(10)
  end

  it 'sends a list of messages' do
    FactoryGirl.create(:artist)
    FactoryGirl.create(:artist, name: 'kewl')

    request = RestClient.get ENV['PRODUCTION_API_SEARCH']

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['messages'].length).to eq(10)
  end
end
