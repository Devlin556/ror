class FourController < ApplicationController
  def eval(a, b, operator)
    case operator
      when '+'
        return a + b
      when '-'
        return a - b
      when '*'
        return a*b
      when '/'
        return a/b
    end
  end

  def sum(*args)
    return args.sum
  end

  def getTable(cols, rows, color)
    html_table = ''
    (0..cols-1).each()
  end
  def index

  end
  helper_method :sum, :eval
end
