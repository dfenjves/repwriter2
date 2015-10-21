prawn_document do |pdf|
  pdf.stroke_axis
  pdf.bounding_box([0, 75], :width => 200, :height => 150) do
    pdf.text @letter.recipient_address(@repinfo)
  end
  pdf.text @letter.sender_full_address
  pdf.move_down 30
  pdf.text @letter.salutation(@repinfo)
  pdf.text @letter.body
end
