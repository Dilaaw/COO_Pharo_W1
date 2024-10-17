```Smalltalk
| space blueRectangle redRectangle gridSize squareSize i j circle circleSize |

gridSize := 10. 
circleSize := 30 @ 30.
squareSize := 50 @ 50. 

i := 0.
j := 0.

space := BlSpace new.

1 to: gridSize do: [:i |
    1 to: gridSize do: [:j |
        | square circle |

		  circle := BlElement new 
				geometry: BlCircleGeometry new;
				size: circleSize;
				background: Color lightYellow ;
				position:  ((squareSize x - circleSize x) / 2) @ ((squareSize y - circleSize y) / 2);
				yourself.
				
				
        square := BlElement new
            geometry: BlRectangleGeometry new;
            size: squareSize;
            position: (i * squareSize x) @ (j * squareSize y);
            background: (Color random);
				addChild: circle;
            yourself.

        space root addChild: square.
    ].
].

space show.
```
