class TerminalTable
  def initialize
    #@table = table
  end

  def Table
   rows = []
   rows << ['One', 1]
   rows << ['Two', 2]
   rows << ['Three', 3]
   table = Terminal::Table.new :rows
 end

  table = Terminal::Table.new do |t|
    t.rows = rows
  end

  table = Terminal::Table.new do
    self.rows = rows
  end
  table = Terminal::Table.new do |t|
    t.rows = rows
  end

  table = Terminal::Table.new do
    self.rows = rows
  end

  table = Terminal::Table.new do |t|
    t << ['One', 1]
    t.add_row ['Two', 2]
  end

  table = Terminal::Table.new do |t|
    t << ['One', 1]
    t << :separator
    t.add_row ['Two', 2]
    t.add_separator
    t.add_row ['Three', 3]
  end

  table = Terminal::Table.new do |t|
    t << ['One', 1]
    t << :separator
    t.add_row ["Two\nDouble", 2]
    t.add_separator
    t.add_row ['Three', 3]
  end

  table = Terminal::Table.new :headings => ['Word', 'Number'], :rows => rows

  table = Terminal::Table.new :title => "Cheatsheet",
    :headings => ['Word', 'Number'], :rows => rows

  table.align_column(1, :right)

  table << ["Four", {:value => 4.0, :alignment => :center}]

  table = Terminal::Table.new :headings => ['Word', 'Number'], :rows => rows, :style => {:width => 80}

  table.style = {:width => 40, :padding_left => 3, :border_x => "=", :border_i => "x"}

  Terminal::Style.defaults = {:width => 80}


  table = Terminal::Table.new
  table.title = "Cheatsheet"
  table.headings = ['Word', 'Number']
  table.rows = rows
  table.style = {:width => 40}

end
