Class {
	#name : 'SourceTest',
	#superclass : 'TestCase',
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'tests' }
SourceTest >> testOffMethod [

	| source |
	source := Source new.
	source off.
	self assert: source state value equals: 0
]

{ #category : 'tests' }
SourceTest >> testOnMethod [

	| source |
	source := Source new.
	source on.
	self assert:source state value equals:1
]

{ #category : 'tests' }
SourceTest >> testSourceIsOnByDefault [

    | sourceSecurity |
    sourceSecurity := Source new.
    self assert: sourceSecurity state value equals: 1
]

{ #category : 'tests' }
SourceTest >> testToggleMethod [

	| source |
	source := Source new.
	source toggle.
	self assert: source state value equals: 0
]
