require File.expand_path('../../lib/calculator', File.dirname(__FILE__))

class HomeController < ApplicationController

  def index
    @result = ''
    case params[:operation]
      when 'sum', 'subtr', 'mult', 'div'
        if params[:a].to_s == '' or params[:b].to_s == ''
          @result = 'Ведите значения обоих операндов!'
        else
          @result = Calculator.drop_fract_int(params[:a]).to_s + ' ' +
              Calculator.get_operator(params[:operation]) + ' ' +
              Calculator.drop_fract_int(params[:b]).to_s + ' = ' +
              Calculator.send(params[:operation], *[params[:a], params[:b]]).to_s
        end
      when 'sqrt', 'sin', 'cos'
        if params[:a].to_s == ''
          @result += 'Введите значение первого операнда!'
        else
          @result = Calculator.get_operator(params[:operation]) + '(' + Calculator.drop_fract_int(params[:a]).to_s + ') = ' +
              Calculator.send(params[:operation], *[params[:a]]).to_s
        end
      else
        @result = nil
    end
  end

end