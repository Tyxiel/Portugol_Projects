programa {
  funcao inicio() {

    // Pesquisa com 100 (cem) habitantes de uma região.
    // Foram coletados os dados de idade, sexo (M/F) e salário.

    // Possui: 

    // Média salarial masculina
    // Média salarial feminina

    // Maior e menor idade do sexo masculino e feminino

    // Homens e mulheres com sálario entre R$1000 e R$3000

    // Percentual de homens e mulheres com salário maior que R$2000

    real idade, maior_idade_masc, maior_idade_fem, media_masc, media_fem

    real slr, perc_ambos

    real m_slr, qntd_m, qntd_masc_1_3, 
    
    real f_slr, qntd_f, qntd_fem_1_3, total_f, total_m

    cadeia sexo

    // Idades

    idade = 0
    maior_idade_masc = 0
    maior_idade_fem = 0

    // Média Salarial

    media_masc = 0
    media_fem = 0

    // Colher o salário 

    slr = 0
    m_slr = 0
    f_slr = 0

    // Quant. com slr > R$2000

    qntd_m = 0
    qntd_f = 0

    // Salário entre R$1000 e R$3000

    qntd_masc_1_3 = 0
    qntd_fem_1_3 = 0

    // Total antes do percentual

    total_m = 0
    total_f = 0

    para(inteiro i = 0; i <= 100 ; i++){      
      
      escreva("\nDigite sua idade: ")
      leia(idade)

      escreva("Digite seu sexo (F/M): ")
      leia(sexo)

      escreva("Digite seu salário: ")
      leia(slr)

      // Masculino

      se(sexo == "M"){

        m_slr = m_slr + slr

        se(idade > maior_idade_masc){
          maior_idade_masc = idade
        }

        se(slr >= 1000 e <= 3000){
          qntd_masc_1_3 = qntd_masc_1_3 + 1
        }

        se(slr >= 2000){
          qntd_m = qntd_m + 1
        }  
      }

    // Feminino

      se(sexo == "F"){

        f_slr = f_slr + slr
        
        se(idade > maior_idade_fem){
        maior_idade_fem = idade
        }

        se(slr >= 1000 e <= 3000){
          qntd_fem_1_3 = qntd_fem_1_3 + 1
        }

        se(slr >= 2000){
          qntd_f = qntd_f + 1
        }
      }    
    }

    // Algorítimos

    media_masc = m_slr / 100
    media_fem = f_slr / 100

    // Percentual MASC. e FEM. R$2000

    total_f = qntd_f / (qntd_f + qntd_m)
    total_m = qntd_m / (qntd_f + qntd_m)

    perc_ambos = (total_f + total_m) / 100

    // Saída dos valores

    escreva("A média salárial masculina é R$ ", media_masc, "\n")
    escreva("A média salárial feminima é R$ ", media_fem, "\n\n")

    escreva("Quant. de homens com salário entre R$1000 e R$3000", qntd_mas_1_3, "\n")
    escreva("Quant. de mulheres com salário entre R$1000 e R$3000", qntd_fem_1_3, "\n\n")

    escreva("Percentual entre homens e mulheres R$1000 - R$3000", perc_ambos)

  }
}
