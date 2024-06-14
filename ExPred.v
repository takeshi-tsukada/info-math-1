From InfoMath1 Require Import ProofRules.

Example forall_exists_exchange: forall P : D -> D -> Prop, (exists y:D, forall x:D, P x y) -> forall x:D, exists y:D, P x y.
Proof.
    intros P H.
    ForallI.
    ExistsE (exists y:D, forall x:D, P x y).
    - Ax.
    - ExistsI x0.
      ForallE x.
      Ax.
Qed.


