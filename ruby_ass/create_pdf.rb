require 'prawn'
Prawn::Document.generate('test.pdf') do 
text "hello this is pdf file "
text "created using prawn gem"
end
