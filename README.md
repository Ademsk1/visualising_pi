# visualising_pi
Visualise the irrationality of Pi through this Processing software.

The animation maps out the following equation:
$\z(\theta) = e^{i\theta} + e^{i\pi\theta}$

As $\theta$ is irrational, the line will never re-iterate over past lines, nor will it repeat. The image is drawn to be as efficient as possible, by utilising the PGraphics layering. By storing the arc on a PGraphics object, while redrawing the canvas for the arms, we can significantly improve the process.



 I originally did it the other way - with the arms as the PGraphics object being cleared everytime and not resetting the canvas background - but this never worked. 
