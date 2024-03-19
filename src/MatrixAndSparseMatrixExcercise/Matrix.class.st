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
