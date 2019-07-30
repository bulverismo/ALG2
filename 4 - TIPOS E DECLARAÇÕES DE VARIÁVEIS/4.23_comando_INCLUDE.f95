program cmd_include
        include '4.23_tipo.f95'
        real(tipo) :: PI
        PI = ACOS(-1.0_TIPO)
        
        print *,PI

        ! o programa, ao ser compilado, irá armazenar na variável PI o valor de pi em uma precisão simples, já que o argumento ao
        ! intrínsico KIND é uma constante de tal precisão. Se, posteriormente desejássemos obter tal valor em precisão dupla,
        ! bastaria editar o arquivo 4.23_tipo.f95, alterar a constante 1.0 para 1.0D0, salvar o arquivo e recompilar o arquivo
        ! 4.23_comando_INCLUDE.f95.
        ! Note que o mesmo efeito poderia ser obtido, de maneira mais eficiente, armazenando a constante TIPO num módulo, e fazendo
        ! este programa usar aquele módulo


end program cmd_include
