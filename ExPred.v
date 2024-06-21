From InfoMath1 Require Import ProofRules.

Example ex7: forall P : D -> D -> Prop, (exists y:D, forall x:D, P x y) -> forall x:D, exists y:D, P x y.
Proof.
    intros P H.
    ForallI.
    ExistsE (exists y:D, forall x:D, P x y).
    - Ax.
    - ExistsI x0.
      ForallE x.
      Ax.
Qed.

Example ex8: forall P : D -> D -> Prop, (forall x y:D, P x y) -> forall z:D, P z z.
Proof.
  intros P.
  ImplI.
  ForallI_with z.
  ForallE_with z (forall y:D, P z y).
  ForallE z.
  Ax.
Qed.

Example forall_three: forall P : D -> D -> D -> Prop, (forall x y z: D, P x y z) -> forall z:D, P z z z.
Proof.
  intros P.
  Admitted.


Example forall1: forall P : D -> Prop, forall Q: Prop, ((forall x:D, P x) /\ Q) -> forall x:D, (P x /\ Q).
Proof.
  intros P Q.
  Admitted.

Example forall2: forall P : D -> Prop, forall Q: Prop, (forall x:D, (P x /\ Q)) -> (forall x:D, P x) /\ Q.
Proof.
  Admitted.

Example forall3: forall P : D -> Prop, forall Q: Prop, ((forall x:D, P x) \/ Q) -> forall x:D, (P x \/ Q).
Proof.
  intros P Q.
  
