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

Example double_negation_elimitation: forall P: Prop, ~~P -> P.
Proof.
    intros P.
    Admitted.

Example excluded_middle: forall P: Prop, P \/ ~P.
Proof.
    intros P.
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

Example peirce_law: forall P Q: Prop, ((P -> Q) -> P) -> P.
Proof.
    intros P Q.
    Admitted.
