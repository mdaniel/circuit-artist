return {
  name="SR Latch",
  text=[[

The objective of this section is to show one way to store 1 bit of memory.

It's generally not possible to store memory without using cycles, ie, wires which have outputs interlinked with some inputs somehow. We generally want to avoid arbitrarily using cycles in circuits because they can make the circuit complicated and can introduce oscillation errors, but bit storage is an exception.

That being, the first important configuration we need to know is the `SR latch`: it's a very simple interlinked configuration of gates that is stable and allows memory to be stored somehow, in the sense that it can "remember" its previous configuration and you can change it using the right inputs:
!img:imgs/circuitopedia/mem1.png
The `S` and `R` inputs stand for `set` and `reset`: you can see that when S=1, we have the value of Q updated by the value of R, and when S=0, R=1, the value of Q is "reseted" to 0. When inputs are 0,0 the latch doesnt do anything, it just maintains the previous set result, thus working as a 1-bit storage memory.
  ]]
}
