Class {
	#name : 'High',
	#superclass : 'Signal',
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'controlling' }
High >> and: aSignal [

	^ aSignal 
]

{ #category : 'controlling' }
High >> not [

	^ Low new
]

{ #category : 'controlling' }
High >> or: aSignal [

	^ self
]

{ #category : 'evaluating' }
High >> value [

	^ 1
]
