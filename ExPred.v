From InfoMath1 Require Import ProofRules.

Example ex7: forall R : D -> D -> Prop, (exists y:D, forall x:D, R x y) -> forall x:D, exists y:D, R x y.
Proof.
  intros R.
  Admitted.

Example ex8: forall R : D -> D -> Prop, (forall x y:D, R x y) -> forall z:D, R z z.
Proof.
  intros R.
  Admitted.

Example forall_three: forall R : D -> D -> D -> Prop, (forall x y z: D, R x y z) -> forall z:D, R z z z.
Proof.
  intros R.
  Admitted.

Example forall1: forall R : D -> Prop, forall Q: Prop, ((forall x:D, R x) /\ Q) -> forall x:D, (R x /\ Q).
Proof.
  intros R Q.
  Admitted.

Example forall2: forall R : D -> Prop, forall Q: Prop, (forall x:D, (R x /\ Q)) -> (forall x:D, R x) /\ Q.
Proof.
  Admitted.

Example forall3: forall R : D -> Prop, forall Q: Prop, ((forall x:D, R x) \/ Q) -> forall x:D, (R x \/ Q).
Proof.
  intros R Q.
  Admitted.

Example de_morgan1: forall R : D -> Prop, (forall x:D, ~(R x)) -> ~(exists x:D, R x).
  intros R.
  Admitted.

Example de_morgan2: forall R : D -> Prop, (exists x:D, ~(R x)) -> ~(forall x:D, R x).
  intros R.
  Admitted.

Example de_morgan3: forall R : D -> Prop, ~(exists x:D, R x) -> forall x:D, ~(R x).
Proof.
  intros R.
  Admitted.

Example ex_b01: forall R T : D -> Prop, (forall x:D, R x -> T x) -> (forall x:D, R x) -> (forall x:D, T x).
Proof.
  intros R T.
  Admitted.

Example ex_b02: forall R T : D -> Prop, (forall x:D, R x -> T x) -> (exists x:D, R x) -> (exists x:D, T x).
Proof.
  intros R T.
  Admitted.

Example ex_b03: forall R : D -> Prop, (forall x:D, R x \/ ~ (R x)) -> ~~(forall x:D, R x) -> forall x:D, R x.
Proof.
  intros R.
  Admitted.

Example ex_b04: forall R : D -> Prop, ~~(forall x:D, R x) -> forall x:D, ~~(R x).
Proof.
  intros R.
  Admitted.


(*
 * The following propositions cannot be proved in the intuitionistic system
     - So RAA rule is nedded.
     - One can use the low of excluded middle or double negation elimination instead of RAA.
 *)

Example ex_c01: forall R : D -> Prop, ~~(forall x:D, (R x) \/ ~(R x)).
Proof.
  intros R.
  Admitted.

Example ex_c02: forall R : D -> Prop, (forall x:D, ~~(R x)) -> ~~(forall x:D, R x).
Proof.
  intros R.
  Admitted.

Example de_morgan4: forall R : D -> Prop, ~(forall x:D, R x) -> exists x:D, ~(R x).
  intros R.
  Admitted.

Example forall4: forall R : D -> Prop, forall Q: Prop, (forall x:D, (R x \/ Q)) -> ((forall x:D, R x) \/ Q).
Proof.
  intros R Q.
  Admitted.
