Class {
	#name : #Matrix,
	#superclass : #Object,
	#instVars : [
		'rows',
		'columns',
		'data'
	],
	#category : #MatrixAndSparseMatrixExcercise
}

{ #category : #accessing }
Matrix >> columns [
	^ columns 
]

{ #category : #accessing }
Matrix >> data [
	^ data
]

{ #category : #initialization }
Matrix >> initialize: nRows columns: nColumns [
	super initialize .
	rows := nRows.
	columns := nColumns.
	data := Array new: rows * columns.
	
	
]

{ #category : #accessing }
Matrix >> rows [
	^ rows
]

{ #category : #initialization }
Matrix >> setValueForOneEmplacement: rowIndex column: columnIndex value: value [ 
"Define a value at a defined location obtained thanks to its row and column"
"needs to increment columnIndex by one because at: don't take 0"
|index|
index:= rowIndex * columns + columnIndex + 1. 
data at: index put:value 

	
	
]
