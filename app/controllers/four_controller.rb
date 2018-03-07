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
    html_table = '<table class="table multiTable table-stripped table-bordered"><head><body></table>'
    table_head = '<tr><row></tr>'
    table_body = ''
    header_row = ''
    body_row = "<tr style='background: #{color}'><td></tr>"
    body_data = ''
    (1..cols).each { |col|
      header_row += "<th>#{col.to_s()}</th>"
      (1..rows ).each{ |row|
        body_data += "<td>#{(col * row).to_s()}</td>"
      }
      body_row.gsub!(/<td>/, body_data)
      body_data = ''
      table_body += body_row
      body_row = "<tr style='background: #{color}'><td></tr>"
    }
    table_head.gsub!(/<row>/, header_row)
    html_table.gsub!(/<head>/, table_head)
    html_table.gsub!(/<body>/, table_body)
    return html_table.html_safe
  end
  def index

  end
  helper_method :sum, :eval, :getTable
end
