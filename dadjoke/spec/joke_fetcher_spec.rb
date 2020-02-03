require 'rspec'
require 'joke_fetcher'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = "spec/vcr"
  c.hook_into :faraday
  c.configure_rspec_metadata!
end

describe JokeFetcher, :vcr do
  it 'returns a joke' do
    expect(JokeFetcher.retrieve).to match /[a-z]+/
  end
end