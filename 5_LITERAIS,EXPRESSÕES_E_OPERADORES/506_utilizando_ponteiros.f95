program ponteiros
        implicit none
        integer, pointer :: p, q
        integer, target :: i = -10
        
        nullify(q)
        q => i

        if(associated(q,target=i)) then
                print *,'q aponta para i, q=',q
        else
                print *,'q não aponta para i'
        end if

        nullify(p)
        allocate(p)
        p = 5
        print *,'p =',p

        p = q
        print *,'p =',p
     
        ! O programa declara duas variáveis de tipo INTEGER, P e Q, com o atributo POINTER; além de uma variável do mesmo tipo, I,
        ! declarada com o atributo TARGET (o que indica que ela poderá ser 'apontada' por uma variável do tipo INTEGER e com o
        ! atributo POINTER).A variável I é inicializada com o valor -10. Após,o ponteiro Q é anulado, através do comando NULLIFY(Q)
        ! e, na sequência, ele passa a apontar para I, com o comando Q => I.
        ! Em seguida, é feito um teste para verificar se o ponteiro Q aponta para a variável I, através do uso do intrínseco
        ! ASSOCIATED(Q,TARGET=I); caso seja verdadeiro(e, obviamente, o é), é escrito o texto Q APONTA PARA I, Q =. Observe que
        ! foi utilizado o próprio ponteiro Q no comando PRINT. Como Q aponta para I, o valor a ser impresso é aquele armazenado em
        ! I, qual seja, -10.
        ! Os comandos seguintes, demonstram a característica dual de um ponteiro. Observe que, após P ser anulado, ele é utilizado
        ! como argumento do comando ALLOCATE, efetivamente alocando um espaço de memória com 32 bits(já que variáveis do tipo
        ! INTEGER tem tamanho default de 4 bytes, isto é, KIND=4).Uma vez feito isso, pode ser atribuído um valor a P, através do
        ! comando P=5; se o comando ALLOCATE(P) não estivesse sido executado (ou não estivesse presente), essa atribuição não
        ! poderia ser feita (ocorrendo um erro de execução do tipo 'acesso inválido à memória'.
        ! Após a impressão do valor de P,esse ponteiro passa a apontar para outra posição de memória, através do comando P => Q.São
        ! dois os efeitos desse comando:
        !       1. o valor anterior(5) armazenado em P não pode mais ser recuperado;
        !       2. como Q aponta para I, então também o ponteiro P aponta para I.
        ! Assim, o valor impresso de P, ao final, é -10. que corresponde ao valor de I.Abaixo são mostrados os valores impressos
        ! pelo programa.
        !       Q aponta para I,
        !       Q = -10
        !       P = 5
        !       P = -10



end program ponteiros
