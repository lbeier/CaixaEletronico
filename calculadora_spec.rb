require './calculadora'
require './nota'

describe Calculadora do

	before(:all) do
    	@calculadora = Calculadora.new
  	end

	it 'should return nothing if value is null' do
		bills = @calculadora.conjuntoDeNotas(nil)
		
		bills.should eq([])
	end

	it 'should return nothing if value is 0' do
		bills = @calculadora.conjuntoDeNotas(0)
		
		bills.should eq([])
	end

	it 'should return one $10 if value is 10' do
		bills = @calculadora.conjuntoDeNotas(10)

		bills.should eq([[:TEN, 1]])
	end

	it 'should return 2 $2 bills if value is 2' do
		bills = @calculadora.conjuntoDeNotas(4)

		bills.should eq([[:TWO, 2]])
	end

	it 'should return the right set of bills for 438' do
		bills = @calculadora.conjuntoDeNotas(438)

		bills.should eq([[:HUNDRED, 4], [:TWENTY, 1], [:TEN, 1], [:FIVE, 1], [:TWO, 1], [:ONE, 1]])
	end
end