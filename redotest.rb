[1, 2, 3].each do |i|
    p i
    if i == 3 then
      redo
    end
  end