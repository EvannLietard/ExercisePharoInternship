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
	self assert: (mat data at: 5) equals: 5
]
