RSpec.describe BinanceChainRuby do
  it "has a version number" do
    expect(BinanceChainRuby::VERSION).not_to be nil
  end

  let(:client) { BinanceChainRuby::Client.new }

  it 'get information from binance chain' do
    VCR.use_cassette("get_token") do
      expect(client.node_info).to_not be nil
      expect(client.validators).to_not be nil
      expect(client.peers).to_not be nil
      # expect(client.account).to_not be nil #get an address
      # expect(client.account_sequence).to_not be nil #get an address
      # expect(client.transaction).to_not be nil #id
      expect(client.tokens).to_not be nil
      expect(client.markets).to_not be nil
      expect(client.fees).to_not be nil
      # expect(client.depth).to_not be nil #need symbol
      # expect(client.fees).to_not be nil # not working at the moment
      # expect(client.klines).to_not be nil # need symbol and time_interval
      # expect(client.closed_orders).to_not be nil #error 404
      # expect(client.open_orders).to_not be nil #error 404
      # expect(client.order(id)).to_not be nil #need id
      expect(client.tickers).to_not be nil
      expect(client.trades).to_not be nil
      # expect(client.block_exchange_fees).to_not be nil error 400
      # expect(client.transactions).to_not be nil error 400
    end
  end
end
