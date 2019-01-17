 # ligne très importante qui appelle la gem.
require 'pry'
require 'dotenv'
require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'rubygems'
require 'open-uri'

Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

	def crypto_scrapper

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all//"))   

puts page.class   # => Nokogiri::HTML::Document
end
	end

# Le cours du prix des cryptos > //*[@id="th-price"] 


a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 }, 
  etc
]




=begin
Nous pouvons vérifier la taille de l'array, et la comparer au nombre de cryptomonnaies sur le site : on doit avoir autant d'entrée dans notre array que de crypto sur le site. Mais ce n'est pas très robuste, car il suffit qu'une cryptomonnaie soit rajoutée et tout plante. 
Une autre technique serait de vérifier au moins une entrée dans l’array. On est rassurés si, dans notre array, il existe un hash qui a BTC en key et un float non nul et non Nil en value. En cas d'absence, c'est que notre scrappeur n'a pas récupéré le Bitcoin (oups), ou s'il n'a pas de float associé, c'est qu'il n'a pas bien récupéré le cours du Bitcoin (oups bis).
=> Au final, une bonne solution pourrait être un mix des deux : vérifier que ton scrappeur récupère au moins x cryptomonnaies (comme ça, t'es pas à une près) et vérifier la présence de 2-3 cryptomonnaies phares (avec un cours non Nil et non nul).
=end
