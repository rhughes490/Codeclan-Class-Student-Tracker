require('minitest/autorun')
require('minitest/reporters')
require_relative(../Team_B)

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < Minitest::Test  #we are getting functionality such as methods from Minitest


  def test_team_name
      #instantiation
      # object/ instance of a class = the return from the constructor for team class
      players = []
      team = Team.new("Liverpool", players, "Jurgen") #instantiated a new instance

      assert_equal("Liverpool", team.team_name())

  end

   def test_can_get_team_name
    players = []
    team = Team.new("Liverpool", players, "Jurgen")
       assert_equal("Liverpool", team.team_name())

   end

   def test_can_get_players

    players = []
    team = Team.new("Liverpool", players, "Jurgen")
       assert_equal(players, team.players())

   end

   def test_can_get_coach

    players = []
    team = Team.new("Liverpool", players, "Jurgen")
       assert_equal("Jurgen", team.coach())

   end

   def test_can_update_the_coach
  players = []
  team = Team.new("Liverpool", players, "Jurgen")
  #     #Act
       team.coach = "Brendan"
  #     #Assert
       assert_equal("Brendan", team.coach())
   end

end

#  def test_can_add_player
#   players = []
#        team = team.new("Liverpool", players, "Jurgen")
#        account.add_a_player("Origi")
#        assert_equal(players[], team.players)
#    end

   # def test_can_pay_into_account
  #     account = BankAccount.new("Louise", 5000, "business")
  #     account.pay_in(1500)
  #     assert_equal(6500, account.balance)
  # end

  # def test_can_change_type_of_account
  #     #Arrange
  #     bank_account =BankAccount.new("John", 500, "business")
  #     #Act
  #     bank_account.type = "personal"
  #     #Assert
  #     assert_equal("personal", bank_account.type())
  # end
      
  # def test_can_pay_into_account
  #     #arrange
  #     account = BankAccount.new("Louise", 5000, "business")
  #     #act
  #     account.pay_in(1500)
  #     #assert
  #     assert_equal(6500, account.balance)
  # end

  # def test_can_pay_monthly_fee__personal
  #     #arrange
  #     account = BankAccount.new("Harrison", 110, "personal")
  #     #act
  #     account.pay_monthly_fee()
  #     #assert
  #     assert_equal(100, account.balance)
  # end

  # def test_can_pay_monthly_fee__business
  #     #arrange
  #     account = BankAccount.new("Codeclan", 110, "business")
  #     #act
  #     account.pay_monthly_fee()
  #     #assert
  #     assert_equal(60, account.balance)
  # end