# -*- coding: utf-8 -*-
class QuotesController < ApplicationController
  def default_quote
    @body = "background-image: url('../assets/banner_insurance.jpg'); background-color: #FFF; background-repeat:no-repeat; background-attachment:inherit; background-position:50% 0%; font-family:Arial".html_safe
    @br_states = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MG", "MS", "MT", "PA", "PB", "PE", "PI", "PR", "RJ", "RN", "RO", "RR", "RS", "SC", "SE", "SP", "TO"]

    if params[:commit] == "Iniciar simulação"
      $quote = {}
      $quote[:default_quote] = params[:quote]
      @renovacao = $quote[:default_quote][:insurance_new]
      @partial = $quote[:default_quote][:insurance_type]      
    end    

    if params[:commit] == "Continuar"
      case params[:quote][:step]
      when "1"
        $quote[:quote1] = params[:quote]

        if $quote[:quote1][:partial] == "auto_perfil"
          @partial = $quote[:quote1][:partial]
          @name = $quote[:default_quote][:name]
          @first_name = @name.split(' ')[0]
          @cpf = $quote[:default_quote][:cpf]
          @birth = $quote[:default_quote][:birth]
        end
      when "2"
        $quote[:quote2] = params[:quote] 

        if $quote[:quote2][:partial] == "auto_perfil_condutores"
          @partial = $quote[:quote2][:partial]
        end
      end
    end

    if params[:commit] == "Finalizar"
      $quote[:quote3] = params[:quote]
      
      if $quote[:quote3][:partial] == "finalizar"        
        @partial = $quote[:quote3][:partial]
        @first_name = $quote[:default_quote][:name].split(' ')[0] if $quote[:default_quote]

        if QuotesMailer.automobile($quote).deliver
          @sucesso = true          
        else
          @sucesso = false
        end if $quote[:default_quote] && $quote[:quote1] && $quote[:quote2] && $quote[:quote3]
      end
    end
  end
end