# ligne très importante qui appelle la gem.
require 'pry'
require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'rubygems'
require 'open-uri'

townhall=[]

page = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
page.xpath('//p/a').each do |name|
	#va me chercher la page et ensuite // (tu vas sur une page précise). Sur le fichier
	#html de la page, tu cherches le p de paragraphe et le a (liens).
    #puis il va met les liens (p et a) dans la variable "name"
  	townhall << name.text

end

email = []

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/"))
news_links = page.css("a") #une fois que j'ai tous les a, je le mets dans la variable |mail] Les liens a, je les fous dans "links"
news_links.each do |mail| #je demande à ce que tu mettes les liens dans la variable |mail| (orange)
    page_annuaire = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/#{link['href']}")) #page-annuaire (variable) - 
    page_annuaire.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |mail| #xpath tu vas par exemple ici: 
    	#https://www.annuaire-des-mairies.com/95/avernes.html, puis tu prends le mail, puis tu fais clic droit et "copie xpath"
    email << mail.text

  end

end

hash = Hash[townhall.zip(email.map)]

a = []

hash.each {|index| a << {index[0] => index[1]}}
puts a




=begin 
	def townhall_urls(townhall_url)
townhall_urls = []
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
page.xpath('//a[@class="lientxt"]'). each do |communes|
townhall_urls = url.text
townhall_urls_complete = townhall_urls.map{|i| i.downcase}
	end 
get_townhall_urls

def get_townhall_email
get_townhall_email = []
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
page.xpath('//h1[@class="txt-primary"]/a[@id="email"]').each do |email|
	#récupérer tous les liens d'une page + ajout de la classe avec l'inspecteur

=end
