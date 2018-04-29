require "render_anywhere"

class StudentPdf
  include RenderAnywhere

  def initialize(student)
    @student = student
    @qr = RQRCode::QRCode.new( student.number, :size => 1, :level => :h )
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("public/student.pdf")
  end

  def filename
    "Student #{student.id}.pdf"
  end

  private

    attr_reader :student
    attr_reader :qr

    def as_html
      render template: "students/pdf", layout: "student_pdf", locals: { student: student, qr: qr }
    end
end