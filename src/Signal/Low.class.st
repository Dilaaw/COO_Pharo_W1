Class {
	#name : 'Low',
	#superclass : 'Signal',
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'controlling' }
Low >> and: aSignal [

	^ self
]

{ #category : 'controlling' }
Low >> not [

	^ High new
]

{ #category : 'controlling' }
Low >> or: aSignal [

	^ aSignal 
]

{ #category : 'evaluating' }
Low >> value [

	^ 0
]
