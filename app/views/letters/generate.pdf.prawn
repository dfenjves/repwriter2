prawn_document(:margin => 72) do |pdf|
  #pdf.stroke_axis
  pdf.text_box @letter.sender_full_address, :at => [300, 650]
  pdf.text_box "October, 21, 2015", :at => [300, 600]
  pdf.text_box @letter.recipient_address(@repinfo), :at => [0, 580]
  pdf.move_down 130
  pdf.text @letter.salutation(@repinfo)
  pdf.text "   "
  pdf.text @letter.body
end
