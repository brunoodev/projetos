class Cliente < ActiveRecord::Base

	#busca rapida
	def self.buscarapida(args)
		if args
			where("nome LIKE '%#{args}%'")
		end 
	end

	#validacao datanascimento no cadastro
	validates :datanascimento, :mask => "99/99/9999"

end
