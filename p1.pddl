(define (problem aeroport)
    (:domain aeroport)
    (:objects o1 o2 av1 av2 bmb1 c1 ) 
    (:init (om o1) (om o2) ;;2 oameni
            (avion av1) (avion av2) ;;2 avioane
            (bomba o1 bmb1) ;;omul 1 are bomba
            (cazier o1 c1) ;;omul 1 are cazier
            )
    (:goal (and(aresteaza o1) (calatorie o2))
    )
    )