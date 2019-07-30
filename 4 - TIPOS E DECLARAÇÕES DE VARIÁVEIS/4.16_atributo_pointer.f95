program ponteiro
        type nodo_arvore_binaria
                integer :: valor
                type (nodo_arvore_binaria), &
                        pointer :: nodo_filho_esquerda, &
                                nodo_filho_direita
        end type nodo_arvore_binaria
        type (nodo_arvore_binaria) :: raiz
        pointer raiz
        ! Nesse exemplo, utiliza-se um tipo definido pelo programador, o
        ! qual representa nodos de uma árvore binária; cada nodo tem,
        ! além do valor armazenado nele, dois ponteiros para os seus
        ! nodos filhos. Também é declarado um ponteiro, de mesmo tipo,
        ! que será o nodo raiz da arvore. Note, também, as duas formas
        ! de declaração usando esse atributo.

end program ponteiro
