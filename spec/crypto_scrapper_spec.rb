
require_relative '../lib/crypto_scrapper.rb'

describe "the crypto function" do
    it "counts the number of items in the array" do
        expect(crypto.size).to eq(2045)
    end
end

#vu que les valeurs des cryptomonnaies changent tout le temps, on a décidé de rester sur le test du nombre des monnaies scrapées.