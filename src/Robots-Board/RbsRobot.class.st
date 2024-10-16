Class {
	#name : 'RbsRobot',
	#superclass : 'RbsAbstractRobot',
	#instVars : [
		'direction'
	],
	#category : 'Robots-Board',
	#package : 'Robots-Board'
}

{ #category : 'as yet unclassified' }
RbsRobot >> computeNewPosition: anInteger [

    | newX newY |
    newX := self x.
    newY := self y.
    direction = #east
        ifTrue: [ newX := newX + anInteger ]
        ifFalse: [
            direction = #west
                ifTrue: [ newX := newX - anInteger ]
                ifFalse: [
                    direction = #north
                        ifTrue: [ newY := newY + anInteger ]
                        ifFalse: [ newY := newY - anInteger ] ] ].
    ^ newX @ newY
]

{ #category : 'accessing' }
RbsRobot >> direction [
	^ direction
]

{ #category : 'accessing' }
RbsRobot >> direction: aNewDirection [
	direction:= aNewDirection 
]

{ #category : 'initialize' }
RbsRobot >> initialize [ 
	super initialize .
	direction := #east
]

{ #category : 'accessing' }
RbsRobot >> move: anInteger [
| newPosition |
newPosition := self computeNewPosition: anInteger.
self previousTile position: newPosition.
previousTile := self board atPosition: newPosition.
self position: newPosition.
]
