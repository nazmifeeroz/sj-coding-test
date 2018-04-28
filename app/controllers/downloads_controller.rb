class DownloadsController < ApplicationController

    def show
      respond_to do |format|
        format.pdf { send_student_pdf }
      end
    end

    private

    def student_pdf
      student = Student.find(params[:id])
      StudentPdf.new(student)
    end

    def send_student_pdf
      send_file student_pdf.to_pdf,
        filename: student_pdf.filename,
        type: "application/pdf",
        disposition: "inline"
    end
  end