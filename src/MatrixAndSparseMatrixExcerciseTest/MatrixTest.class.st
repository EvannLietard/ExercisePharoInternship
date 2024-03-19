Class {
	#name : #MatrixTest,
	#superclass : #TestCase,
	#instVars : [
		'rows',
		'columns',
		'data'
	],
	#category : #MatrixAndSparseMatrixExcerciseTest
}

{ #category : #tests }
MatrixTest >> testCalculateIndex [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat index | 
	mat:= Matrix new initialize: 3 columns: 3.
	index := mat calculateIndex: 2 column: 0.
	self assert: index equals: 7
]

{ #category : #tests }
MatrixTest >> testInialize [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= Matrix new initialize: 3 columns: 3.
	self assert: mat rows equals: 3.
	self assert: mat columns equals: 3.
	self assert: mat data size equals: 9.
]

{ #category : #tests }
MatrixTest >> testSetOneValue [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= Matrix new initialize: 3 columns: 3.
	mat setValueForOneEmplacement: 2 column: 2 value: 5.
	self assert: (mat data at: 9) equals: 5
]
