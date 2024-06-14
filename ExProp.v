From InfoMath1 Require Import ProofRules.

Lemma an: forall P Q: Prop, P -> Q -> P.
Proof.
    intros P Q.
    ImplI.
    ImplI.
    Ax.
Qed.
