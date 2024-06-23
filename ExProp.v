From InfoMath1 Require Import ProofRules.

Example ex1: forall P Q: Prop, P -> Q -> Q /\ P.
Proof.
    intros P Q.
    Admitted.

Example ex2: forall P Q: Prop, P /\ Q -> Q /\ P.
Proof.
    intros P Q.
    Admitted.

Example ex3: forall P Q R: Prop, (P -> Q) -> (Q -> R) -> (P -> R).
Proof.
    intros P Q R.
    Admitted.

Example ex4: forall P Q: Prop, ~P -> ~(P /\ Q).
Proof.
    intros P Q.
    Admitted.

Example ex5: forall P: Prop, False -> P.
Proof.
    intros P.
    Admitted.

Example ex6: forall P Q, ~P -> ~Q -> ~(P \/ Q).
Proof.
    intros P Q.
    Admitted.


Example distribution_1: forall P Q R: Prop, P /\ (Q \/ R) -> (P /\ Q) \/ (P /\ R).
Proof.
    intros P Q R.
    Admitted.

Example distribution_2: forall P Q R: Prop, (P /\ Q) \/ (P /\ R) -> P /\ (Q \/ R).
Proof.
    intros P Q R.
    Admitted.

Example distribution_3: forall P Q R: Prop, P \/ (Q /\ R) -> (P \/ Q) /\ (P \/ R).
Proof.
    intros P Q R.
    Admitted.

Example distribution_4: forall P Q R: Prop, (P \/ Q) /\ (P \/ R) -> P \/ (Q /\ R).
Proof.
    intros P Q R.
    Admitted.


Example ex_h01: forall P: Prop, False -> P.
Proof.
    intros P.
    Admitted.

Example ex_h02: forall P Q: Prop, P -> P \/ Q.
Proof.
    intros P Q.
    Admitted.

Example ex_h03: forall P Q: Prop, Q -> P \/ Q.
Proof.
    intros P Q.
    Admitted.

Example ex_h04: forall P1 P2 Q: Prop, (P1 -> Q) -> (P2 -> Q) -> P1 \/ P2 -> Q.
Proof.
    intros P1 P2 Q.
    Admitted.

Example ex_h05: forall P Q: Prop, P /\ Q -> P.
Proof.
    intros P Q.
    Admitted.

Example ex_h06: forall P Q: Prop, P /\ Q -> Q.
Proof.
    intros P Q.
    Admitted.

Example ex_h07: forall P Q1 Q2: Prop, (P -> Q1) -> (P -> Q2) -> P -> Q1 /\ Q2.
Proof.
    intros P Q1 Q2.
    Admitted.

Example ex_h08: forall P Q: Prop, P -> Q -> P.
Proof.
    intros P Q.
    Admitted.

Example ex_h09: forall P Q R: Prop, (P -> Q) -> (P -> Q -> R) -> P -> R.
Proof.
    intros P Q R.
    Admitted.

Example ex_h10: forall P: Prop, ~P -> P -> False.
Proof.
    intros P.
    Admitted.

Example ex_h11: forall P: Prop, (P -> False) -> ~P.
Proof.
    intros P.
    Admitted.


Example ex_a01: forall P Q: Prop, (~P -> ~Q) -> (P -> ~Q) -> ~Q.
Proof.
    intros P Q.
    Admitted.

Example ex_a02: forall P Q: Prop, ~~(~~P ->  ~~Q) -> ~~P -> ~~Q.
Proof.
    intros P Q.
    Admitted.

Example ex_a03: forall P Q: Prop, (P -> ~Q) -> ~~P -> ~Q.
Proof.
    intros P Q.
    Admitted.

Example ex_a05: forall P Q: Prop, (~P \/ Q) -> P -> Q.
Proof.
    intros P Q.
    Admitted.

Example ex_a07: forall P: Prop, (P \/ ~P) -> ~~P -> P.
Proof.
    intros P.
    Admitted.


(*
 * The following propositions cannot be proved in the intuitionistic system
     - So RAA rule is nedded.
     - One can use the low of excluded middle or double negation elimination instead of RAA.
 *)

Example double_negation_elimitation: forall P: Prop, ~~P -> P.
Proof.
    intros P.
    Admitted.

Example excluded_middle: forall P: Prop, P \/ ~P.
Proof.
    intros P.
    Admitted.

Example ex9: forall P: Prop, (~P -> P) -> P.
Proof.
    intros P.
    Admitted.

Example peirce_law: forall P Q: Prop, ((P -> Q) -> P) -> P.
Proof.
    intros P Q.
    Admitted.

Example ex_a04: forall P Q: Prop, (~P -> ~Q) -> (~P -> Q) -> P.
Proof.
    intros P Q.
    Admitted.

Example ex_a06: forall P Q: Prop, (P -> Q) -> (~P \/ Q).
Proof.
    intros P Q.
    Admitted.

Example ex_a08: forall P: Prop, (~~P -> P) -> (P \/ ~P).
Proof.
    intros P.
    Admitted.
