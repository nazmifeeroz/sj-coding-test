require "render_anywhere"

class StudentPdf
  include RenderAnywhere

  def initialize(student)
    @student = student
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/student.pdf")
  end

  def filename
    "Student #{student.id}.pdf"
  end

  private

    attr_reader :student

    def as_html
      render template: "students/show", layout: "application", locals: { student: student }
    end
end