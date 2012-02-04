# -*- coding: utf-8 -*-
class BudgetMailer < ActionMailer::Base
  default :from => "cotacao@bdseguros.com.br"

  def automobile(budget_auto)
    @budget_auto = budget_auto    
        
    mail :to => "cotacao@bdseguros.com.br", :subject => "Pedido de cotação AUTO: " + @budget_auto[:name]
  end

  def portatil(budget_portatil)
    @budget_portatil = budget_portatil    
        
    mail :to => "cotacao@bdseguros.com.br", :subject => "Pedido de cotação Portatil: " + @budget_portatil[:name]
  end

  def other(budget_other)
    @budget_other = budget_other    
        
    mail :to => "cotacao@bdseguros.com.br", :subject => "Pedido de cotação Outros Ramos: " + @budget_other[:name]
  end
end
