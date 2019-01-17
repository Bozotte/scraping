 # ligne très importante qui appelle la gem.
require 'pry'
#require 'dotenv'
require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'rubygems'
require 'open-uri'

#Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

currency = []
value = []

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all//"))   

page.xpath('//a[@class="link-secondary"]'). each do |devise|
	#récupérer tous les liens d'une page + ajout de la classe avec l'inspecteur

		 currency << devise.text

end

# Print Currency (devises)


page.xpath('//a[@class="price"]').each do | price |
	#récupérer tous les liens d'une page + ajout de la classe avec l'inspecteur

		 value << price.text

end

# Print prix (cours) des cryptos


values = value.map{|e| e.delete('$').to_f } 

=begin 

# .map = First, you have an array, but it could also be a hash, or a range. 
Then you call map with a block.The block is this thing between brackets { ... }.
Inside the block you say HOW you want to transform every element in the array. 
It’s basically a function.

# to_f = floating point number > Extraneous characters past the end 
of a valid number are ignored. 

=end

my_hash = Hash[currency.zip(values.map)]

print my_hash




