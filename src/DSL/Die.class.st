Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'DSL',
	#package : 'DSL'
}

{ #category : 'accessing' }
Die >> faces [
	^faces 
]

{ #category : 'initialization' }
Die >> initialize [
	faces :=6
]
