class TestsController < ApplicationController

    def initialize()
        @student = Student.first
        @qr = RQRCode::QRCode.new( 'roj[rshrs', :size => 4, :level => :h )
    end

    def test
        @student = student
        @qr = qr
    end

    private

    attr_reader :student
    attr_reader :qr
end