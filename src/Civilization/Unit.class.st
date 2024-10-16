Class {
	#name : 'Unit',
	#superclass : 'Object',
	#instVars : [
		'attack',
		'defense',
		'health',
		'experienceLevel',
		'defendingModifier',
		'attackingModifier',
		'dti'
	],
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'accessing' }
Unit >> attack [

	^ defense * (0.5 * experienceLevel + 0.5) * defendingModifier
	  + dti
]

{ #category : 'dispatch' }
Unit >> attackAnUnit: anUnit [

	^ anUnit attackedBy: self.
]

{ #category : 'as yet unclassified' }
Unit >> attackedByArcher: anArcher [

	health := health - self defense.
	anArcher health: anArcher health - anArcher attack
]

{ #category : 'as yet unclassified' }
Unit >> attackedByKnight: aKnight [

	health := health - self defense.
	aKnight health: aKnight health - aKnight attack
]

{ #category : 'as yet unclassified' }
Unit >> attackedByPikeman: aPikeman [

	health := health - self defense.
	aPikeman health: aPikeman health - aPikeman attack
]

{ #category : 'as yet unclassified' }
Unit >> attackedByWarrior: aWarrior [

	health := health - self defense.
	 aWarrior health: aWarrior health - aWarrior attack
]

{ #category : 'as yet unclassified' }
Unit >> attacksWarrior: aWarrior [

	aWarrior health: aWarrior health - aWarrior attack
]

{ #category : 'accessing' }
Unit >> defense [

	^ attack * (0.5 * experienceLevel + 0.5) * defendingModifier
	  + dti
]

{ #category : 'accessing' }
Unit >> health [

	^ health
]

{ #category : 'accessing' }
Unit >> health: aNewHealth [
	health := aNewHealth 
]

{ #category : 'initialization' }
Unit >> initialize [

	super initialize.
	health := 100.
	experienceLevel := 1.
	attack := 0.
	defense := 0.
	defendingModifier := 1.
	attackingModifier := 1.
	dti := 0
]
