Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Pikeman >> attackedBy: anUnit [

	^ anUnit attackedByPikeman: self
]

{ #category : 'initializing' }
Pikeman >> initialize [

	super initialize.
	attack := 5.
	defense := 20
]
