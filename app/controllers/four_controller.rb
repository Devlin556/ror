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
    (1..rows).each { |row|
      (1..cols ).each{ |col|
        col == 1 ? body_data += "<td>#{(col * row).to_s()}</td>" : ''
        
        body_data += "<td>#{(col * row).to_s()}</td>"
      }
      body_row.gsub!(/<td>/, body_data)
      body_data = ''
      table_body += body_row
      body_row = "<tr style='background: #{color}'><td></tr>"
    }

    ( 1..cols ).each { |col| 
      if col == 1
        header_row += "<th> </th>" 
      end
      header_row += "<th>#{ col.to_s()}</th>"
    }
    table_head.gsub!(/<row>/, header_row)
    html_table.gsub!(/<head>/, table_head)
    html_table.gsub!(/<body>/, table_body)
    return html_table.html_safe
  end

  def getMenu(menu, type = 'horizontal')
    case type 
      when 'horizontal'
        nav = "<nav class='navbar navbar-default '><div class='container'><div class='navbar'><ul class='nav navbar-nav'><links></ul></div></nav>"
        links = ''
        menu.each { |navItem|
          links += "<li><a href='#{navItem[:link]}'>#{navItem[:label]}</a></li>"
        }
        nav.gsub!(/<links>/, links)
      return nav.html_safe

      when 'vertical'
        links = ''
        menu.each { |navItem|
          links += "<li><a href='#{navItem[:link]}'>#{navItem[:label]}</a></li>"
        }
      return links.html_safe
      
      end
  end

  def index
    @menu = [
        { label:  'One', link: '/one/index' },
        { label:  'Two', link: '/two/index' },
        { label:  'Three', link: '/three/index' },
        { label:  'Four', link: '/four/index' },
    ]
  end
  helper_method :sum, :eval, :getTable, :getMenu
end


# функция генерации списка 
# массив эл-ов, вид списка 


def listRenderer(arr, type = 'unordered')
  
  list = '<type><items></type>'

  case type 
    when 'unordered'
      items = ''
      arr.each { |i|
        items += "<li><a href='#{i[:link]}'>#{i[:label]}</a></li>"
      }
      
      list.gsub!(/<items>/,items )
      list.gsub!(/<type>/, '<ul>' )
      list.gsub!(/<\/type>/, '</ul>' )

    return list.html_safe

  when 'ordered'
    items = ''
    arr.each { |i|
      items += "<li><a href='#{i[:link]}'>#{i[:label]}</a></li>"
    }

    list.gsub!(/<items>/,items )
    list.gsub!(/<type>/, '<ol>' )
    list.gsub!(/<\/type>/, '</ol>' )

  return list.html_safe
    end
end