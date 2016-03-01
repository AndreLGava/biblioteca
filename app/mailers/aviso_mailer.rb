class AvisoMailer < ActionMailer::Base

	default :from => 'no-reply@biblioteca.io'
		def aviso(emprestimo)
				@emprestimo = emprestimo
				
				mail({
					:to => emprestimo.email,
					:bcc => ['aviso <signup@colcho.net>'],
					:subject => "Algo deu certo"
					})
		end
end