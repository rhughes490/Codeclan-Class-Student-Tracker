class Team

    attr_reader :players
    attr_accessor :team_name, :coach
  
    # looks and behaves like a method, kinda like the .new in the spec folder,
    # It is the method that sets up the inital state of a object.
    # This is a constructor! 
    def initialize(team_name, players, coach)
        # @ = instance variable / property / attribute
        @team_name = team_name
        @players = players
        @coach = coach
    end
  
#     def add_a_player(player)
#       @players.push(player)
#   end
  
    # def pay_in(amount)
    #     @balance += amount
    # end
  
  
    # def pay_monthly_fee()
    #     @balance -= 10 if @type == "personal"
    #     @balance -= 50 if @type == "business"
    # end
  
    # another way of doing this is:
    # def pay_monthly_fee(fee)
    #     if @type == "personal"
    #         @balance -= 10
    #     elsif @type == "business"
    #     @balance -= 50
    #     end
    # end
  
    # another way of doing this is:
    # def pay_monthly_fee()
    #     fees = {
    #         "personal" => 10,
    #         "business" => 50
    #     }
    #     @balance -= fees[@type]
    # end
  
  end