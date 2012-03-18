# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    @body = "background-image: url('../assets/banner_principal.jpg'); background-color: #FFF; background-repeat:no-repeat; background-attachment:inherit; background-position:50% 0%; font-family:Arial".html_safe
  end

  #insurance
  def insurance
    @body = "background-image: url('../assets/banner_insurance.jpg'); background-color: #FFF; background-repeat:no-repeat; background-attachment:inherit; background-position:50% 0%; font-family:Arial".html_safe    
  end
end