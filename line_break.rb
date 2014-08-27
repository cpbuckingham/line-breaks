class LineBreaker
  def text(text)
    array = []
    line = ''
    text.split(' ').each { |word|
      added = line + ' ' + word
      if added.length < 80
        line = added
      else
        array.push(line)
        line = word
      end}
    array.push(line) unless line == ''
    array = array.join("\n")
    array[0] = ''
    array
  end
end
