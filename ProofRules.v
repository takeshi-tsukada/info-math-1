Lemma conj_introduction_rule: forall P Q: Prop, P -> Q -> P /\ Q.
Proof.
    intros P Q HP HQ.
    split.
    exact HP.
    exact HQ.
Qed.

Lemma conj_elimination_rule1: forall P Q: Prop, P /\ Q -> P.
Proof.
    intros P Q H.
    apply H.
Qed.

Lemma conj_elimination_rule2: forall P Q: Prop, P /\ Q -> Q.
Proof.
    intros P Q H.
    apply H.
Qed.

Lemma impl_elimination_rule: forall P Q: Prop, (P -> Q) -> P -> Q.
Proof.
    intros P Q H H'.
    apply H.
    apply H'.
Qed.

Lemma negation_introduction_rule: forall P: Prop, (P -> False) -> ~P.
Proof.
    intros P HnP HP.
    apply HnP.
    apply HP.
Qed.

Lemma negation_elimination_rule: forall P: Prop, ~P -> P -> False.
Proof.
    intros P HnP HP.
    apply HnP.
    apply HP.
Qed.

Lemma bottom_elimination_rule: forall P: Prop, False -> P.
Proof.
    intros P HFalse.
    destruct HFalse.
Qed.

Lemma top_introduction_rule: True.
Proof.
    trivial.
Qed.

Lemma disj_elimination_rule: forall P Q R: Prop, P \/ Q -> (P -> R) -> (Q -> R) -> R.
Proof.
    intros P Q R H1 H2 H3.
    destruct H1.
    - apply H2.
      assumption.
    - apply H3.
      assumption.
Qed.

Ltac Ax := assumption.
Ltac ConjI := apply conj_introduction_rule.
Ltac ConjE t := match t with ?p /\ ?q => match goal with |- p => apply conj_elimination_rule1 with (Q := q) | |- q => apply conj_elimination_rule2 with (P := p) end end.
Ltac ConjER t := match t with ?p /\ ?q => match goal with |- p => apply conj_elimination_rule1 with (Q := q) end end.
Ltac ConjEL t := match t with ?p /\ ?q => match goal with |- q => apply conj_elimination_rule2 with (P := p) end end.
Ltac ImplI := intro.
Ltac ImplE t :=  match t with (?s1 -> ?s2) => apply impl_elimination_rule with (P := s1) (Q := s2) end.
Ltac NegI := apply negation_introduction_rule; intro.
Ltac NegE t := match t with ~?p => apply negation_elimination_rule with (P := p) end.
Ltac BotE := apply bottom_elimination_rule.
Ltac TopI := apply top_introduction_rule.
Ltac DisjIL := left.
Ltac DisjIR := right.
Ltac DisjE t := match t with ?p \/ ?q => apply disj_elimination_rule with (P := p) (Q := q); [> idtac | intro | intro] end.


Parameter D : Set.

Ltac ForallI := match goal with |- forall _:D, _ => intro end.
Ltac ForallI_with x := match goal with |- forall _:D, _ => intro x end.
Ltac ForallE t := generalize t.
Ltac ForallE_with t p := match p with forall _:D, _ => let h := fresh in assert p as h; [> idtac | apply h; fail] end.

Ltac ExistsI t := exists t.
Ltac ExistsE t := match t with exists _:D,_ => let h := fresh in assert t as h; [> idtac | elim h; clear h; intro; intro] end.
Ltac ExistsE_with t x := match t with exists _:D,_ => let h := fresh in assert t as h; [> idtac | elim h; clear h; intro x; intro] end.


Axiom double_negation_elimination: forall P: Prop, ~~P -> P.
Axiom x0 : D.

Ltac RAA := apply double_negation_elimination; intro.


