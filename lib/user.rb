require "pry"
class User
    attr_accessor :email
    attr_accessor :age
    @@users = []

    def initialize(email_to_save,age_to_save)

        @email = email_to_save
        @age = age_to_save.to_i
        @@users << self
    
    end

    def self.all
        return @@users
    end
    def self.find_by_email(email)
        user_1 = @@users.find{|user|user.email ==email}
        puts "les infos de l'utilisateur sont:"
        puts "email :#{user_1.email}"
        puts"age :#{user_1.age}"

    end
end
#binding.pry
puts "En of file"