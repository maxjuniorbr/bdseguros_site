# -*- coding: utf-8 -*-
class QuotesController < ApplicationController
  def index
    @body = "background-image: url('../assets/banner_insurance.jpg'); background-color: #FFF; background-repeat:no-repeat; background-attachment:inherit; background-position:50% 0%; font-family:Arial".html_safe
    @br_states = ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MG", "MS", "MT", "PA", "PB", "PE", "PI", "PR", "RJ", "RN", "RO", "RR", "RS", "SC", "SE", "SP", "TO"]

    if params[:quote] && params[:authenticity_token]
      if QuotesMailer.automobile(params[:quote]).deliver
        redirect_to cotacao_path(:sucesso => true)
      else
        redirect_to cotacao_path(:sucesso => false)
      end
    end
  end
end