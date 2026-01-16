# Monte Carlo Network Radiated Power Simulation

This code simulates the percentage of radiated power from four base stations using the Monte Carlo method. The code generates random points within a square area and counts the number of points that fall inside each base station's circular range. The percentage of radiated power is estimated by dividing the number of points inside the circular range by the total number of generated points.

## Visual Simulation

The simulation creates an animated visualization showing four circular base stations (radius = 0.5) moving from the corners of a 1x1 square toward the center:

```
Initial State (i=0):          Mid State (i=0.25):        Final State (i=0.5):
┌───────────┐                 ┌───────────┐               ┌───────────┐
│●         ●│                 │           │               │           │
│           │                 │   ●   ●   │               │           │
│           │    ───────►     │           │  ───────►     │     ●     │
│           │                 │   ●   ●   │               │           │
│●         ●│                 │           │               │           │
└───────────┘                 └───────────┘               └───────────┘
4 circles at corners          Circles converging          All circles overlap
                                                          at center (0.5, 0.5)
```

### How It Works

1. **Square Area**: 1x1 unit square serving as the coverage area
2. **Base Stations**: 4 circular coverage zones, each with radius 0.5
3. **Animation**: Circles move from corners `(0,0), (0,1), (1,0), (1,1)` toward center
4. **Monte Carlo Method**: 999,999 random points are generated to estimate coverage percentage
5. **Coverage Calculation**: Points falling within any circle are counted and used to calculate the percentage of radiated power

The visualization updates in real-time as the base stations move, showing the changing coverage area and percentage.

## Usage

To run the simulation, simply execute the MATLAB script `circleinasquare.m`. The simulation will run and display the percentage of radiated power for each iteration.

### Customization Variables

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

### Simulation Parameters

You can also change the following simulation parameters:

- **Loop range**: `for i = 0:0.01:0.5` - Controls the animation steps (default: 0 to 0.5 in 0.01 increments)
- **Pause time**: `pause(.2)` - Time between animation frames in seconds (default: 0.2)
- **Random points**: `999999` - Number of Monte Carlo points per iteration

To change these variables, simply modify their values in the script before running it.

### Configuration Options

**For 3 Base Stations**: Comment out lines 55-64 in the code (marked with `% % % for 3 basestations`)

## Functions

- **`circle2(x,y,r)`**: Draws a circle with center `(x,y)` and radius `r`
