From InfoMath1 Require Import ProofRules.

Example ex1: forall P Q: Prop, P -> Q -> Q /\ P.
Proof.
    intros P Q.
    ImplI.
    ImplI.
    ConjI.
    Ax.
    Ax.
Qed.

Example ex2: forall P Q: Prop, P /\ Q -> Q /\ P.
Proof.
    intros P Q.
    ImplI.
    ConjI.
    ConjEL (P /\ Q).
    Ax.
    ConjER (P /\ Q).
    Ax.
Qed.

Example ex3: forall P Q R: Prop, (P -> Q) -> (Q -> R) -> (P -> R).
Proof.
    intros P Q R.
    ImplI.
    ImplI.
    ImplI.
    ImplE (Q -> R).
    Ax.
    ImplE (P -> Q).
    Ax.
    Ax.
Qed.

Example ex4: forall P Q: Prop, ~P -> ~(P /\ Q).
Proof.
    intros P Q.
    ImplI.
    NegI.
    NegE (~P).
    Ax.
    ConjE (P /\ Q).
    Ax.
Qed.

Example ex5: forall P: Prop, False -> P.
Proof.
    intros P.
    ImplI.
    BotE.
    Ax.
Qed.

Example ex6: forall P Q, ~P -> ~Q -> ~(P \/ Q).
Proof.
    intros P Q.
    ImplI.
    ImplI.
    NegI.
    DisjE (P \/ Q).
    - Ax.
    - NegE (~P).
      + Ax.
      + Ax.
    - NegE (~Q).
      + Ax.
      + Ax.
Qed.

Example double_negation_elimitation: forall P: Prop, ~~P -> P.
Proof.
    intros P.
    ImplI.
    RAA.
    NegE (~~P).
    - Ax.
    - Ax.
Qed.

Example excluded_middle: forall P: Prop, P \/ ~P.
Proof.
    intros P.
    RAA.
    NegE (~(P \/ ~P)).
    - Ax.
    - DisjIR.
      NegI.
      NegE (~(P \/ ~P)).
      + Ax.
      + DisjIL.
        Ax.
Qed.


Example ex7: forall R : D -> D -> Prop, (exists y:D, forall x:D, R x y) -> forall x:D, exists y:D, R x y.
Proof.
    intros R H.
    ForallI.
    ExistsE (exists y:D, forall x:D, R x y).
    - Ax.
    - ExistsI x0.
      ForallE x.
      Ax.
Qed.

Example ex8: forall R : D -> D -> Prop, (forall x y:D, R x y) -> forall z:D, R z z.
Proof.
  intros R.
  ImplI.
  ForallI_with z.
  ForallE_with z (forall y:D, R z y).
  ForallE z.
  Ax.
Qed.


