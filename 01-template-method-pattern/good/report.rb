class Report
  def initialize
    @title = 'Monthly Report'
    @text = [
      'Things are going',
      'really',
      'really well.'
    ]
  end

  # template method
  # implement hooks methods in subclass for specific usage
  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  # hooks method
  # can be overridden by subclass
  def output_start; end

  def output_end; end

  # abstract method
  def output_head
    raise 'Called abstract method: output_head'
  end

  def output_body_start; end

  def output_body
    @text.each do |line|
      output_line line
    end
  end

  def output_body_end; end

  def output_line(line)
    raise 'Called abstract method: output_line'
  end
end
