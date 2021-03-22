class Play 

    # Computer picks at random
    def random
        choice = ['scissors','rocks','paper']
        return choice[rand(3)]
    end

    # the logic needed for this game
    def gameLogic(option)
        newOption = option.downcase 
        playersChoice = newOption[0]
        computer = self.random
        
        p "Computer Chose: #{computer}"
        if playersChoice == computer[0]
            return 'tie'
        elsif playersChoice == 'r' && computer[0] == 'p'
            return false 
        elsif playersChoice =='s' && computer[0] = 'r'
            return false
        elsif playersChoice == 'p' && computer[0] == 's'
            return false
        else
            return true
        end
    end
   

end
