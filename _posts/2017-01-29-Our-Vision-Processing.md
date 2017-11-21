---
layout: post
title: Our Vision Processing
category: articles
---

For our vision processing this year, we are using a Raspberry PI model 3B, running raspbian.

## Getting Started

[https://github.com/LN-STEMpunks/WOPR-JR-Vision](https://github.com/lnstempunks/WOPR-JR-Vision)

All you need is a raspberry pi (any model) with any debian-based OS (and possibly redhat/fedora see install.sh) and then clone the repo:

`git clone https://github.com/LN-STEMpunks/WOPR-JR-Vision`

Go into that directory:

`cd WOPR-JR-Vision`

Now, install the needed packages:

`./install.sh`

You should be ready to go!

For our default config, run:

`python src/grip.py --show`

We use `lab.conf` to define specific ranges of colors which represents the tape when lit up.

Then, we filter contours we find using a fitness function (roughly like this), which is the angle at which the contours are on a line plus the ratio between the areas of the contours, plus the difference in area of the contours, plus the distance from the center Y line.

The two points with the lowest score from this fitness function is assumed to be the contours that make up the gear peg.

This means the ones which minimize the functions are the ones that are:

  * Roughly in a flat line across the picture
  * Closest in area
  * Closest to the middle horizontal line

Then, we take their centers, average them, and predict the spring to be there (it is in the exact middle). From there, we light up some [https://github.com/lnstempunks/WOPR-JR-Vision/blob/master/leds/main.ino](LEDs) to show if we are on target.

Through an analogous process, we will find the goal and publish it.

