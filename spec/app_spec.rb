require_relative '../lib/app'

describe " function" do
  it "says " do
    expect(hello).to eq("Hello!")
  end
end

=begin 
require_relative '../lib/hello' dit juste à notre programme "hey, je vais vouloir accéder au contenu du fichier hello.rb qui est dans le dossier lib qui se trouve dans le dossier parent (d'où le ../) de là où tu es".
describe "the hello function" do (...) end permet d'ouvrir un premier groupe de tests que l'on a appelé "the hello function". Comme son nom l'indique, ce groupe de tests automatiques va se focaliser sur ce que doit faire la fonction "hello".
it "says hello" do (...) end permet d'ouvrir un premier test au sein du groupe de test "the hello function". Nous avons intitulé ce test "says hello" car c'est précisément ce comportement qu'on va tester sur la fonction hello.
expect(hello).to eq("Hello world!") est le cœur même du test ! On a indiqué via expect(..) qu'on va exécuter la fonction hello. Puis le .to eq(..) permet de spécifier le résultat attendu : un string "Hello world!"
=end