require 'rspec/autorun'
require_relative '../roman_number_converter.rb'

describe RomanToNum do 
    it "returns a value when given a string" do
        converter = RomanToNum.new
        expect(converter.convert("III")).to eq(3)
    end
end
