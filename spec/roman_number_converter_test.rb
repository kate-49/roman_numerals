require 'rspec/autorun'
require_relative '../roman_number_converter.rb'

describe RomanToNum do 
    it "returns a value when given a string" do
        converter = RomanToNum.new
        expect(converter.convert("III")).to eq(3)
    end

    it "raises errors if not given string" do
        converter = RomanToNum.new
        expect{converter.convert(55)}.to raise_error StandardError
        expect{converter.convert(55.01)}.to raise_error StandardError
        expect{converter.convert(true)}.to raise_error StandardError
        expect{converter.convert(false)}.to raise_error StandardError
    end

    describe "can tell the values for all letters" do
        
        it "returns 1 for I" do
            converter = RomanToNum.new
            expect(converter.convert("I")).to eq(1)
        end

        it "returns 5 for V" do
            converter = RomanToNum.new
            expect(converter.convert("V")).to eq(5)
        end

        it "returns 10 for X" do
            converter = RomanToNum.new
            expect(converter.convert("X")).to eq(10)
        end

        it "returns 50 for L" do
            converter = RomanToNum.new
            expect(converter.convert("L")).to eq(50)
        end

        it "returns 100 for C" do
            converter = RomanToNum.new
            expect(converter.convert("C")).to eq(100)
        end

        it "returns 500 for D" do
            converter = RomanToNum.new
            expect(converter.convert("D")).to eq(500)
        end

        it "returns 1000 for M" do
            converter = RomanToNum.new
            expect(converter.convert("M")).to eq(1000)
        end
    end
end
