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
  townhall << name.text
end

email = []

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/"))
news_links = page.css("a")
news_links.each do |link|
    page_annuaire = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/#{link['href']}"))
    page_annuaire.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |mail|
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
