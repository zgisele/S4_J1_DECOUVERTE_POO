require 'pry'
require 'time'
class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date_to_save,duration_to_saves,title,attendees)
        @start_date = Time.parse(start_date_to_save) 
        @duration = duration_to_saves.to_i
        @title = title
        @attendees = attendees
    end

    #decalage de l'evenement a 24h  plus tard
    def postpone_24
        @start_date = @start_date +24*3600
    end
    #date de fin de l'evenement
    def end_date
        @start_date +(@duration*60) 
    end

    #methode qui permet de verifier si l'evenement est passé
    def is_past?

        t1 = @start_date #date de l'evenement
        t2 = Time.now #date actuelle
        t2 > t1

    end

    ##methode qui permet de verifier que l'evenement est dans le future
    def is_future?
        !is_past?
    end#methode qui permet de verifier que l'evenement est est pour bientot
    def is_soon?

        t1 = @start_date #date de l'evenement
        t2 = Time.now #date actuelle
        res = t2 - t1
        if res < 30
            return " l'evenement est pour bientot "
        end
    end
    def to_s
        puts"Titre :#{@title}"
        puts"Date de debut :#{@start_date}"
        puts"Durée :#{@duration}"
        puts"attendees :#{@duration}"
    end

end
#ann = Event.new("2024-05-03","30","cour",["kafouigisele@gmail.com","joe@gmail.com"])