class BudgetMailer < ActionMailer::Base
  default :from => "cotacao@bdseguros.com.br"

  def automobile(budget_auto)
    @budget_auto = budget_auto    
        
    mail :to => "cotacao@bdseguros.com.br", :subject => "Pedido de cotação AUTO: " + @budget_auto[:name]
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.budget_mailer.life.subject
  #
  def life
    @greeting = "Hi"

    mail :to => "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.budget_mailer.others.subject
  #
  def others
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
