require_relative 'ui'
require_relative 'rank'

def escolhe_palavra()
  puts "Escolhendo palavra . . ."
  texto = File.read("dicionario.txt")
  todas_palavras = texto.split"\n"
  numero_aleatorio = rand(todas_palavras.size)

  palavra = todas_palavras[numero_aleatorio].downcase
  puts "Palavra com #{palavra.size} letras geradas... boa sorte"
  palavra
end

def imprime_palavra (chutes, palavra)
  mascara = ""
  for letra in palavra.chars
    if chutes.include? letra
      mascara << letra
    else
      mascara << "_"
    end
  end
  mascara
end

def pede_chute_valido(chutes, erros, mascara)
  cabecalho_tentativa chutes,erros, mascara
  loop do
    chute = pede_chute
    if chutes.include? chute
      chute_efetuado chute
    else
      return chute
    end
  end
end

def joga(nome)

  palavra = escolhe_palavra
  erros = 0
  chutes = []
  pontos = 0

  while erros < 7

    mascara = imprime_palavra chutes, palavra
    chute = pede_chute_valido chutes, erros, mascara
    chutes << chute
    chutou_letra = chute.size == 1

    if chutou_letra
      letra_procurada = chute[0]
      total_encontrado =  palavra.count letra_procurada

      if total_encontrado == 0
        letra_nao_encontrada
        erros += 1
      else
        letra_encontrada total_encontrado
      end

    else acertou = chute == palavra
    if acertou
      acertou_palavra
      pontos += 100
      break
    else
      errou_palavra
      erros += 1
    end
    end
  end
  pontos_ate_agora pontos
  pontos
end

def jogo_forca
  nome = boas_vindas
  pontos_totais = 0
  avisa_campeao le_rank

  loop do
    pontos_totais += joga nome
    avisa_pontos_totais  pontos_totais
    if le_rank[1].to_i < pontos_totais
      salva_rank nome, pontos_totais
    end
    if jogar_novamente
      break
    end
  end
end
