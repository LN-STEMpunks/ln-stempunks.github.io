---
layout: post
title: Autonomous Field Mapping
category: articles
---


After attending the 2018 FIRST Kickoff, the programming team decided to make diagrams to map the autonomous paths and determine the best path to take.

Alt-Key for Diagrams:
------

Pc = Power cube
B = Black
G = Green
Pi = Pink
Pu = Purple
O = Orange

**Red:**
* Displays position on the alliance station as well as which side of switch and scale are possessed

**Black:**
* Switch only - 1 pc
* Points:
      Auto run: 5pts  
      <u>Ownership (Switch): 2 + 2/sec</u>  
      Total:              7 + 2/sec

**Green:**
* Scale only - 1 pc
* Points:
      Auto run: 5pts  
      <u>Ownership (Scale): 2 + 2/sec</u>  
      Total:             7 + 2/sec

**Pink:**
* Scale to Switch (picking up a pc from platform) - 2 pc
* Points:
      Auto run: 5 pts  
      Ownership (Scale): 2 + 2/sec  
      <u>Ownership (Switch): 2 + 2/sec</u>  
      Total:            9 + 4/sec

**Purple:**
* Switch to Scale (picking up a pc from platform) - 2 pc
* Points:
      Auto run: 5 pts  
      Ownership (Switch): 2 + 2/sec  
      <u>Ownership (Scale): 2 + 2/sec</u>  
      Total:            9 + 4/sec

**Orange:**
* Switch to Scale (picking up a pc from pc zone) - 2 pc
* Points:
      Auto run: 5 pts  
      Ownership (Switch): 2 + 2/sec  
      <u>Ownership (Scale): 2 + 2/sec</u>  
      Total:            9 + 4/sec

Start  | Switch | Scale
---  | --- | --- 
R | R | R
R | R | L
R | L | L
R | L | R
M | R | R
M | R | L
M | L | L
M | L | R

*Left start position will be reverse as right



![Right, Right, Right](/assets/images/Right, Right, Right.png =512x384)

This diagram shows the paths available if the team starts on the right side of the alliance station and has the right side of the switch and the scale.

![Right, Right, Left](/assets/images/Right, Right, Left.png =512x384)

This diagram shows the paths available if the team starts on the right side of the alliance station and has the right side of the switch and the left side of the scale.

![Right, Left, Right](/assets/images/Right, Left, Right.png =512x384)

This diagram shows the paths available if the team starts on the right side of the alliance station and has the left side of the switch and the right side of the scale.

![Right, Left, Left](/assets/images/Right, Left, Left.png =512x384)

This diagram shows the paths available if the team starts on the right side of the alliance station and has the left side of the switch and the scale.

![Middle, Right, Right](/assets/images/Middle, Right, Right.png =512x384)

This diagram shows the paths available if the team starts in the middle of the alliance station and has the right side of the switch and the scale.

![Middle, Right, Left](/assets/images/Middle, Right, Left.png =512x384)

This diagram shows the paths available if the team starts in the middle of the alliance station and has the right side of the switch and the left side of the scale.

![Middle, Left, Right](/assets/images/Middle, Left, Right.png =512x384)

This diagram shows the paths available if the team starts in the middle of the alliance station and has the left side of the switch and the right side of the scale.

![Middle, Left, Left](/assets/images/Middle, Left, Left.png =512x384)

This diagram shows the paths available if the team starts in the middle of the alliance station and has the left side of the switch and the scale.




Points
======
---    |--- |--- |---|---|---
**RRR** | Pu | Pi | O | B | G
**RRL** | Pu | O | Pi | B | G
**RLL** | Pu | Pi | O | B | G
**RLR** | Pu | Pi | O | G | B
**MRR** | Pu | O | Pi | B | G
**MRL** | Pu | Pi | O | B | G
**MLL** | Pu | Pi | O | B | G
**MLR** | Pu | O | Pi | B | G

Simplicity
==========
---    |---|---|--- |--- |---
**RRR** | B | G | Pu | Pi | O
**RRL** | B | G | Pu | O | Pi
**RLL** | B | G | Pu | Pi | O
**RLR** | G | B | Pu | Pi | O
**MRR** | B | G | Pu | O | Pi
**MRL** | B | G | Pu | Pi | O
**MLL** | B | G | Pu | Pi | O
**MLR** | B | G | Pu | O | Pi

We look forward to using these diagrams to work with our game strategy team and determine what autonomous programs will be beneficial.

