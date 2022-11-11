require 'combine_pdf'

pdf = CombinePDF.new
pdf << CombinePDF.load("/home/runner/rubypractice/file1.pdf")
pdf << CombinePDF.load("/home/runner/rubypractice/file2.pdf")
pdf.save "combined.pdf"