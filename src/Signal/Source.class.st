Class {
	#name : 'Source',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'initialize' }
Source >> initialize [

	super initialize.
	state := High new
]

{ #category : 'operations' }
Source >> off [

	state := Low new
]

{ #category : 'operations' }
Source >> on [

	state := High new
]

{ #category : 'accessing' }
Source >> state [
	^ state
]

{ #category : 'operations' }
Source >> toggle [

	state := state not
]
