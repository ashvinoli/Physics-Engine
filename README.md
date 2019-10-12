# Physics-Engine
A tiny engine to see how charges and mass points i.e electric and gravitational forces act on a system of point masses.
Pendulum in this program is not an small angle approximation , instead the actual differential equation involving theta is used. So you can provide angle as large as 170 degrees and see things in action. SHM module was written purely for fun. 
## Usage
* For Engine
Open up processing and tweak the parameters IN THE CODE like mass, charge, initial position, velocity, number of particles to see how the system would behave. You have to tweak params in "masses" class and change number of particles in the "Engine" file.

* For SHM,
the process is similar to that of engine, now it is even easier. You just have to specify the box's initial position and length and width.

* For Pendulum do as engine, the only difference is providing the hinge, length of pendulum and initial angle. To use simplified compound pendulum please clone "cp" branch.

