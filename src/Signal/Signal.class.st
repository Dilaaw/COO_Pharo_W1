Class {
	#name : 'Signal',
	#superclass : 'Object',
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'controlling' }
Signal >> and: aSignal [

	^ self subclassResponsibility
]

{ #category : 'controlling' }
Signal >> not [

	^ self subclassResponsibility
]

{ #category : 'controlling' }
Signal >> or: aSignal [
^ self subclassResponsibility 
]

{ #category : 'evaluating' }
Signal >> value [

	^ self subclassResponsibility 
]
