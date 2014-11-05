module ApplicationHelper
  def class_for_item(symbol)
    puts "Class for Symbol #{symbol}, of type #{symbol.class}"
    case symbol
      when 'error'
        puts 'Trigger Error'
        'alert alert-danger'
      when 'notice'
        puts 'Trigger Notice'
        'alert alert-success'
    end
  end
end
