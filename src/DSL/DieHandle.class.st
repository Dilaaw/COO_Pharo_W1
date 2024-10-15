Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'DSL',
	#package : 'DSL'
}

{ #category : 'adding' }
DieHandle >> addDie: aDie [

	dice ifNil: [ dice:=OrderedCollection new ].
	dice add:aDie
]

{ #category : 'accessing' }
DieHandle >> diceNumber [

	^ dice size
]
