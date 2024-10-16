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
SingleInput >> printOn: aSingleInput [

	super printOn: aSingleInput.
	aSingleInput nextPutAll: ' (' , input printString , ')'
]

{ #category : 'accessing - structure variables' }
SingleInput >> state [
	^ input state
]
