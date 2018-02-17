---
layout: post
title: Vision Processing Future
category: articles
---



Alright, so I've (Cade) been thinking about advanced vision lately, and I think our most efficient path forward is actually python-based. 

One of our team members (Logan) suggested we might look at C++ for performance, however, I think for VPL, the best choice forward is python.

Here's a breakdown of C++/Python:

C++ (pros):
  * More efficient (less overhead, but this is actually probably only like 1-4%, so not that bad)
  * Easier to manipulate pixel data directly (like iterating over points, etc is MUCH faster than python)
  * Can link to any other C/C++ library directly

C++ (cons):
  * You have to recompile each time you want to run (which takes some time in C++)
  * Again, it is compiled, so distributing binaries could be difficult (think about dependencies)
  * Code is much more verbose, so lots of lines, and more room for bugs
  * Insanely difficult to do any sort of multithreaded work


Python (pros):
  * Fast prototyping (you can write a VPL in 15 lines, and don't need to compile it)
  * You can use numpy functions, which can be faster than C++ naive loops (numpy may use multithreading, etc to speed it up)
  * Easily import other python libraries

Python (cons):
  * Multithreaded work is not fully parallelized (due to python GIL)
  * Directly iterating over pixels is difficult (so we are limited to what functions we can use in python)


For the last problem with python, pixel iteration, however, I think I have a solution: OpenCL.

If you don't know what OpenCL is, here's an example file I've written: https://github.com/ChemicalDevelopment/fractalrender/blob/master/kernel.cl

Essentially, OpenCL is a way for us to run code on the GPU. OpenCV utilizes this through `cv2.UMat(image)` to get a GPU-allocated area. All the standard functions work with the GPU.

We can also write our own code in OpenCL in python, using pyopencl, another project.


And, yes, OpenCL does work on the Raspberry PI's:

https://github.com/doe300/VC4CL (install instructions: https://github.com/doe300/VC4CL/wiki/How-to-get). 


This allows us to write OpenCL code that runs on the GPU for raspberry PI and other machines

