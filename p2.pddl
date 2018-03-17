(define (problem aeroport)
    (:domain aeroport)
    (:objects o1 o2 o3 o4 o5 av1 av2 bmb1 c1 )
    (:init (om o1) (om o2) (om o3) (om o4) (om o5) ;;5 oameni
            (avion av1) (avion av2) ;;2 avioane
            (bomba o1 bmb1) ;; omul1 are bomba
            (cazier o1 c1) ;;omul1 are cazier
            )
    (:goal (and(aresteaza o1)
            (calatorie o2)
            (calatorie o3)
            (calatorie o4)
            (calatorie o5))
    )
    )