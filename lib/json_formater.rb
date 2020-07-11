require './report.rb'

class JsonFormater < Report
  private

  def print_header
    puts "{
     title: \' #{@header.join(' ')} \',
    "
  end

  def print_body(&block)
    puts 'dates: ['
    @body.each_with_index do |row, index|
      puts "{"
      puts "month: \'#{row[0]}\',"
      puts "travels: #{row[1]}"
      puts "}"
      puts ',' if index != @body.length - 1
    end
    puts ']
    }'
  end
end
