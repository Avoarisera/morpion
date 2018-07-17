require_relative 'Player'
require_relative 'Board'

class Game


  def anarana
    puts "Veuillez entrer le nom du Joueur X:"
    @j1 = gets.chomp 
    puts "Veuillez entrer le nom du Joueur O:"
    @j2 = gets.chomp 
  end        

  def fond        
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
  end

  def mandresy
    [[@a1, @a2, @a3],
    [@a1, @b2, @c3],
    [@a1, @b1, @c1],
    [@b1, @b2, @b3],
    [@c1, @c2, @c3],
    [@c1, @b2, @a3],
    [@a2, @b2, @c2],
    [@a3, @b3, @c3]]

  end


  def tableau
    puts
    puts "   1  2  3"

    puts "a  #{@a1} |#{@a2} |#{@a3} " 
    puts "  --------"
    puts "b  #{@b1} |#{@b2} |#{@b3} "
    puts "  --------"
    puts "c  #{@c1} |#{@c2} |#{@c3} "

    mpandresy

  end

 #  def malalaka falalaka
 #    if falalaka == " "
 #     true
 #   else
 #     puts"tsa mahazo makao"
 #     joueur1
 #   end
 # end

 def joueur1
  choix_hash = {      "a1" => @a1,
    "a2" => @a2,
    "a3" => @a3,
    "b1" => @b1,
    "b2" => @b2,
    "b3" => @b3,
    "c1" => @c1,
    "c2" => @c2,
    "c3" => @c3
  }


  puts "choisis une case #{@j1}"
  choix = gets.chomp.downcase
  choix_hash.each do |choice, kasy|
    if choix == choice
     # if malalaka(kasy) 
     kasy.sub!(" ", "X")
     tableau
     # end

      #elsif user_choice == "q" or user_choice == "quit"
      #exit

    end
  end
end


def joueur2
 hash = {"a1" => @a1,
  "a2" => @a2,
  "a3" => @a3,
  "b1" => @b1,
  "b2" => @b2,
  "b3" => @b3,
  "c1" => @c1,
  "c2" => @c2,
  "c3" => @c3}
  puts "choisis une case #{@j2}"
  safidy = gets.chomp.downcase

  hash.each do |key, value|
   if safidy == key
        # if malalaka(value)
        value.sub!(" ", "O")
      end

          #elsif user_choice == "q" or user_choice == "quit"
          #exit
        #end
      end
end


      def mpandresy 
        mandresy.each do |combos| 
          if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
            puts "#{@j1} a gagné."
            exit 
          elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
            puts "#{@j2} gagné"
            exit
          end
        end
      end


      def play
        anarana
        fond
        while true
          tableau
          joueur1
          joueur2
        end
      end

  end


j =Game.new
j.play