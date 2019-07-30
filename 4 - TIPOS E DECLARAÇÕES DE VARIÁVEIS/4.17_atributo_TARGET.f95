        type (nodo_arvore_binaria), &
                target :: p
        
        type (nodo_arvore_binaria) :: q
        target q

        type (nodo_arvore_binaria), &
                pointer :: raiz

        ! Com essas declarações, é possivel que o apontador RAIZ aponte
        ! para qualquer uma das variáveis P e Q
