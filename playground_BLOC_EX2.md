```Smalltalk
| space blueRectangle redRectangle gridSize squareSize i j circle circleSize glowSize |

gridSize := 10. 
circleSize := 30 @ 30.
squareSize := 50 @ 50. 
glowSize := 30 @ 30.

i := 0.
j := 0.

space := BlSpace new.

1 to: gridSize do: [:i |
    1 to: gridSize do: [:j |
        | square circle glowCircle |

        glowCircle := BlElement new 
            background: (Color yellow alpha: 1);
            geometry: BlCircleGeometry new;
            size: glowSize;
            position: ((squareSize x - glowSize x) / 2) @ ((squareSize y - glowSize y) / 2);
            yourself.

		  circle := BlElement new 
				geometry: BlCircleGeometry new;
				size: circleSize;
				background: (Color yellow alpha: 0.9);
				position:  ((squareSize x - circleSize x) / 2) @ ((squareSize y - circleSize y) / 2);
				yourself.
				
				
        square := BlElement new
            geometry: BlRectangleGeometry new;
            size: squareSize;
            position: (i * squareSize x) @ (j * squareSize y);
            background: (Color random);
			   addChild: glowCircle;
			   addChild: circle;
            yourself.

        space root addChild: square.
    ].
].

space show.
```
