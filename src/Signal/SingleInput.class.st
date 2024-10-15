Class {
	#name : 'SingleInput',
	#superclass : 'Object',
	#instVars : [
		'input'
	],
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'accessing' }
SingleInput >> input: aSingleInput [
	input:= aSingleInput 
	
]

{ #category : 'printing' }
SingleInput >> printOn: aSignleInput [

	super printOn: aSignleInput.
	aSignleInput nextPutAll: ' (' , input printString , ')'
]
