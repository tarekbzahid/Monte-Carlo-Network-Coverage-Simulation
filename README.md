# Monte Carlo Network Radiated Power Simulation

This code simulates the percentage of radiated power from four base stations using the Monte Carlo method. The code generates random points within a square area and counts the number of points that fall inside each base station's circular range. The percentage of radiated power is estimated by dividing the number of points inside the circular range by the total number of generated points.

Usage

To run the simulation, simply run the script. The simulation will run and display the percentage of radiated power for each iteration.

Usage

To run the simulation, simply run the script in MATLAB. The simulation will run and display the percentage of radiated power for each iteration.

You can change the following variables to customize the simulation:

    x1: x-coordinate of the first corner of the square area
    x2: x-coordinate of the second corner of the square area
    y1: y-coordinate of the first corner of the square area
    y2: y-coordinate of the second corner of the square area
    x: x-coordinates of the corners of the square area
    y: y-coordinates of the corners of the square area
    xrand: array of randomly generated x-coordinates for the points
    yrand: array of randomly generated y-coordinates for the points
    count: counter for the number of points that fall inside the circular range of each base station
    A_sqr: area of the square
    A_rad: area of the circular range of each base station
    i: increment for the x and y coordinates of each base station
    dsqr: distance squared between a randomly generated point and the center of each base station

You can also change the following simulation variables:

    iterations: number of iterations to run the simulation (default: 50)
    pause_time: amount of time to pause between iterations in seconds (default: 0.2)

To change these variables, simply modify their values in the script before running it.
Functions

    circle2: draws a circle with center (x,y) and radius r
