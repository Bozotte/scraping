# ligne très importante qui appelle la gem.
require 'pry'
require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'rubygems'
require 'open-uri'

def get_deputy_email
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
    list = page.xpath('//*[@id="deputes-list"]//li/a/text()')
    deputy_name = list.map { |deputy_info| deputy_info.to_s.split.drop(1) }
    contact = deputy_name.map { |first_name, last_name|
        email = first_name + '.' + last_name + '@assemblee-nationale.fr'
        Hash[first_name: first_name, last_name: last_name, email: email]
    }
    # binding.pry
end

def perform
    get_deputy_email
end

puts perform

=begin
	
	#va me chercher la page et ensuite // (tu vas sur une page précise). Sur le fichier
	#html de la page, tu cherches le p de paragraphe et le a (liens).
    #puis il va met les liens (p et a) dans la variable "name"
	
=end
