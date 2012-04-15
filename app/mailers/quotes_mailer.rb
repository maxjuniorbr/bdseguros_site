# -*- coding: utf-8 -*-
class QuotesMailer < ActionMailer::Base
  default :from => "cotacao@bdseguros.com.br"

  def automobile(quote_auto)
    @quote_auto = quote_auto            
    mail :to => "cotacao@bdseguros.com.br", :subject => "Pedido de cotação AUTO: " + @quote_auto[:name]
  end
end