class Report
  def print_header
    raise 'Header is empty'
  end

  def print_title
    # Overrride this hook
  end

  def print_body
    raise 'Body is empty'
  end

  def print_footer
    raise 'Footer is empty'
  end

  def print
    print_header
    print_title
    print_body
    print_footer
  end
end
