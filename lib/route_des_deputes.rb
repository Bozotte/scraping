# ligne très importante qui appelle la gem.
require 'pry'
require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'rubygems'
require 'open-uri'

deputes = []

page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
page.xpath('//a'[@id="deputes-list"]/div[1]/ul[1]/li[1]/a.each do |name|
	#va me chercher la page et ensuite // (tu vas sur une page précise). Sur le fichier
	#html de la page, tu cherches le p de paragraphe et le a (liens).
    #puis il va met les liens (p et a) dans la variable "name"
  	deputes << name.text

end


email = []

page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
page.xpath('//a'[@id="deputes-list"]/div[1]/ul[1]/li[1]/a.each do |name|

    email << mail.text
=begin
	
	#va me chercher la page et ensuite // (tu vas sur une page précise). Sur le fichier
	#html de la page, tu cherches le p de paragraphe et le a (liens).
    #puis il va met les liens (p et a) dans la variable "name"
	
=end
