Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Archer >> attackedBy: anUnit [

	^ anUnit attackedByArcher: self
]

{ #category : 'initialization' }
Archer >> initialize [

	super initialize.
	attack := 20.
	defense := 5.
]
