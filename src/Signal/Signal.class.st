Class {
	#name : 'Signal',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'controlling' }
Signal >> and: aSignal [
	^ self subclassResponsibility 
]

{ #category : 'controlling' }
Signal >> or: aSignal [
^ self subclassResponsibility 
]
