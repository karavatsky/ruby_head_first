def paragraph(text)
  "<p>#{text}</p>"
end

def image(src, width = 100, height = 100)
  "<img src='#{src}' width='#{width}' height='#{height}' />"
end

puts paragraph("Firstly I've outputed some text.")
puts paragraph("Default image.")
puts image("puppy.jpg")
puts paragraph("Image in paragraph \n #{image("puppty.jpg", 300, 400)}")