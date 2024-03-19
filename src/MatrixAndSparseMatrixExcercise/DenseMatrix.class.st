Class {
	#name : #DenseMatrix,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #MatrixAndSparseMatrixExcercise
}

{ #category : #initialization }
DenseMatrix >> data [
	^ data

]

{ #category : #initialization }
DenseMatrix >> initializeWithRows: r columns: c [ 
	data := Array new: r withAll: (Array new: c withAll: 0)
    
]
