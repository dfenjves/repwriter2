prawn_document(:margin => 72) do |pdf|
  #pdf.stroke_axis
  pdf.text_box @letter.sender_full_address, :at => [300, 650]
  pdf.text_box Time.now.strftime("%B %e, %Y"), :at => [300, 600]
  pdf.text_box @letter.recipient_address(@repinfo), :at => [0, 580]
  pdf.move_down 130
  pdf.text @letter.salutation(@repinfo)
  pdf.text "   "
  pdf.text @letter.body
  pdf.move_down 100
  pdf.text_box "Sincerely", :at => [300, pdf.y]
  pdf.move_down 60
  pdf.text_box @letter.sender_name, :at => [300, pdf.y]
  pdf.move_down 20
  pdf.text_box "#{@letter.sender_city}, #{@letter.sender_state}", :at => [300, pdf.y]
end
