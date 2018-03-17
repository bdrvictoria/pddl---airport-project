(define (domain aeroport)
 
    (:predicates
        (avion ?a)
        (om ?o)
        (calator ?c)
        (bomba ?o ?b)
        (suspect ?s)
        (terorist ?t)
        (cazier ?o ?c)
        (aresteaza ?z)
        (calatorie ?v)
 
)
    ;; acesta actiune are ca scop declararea fiecarei persoane care circula cu avionul, ca fiind calator
    (:action esteCalator
    :parameters (?persoana ?e)
    :precondition (and (om ?persoana) (avion ?e))
    :effect (calator ?persoana)
    )
    ;;detecta fiecare persoana care are cazier si o numeste suspect
    (:action esteSuspect
    :parameters (?persoana ?areantecedente)
    :precondition (and (om ?persoana) (cazier ?persoana ?areantecedente))
    :effect(suspect ?persoana)
    )
    ;;controlul persoanelor care sunt suspecte si au bombe
    (:action controlPersoana1
    :parameters(?persoana ?inarmat)
    :precondition (and (suspect ?persoana) (bomba ?persoana ?inarmat))
    :effect(terorist ?persoana)
    )
   ;;controlul persoanelor care nu sunt suspecte
    (:action controlPersoana2
    :parameters(?persoana)
    :precondition (not(suspect ?persoana))
    :effect(calatorie ?persoana)
    )
        ;;controlul persoanelor care sunt suspecte, dar nu au bombe
    (:action controlPersoana3
    :parameters(?persoana ?inarmat)
    :precondition (and (suspect ?persoana) (not(bomba ?persoana ?inarmat)))
    :effect(calatorie ?persoana)
    )
    ;;aresteaza teroristii (persoane suspecte si cu bombe asupra lor)
    (:action aresteazaTerorist
    :parameters(?persoana)
    :precondition(terorist ?persoana)
    :effect(aresteaza ?persoana)
    )
    )