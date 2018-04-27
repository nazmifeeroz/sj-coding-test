class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def downloadPdf
        # kit = PDFKit.new('http://google.com')
    end

end