class Calculadora
	
	def conjuntoDeNotas (valor)
		notas = [];

		if valor == nil	
			return notas
		end
		
		while valor > 0 do
			Nota.constants.each do |c|
				valorDaNota = Nota.const_get(c)
				quantidadeDeNotas = valor / valorDaNota

				if quantidadeDeNotas != 0
					notas.push([c, quantidadeDeNotas])
					valor = valor - (valorDaNota * quantidadeDeNotas)					
				end							
			end
		end

		notas
	end
end