Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'DSL',
	#package : 'DSL'
}

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6
]
