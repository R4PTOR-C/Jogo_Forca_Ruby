def boas_vindas
  puts "Ola"
  puts "Qual é o seu nome ?"
  nome = gets.strip
  puts"\n\n"
  puts "Bem vindo #{nome}"
  nome
end

def desenha_forca (erros)
  cabeca = "   "
  bracos = "   "
  pernas = "   "
  corpo = " "

  if erros >= 1
    cabeca = "('')"
  end

  if erros >= 2
    bracos = " | "
    corpo = "|"
  end

  if erros >= 3
    bracos = "\\|"
  end

  if erros >= 4
    bracos = "\\|/"
  end

  if erros >= 5
    pernas = "/"
  end

  if erros >= 6
    pernas = "/\\"
  end

  puts "  _______       "
  puts " |/      |      "
  puts " |      #{cabeca}  "
  puts " |      #{bracos}  "
  puts " |       #{corpo}  "
  puts " |      #{pernas}  "
  puts " |              "
  puts "_|___           "
  puts

end

def cabecalho_tentativa(chutes,erros, mascara)
  puts "\n\n\n"
  desenha_forca erros
  puts "Palavra é : #{mascara}"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora: #{chutes}"
end

def pede_chute

  puts "Digite uma letra ou palavra"
  chute = gets.strip.downcase
  chute

end

def jogar_novamente
  puts"Deseja jogar novamente (S/N) ?"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def chute_efetuado(chute)
  puts "Você já chutou isso"
end

def letra_nao_encontrada
  puts"Letra não encontrada"
end

def letra_encontrada (total_encontrado)
  puts "Letra encontrada #{total_encontrado}"
end

def acertou_palavra
  puts"Parabéns, acertou."
end

def errou_palavra
  puts "Errou"
end

def pontos_ate_agora(pontos)
  puts "Você ganhou #{pontos} pontos."
end

def avisa_pontos_totais (pontos_totais)
  puts "Você possui #{pontos_totais} pontos."
end

def avisa_campeao(dados)
  puts "Campeão atual é #{dados[0]} com #{dados[1]} pontos"
end