Example conj: forall P Q: Prop, P -> Q -> P /\ Q.
Proof.
    intros P Q PH QH.
    split.
    exact PH.
    exact QH.
Qed.

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

Ltac Ax := assumption.
Ltac ConjI := apply conj_introduction_rule.
Ltac ConjE t := match t with ?p /\ ?q => match goal with |- p => apply conj_elimination_rule1 with (Q := q) | |- q => apply conj_elimination_rule2 with (P := p) end end.
Ltac ConjER t := match t with ?p /\ ?q => match goal with |- p => apply conj_elimination_rule1 with (Q := q) end end.
Ltac ConjEL t := match t with ?p /\ ?q => match goal with |- q => apply conj_elimination_rule2 with (P := p) end end.
Ltac ImplI := intro.
Ltac ImplE t :=  match t with (?s1 -> ?s2) => apply impl_elimination_rule with (P := s1) (Q := s2) end.
Ltac NegI := apply negation_introduction_rule; intro.
Ltac NegE t := apply negation_elimination_rule with (P := t).
Ltac BotE := apply bottom_elimination_rule.
Ltac TopI := apply top_introduction_rule.

Example a: forall P Q: Prop, P -> Q -> Q /\ P.
Proof.
    intros P Q.
    ImplI.
    ImplI.
    ConjI.
    Ax.
    Ax.
Qed.

Example b: forall P Q: Prop, P /\ Q -> Q /\ P.
Proof.
    intros P Q.
    ImplI.
    ConjI.
    ConjEL (P /\ Q).
    Ax.
    ConjER (P /\ Q).
    Ax.
Qed.

Example c: forall P Q R: Prop, (P -> Q) -> (Q -> R) -> (P -> R).
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

Example d: forall P Q: Prop, ~P -> ~(P /\ Q).
Proof.
    intros P Q.
    ImplI.
    NegI.
    NegE P.
    Ax.
    ConjE (P /\ Q).
    Ax.
Qed.

Example e: forall P: Prop, False -> P.
Proof.
    intros P.
    ImplI.
    BotE.
    Ax.
Qed.

