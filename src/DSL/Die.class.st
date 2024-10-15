Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'DSL',
	#package : 'DSL'
}

{ #category : 'instanceCreation' }
Die class >> withFaces: anInteger [ 
	^ self new faces: anInteger 
]

{ #category : 'accessing' }
Die >> faces [
	^faces 
]

{ #category : 'accessing' }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [
	faces :=6
]

{ #category : 'printing' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' (' , faces printString , ')'.
]

{ #category : 'dsl' }
Die >> roll [
	^ faces atRandom
]

{ #category : 'instanceCreation' }
Die >> withFaces: anInteger [

	| die |
	die := self class new.
	die faces: anInteger.
	^ die
]
