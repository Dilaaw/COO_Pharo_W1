Class {
	#name : 'TestUnit',
	#superclass : 'TestCase',
	#category : 'Civilization',
	#package : 'Civilization'
}

{ #category : 'tests' }
TestUnit >> testWarriorCombat [

	| w1 w2 |
	w1 := Warrior new.
	w2 := Warrior new.
	w1 attackAnUnit: w2.
	self assert: w1 health equals: 90.
	self assert: w2 health equals: 90
]
