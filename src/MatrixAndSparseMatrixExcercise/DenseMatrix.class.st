Class {
	#name : #DenseMatrix,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #MatrixAndSparseMatrixExcercise
}

{ #category : #accessing }
DenseMatrix >> columns [ 
	"This method returns the number of columns of the matrix."
	^ (data first) size
    
]

{ #category : #accessing }
DenseMatrix >> data [
	"This method returns the matrix as a two-dimensional array."
	^ data

]

{ #category : #initialization }
DenseMatrix >> initializeWithRows: r columns: c [ 
"This method initializes a new instance of DenseMatrix with a specified number of rows and columns, filling the matrix with zeros."
	data := Array new: r withAll: (Array new: c withAll: 0)
    
]

{ #category : #accessing }
DenseMatrix >> rows [
	"This method returns the number of rows of the matrix."
	^ data size

]
