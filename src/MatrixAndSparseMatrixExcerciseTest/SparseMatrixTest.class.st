Class {
	#name : #SparseMatrixTest,
	#superclass : #TestCase,
	#instVars : [
		'rows',
		'columns',
		'data'
	],
	#category : #MatrixAndSparseMatrixExcerciseTest
}

{ #category : #tests }
SparseMatrixTest >> testCalculateIndex [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat index | 
	mat:= SparseMatrix new initialize: 3 columns:3  array: #(1 2 3 4 5 6 7 8 9).
	index := mat calculateIndex: 2 column: 0.
	self assert: index equals: 7
]

{ #category : #tests }
SparseMatrixTest >> testGetOneValue [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= SparseMatrix new initialize: 3 columns:3  array: #(1 2 3 4 5 6 7 8 9).
	mat setValueForOneEmplacement: 2 column: 2 value: 5.
	self assert: (mat getValueForOneEmplacement: 2 column:2) equals: 5
]

{ #category : #tests }
SparseMatrixTest >> testInialize [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= SparseMatrix new initialize: 3 columns:3  array: #(1 2 3 4 5 6 7 8 9).
	self assert: mat rows equals: 3.
	self assert: mat columns equals: 3.
	self assert: mat data size equals: 9.
	self assert: (mat data at: 3) equals:3.
]

{ #category : #tests }
SparseMatrixTest >> testSetOneValue [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= SparseMatrix new initialize: 3 columns:3  array: #(1 2 3 4 5 6 7 8 9).
	mat setValueForOneEmplacement: 2 column: 2 value: 5.
	self assert: (mat data at: 9) equals: 5
]
