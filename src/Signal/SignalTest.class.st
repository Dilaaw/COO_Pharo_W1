Class {
	#name : 'SignalTest',
	#superclass : 'TestCase',
	#category : 'Signal',
	#package : 'Signal'
}

{ #category : 'tests' }
SignalTest >> testPrintOneLineString [
	| signal |
	signal := BeaconSignal new.
	self assert: (' ' split: signal printOneLineString) second equals: 'BeaconSignal'
]

{ #category : 'tests' }
SignalTest >> testSourceIsOnByDefault [

    | sourceSecurity |
    sourceSecurity := Source new.
    self assert: sourceSecurity state value equals: 1
]

{ #category : 'tests' }
SignalTest >> testTimestampByDefault [
	| before signal after |
	before := DateAndTime now.
	signal := BeaconSignal new.
	after := DateAndTime now.
	self assert: before <= signal timestamp.
	self assert: after >= signal timestamp
]
