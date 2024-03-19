Class {
	#name : #DenseMatrixTest,
	#superclass : #TestCase,
	#instVars : [
		'data'
	],
	#category : #MatrixAndSparseMatrixExcerciseTest
}

{ #category : #tests }
DenseMatrixTest >> testGetter [
	"test for my 3 type of getter"	
			
	| mat |
	mat:= DenseMatrix new initializeWithRows: 3 columns: 2.
	self assert: mat rows equals: 3.
	self assert: mat columns equals: 2.
	self assert: mat data equals: #(#(0 0)#(0 0)#(0 0)).
	
]

{ #category : #tests }
DenseMatrixTest >> testInitialize [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| mat |
	mat:= DenseMatrix new initializeWithRows: 3 columns: 3.
	self assert: mat data size equals: 3.
	self assert: (mat data at: 3) equals: #(0 0 0).
	
]
