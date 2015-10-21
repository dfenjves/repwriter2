prawn_document do |pdf|
  pdf.text @letter.salutation(@repinfo)
  pdf.text @letter.body

end