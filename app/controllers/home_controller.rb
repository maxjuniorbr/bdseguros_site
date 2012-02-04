# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
  end

  def budget
  end

  def budget_auto
    if params[:commit] == "Enviar"      
      if BudgetMailer.automobile(params[:budget_auto]).deliver
        @message = "<p style='color: green'>Solicitação encaminhada com sucesso, retornaremos em breve...</p>".html_safe
      else
        @message = "<p style='color: red'>Ocorreu um erro ao enviar seu formulário, tente novamente em alguns minutos...</p>".html_safe
      end
    end
  end

  def budget_portatil
    if params[:commit] == "Enviar"      
      if BudgetMailer.portatil(params[:budget_portatil]).deliver
        @message = "<p style='color: green'>Solicitação encaminhada com sucesso, retornaremos em breve...</p>".html_safe
      else
        @message = "<p style='color: red'>Ocorreu um erro ao enviar seu formulário, tente novamente em alguns minutos...</p>".html_safe
      end
    end
  end

  def budget_other
    if params[:commit] == "Enviar"      
      if BudgetMailer.other(params[:budget_other]).deliver
        @message = "<p style='color: green'>Solicitação encaminhada com sucesso, retornaremos em breve...</p>".html_safe
      else
        @message = "<p style='color: red'>Ocorreu um erro ao enviar seu formulário, tente novamente em alguns minutos...</p>".html_safe
      end
    end
  end
end
