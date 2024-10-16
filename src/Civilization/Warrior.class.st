Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'as yet unclassified' }
Warrior >> attackedBy: anUnit [
	^ anUnit attackedByWarrior: self
]

{ #category : 'initialization' }
Warrior >> initialize [

	super initialize.
	attack := 10.
	defense := 10.
	
]
