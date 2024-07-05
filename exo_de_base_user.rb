require "pry"

class User
    #variable d'instance (ecriture et lecture)
    #attr_writer : mastercard
    #attr_reader : birthdate
    attr_accessor :email

    #variable d'une classe
    @@user_count = 0

    # definition des methodes de la class
    def greet

      puts "Bonjour, monde !"

    end
    
    def say_hello_to_someone(first_name)

      puts "Bonjour, #{first_name} !"
  
    end
    #utilisation de self
    def show_itself

      print "Voici l'instance : "
 
      puts self
 
    end
    #Methode d'initialisation qui permet d'envoyer un message bonjour lorsqu'un utilisateur est crée
    def initialize(email_to_save)

      @email = email_to_save
  
      puts "On envoie un email de Bienvenue !!"
      @@user_count = @@user_count + 1
  
    end
    def self.count

      return @@user_count
  
    end

end #fin de ma classe

binding.pry

puts "end of file"


#julie = User.new
#jean = User.new 

#julie.greet
#jean.say_hello_to_someone(julie)
#julie.show_itself
