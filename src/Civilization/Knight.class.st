Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Knight >> attackedBy: anUnit [

	^ anUnit attackedByKnight: self
]

{ #category : 'initializing' }
Knight >> initialize [

	super initialize.
	attack := 20.
	defense := 5
]
