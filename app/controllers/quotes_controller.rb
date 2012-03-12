# -*- coding: utf-8 -*-
class QuotesController < ApplicationController
  def default_quote
    @body = "background-image: url('../assets/banner_insurance.jpg'); background-color: #FFF; background-repeat:no-repeat; background-attachment:inherit; background-position:50% 0%; font-family:Arial".html_safe
    @quote_types = [["Automóvel", 0], ["Residencial", 1], ["Moto", 2], ["Equipamentos portáteis", 3], ["Aluguel", 4], ["Vida", 5], ["Empresarial", 6], ["Condomínio", 7]]
    @br_states = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MG", "MS", "MT", "PA", "PB", "PE", "PI", "PR", "RJ", "RN", "RO", "RR", "RS", "SC", "SE", "SP", "TO"]

    #Render by quote type
    if params[:quote]
      if params[:quote][:type_quote]
        @quote_type_quote = params[:quote][:type_quote]
        case @quote_type_quote
        when "0"
          @partial = "auto"
        else
          @partial = nil
        end
      end
    end

    if params[:commit] == "Iniciar simulação"
    end

    render :layout => "application_new"    
  end
end
