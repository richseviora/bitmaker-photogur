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

  def badge_text
    #to_s required as the values will not convert automatically.
    Photo.count.to_s + '/' + Photo.created_before(1.month.ago).count.to_s
  end
end
