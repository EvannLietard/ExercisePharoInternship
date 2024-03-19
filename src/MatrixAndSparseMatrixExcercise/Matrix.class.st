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

{ #category : #changeData }
Matrix >> calculateIndex: rowIndex column: columnIndex [
	"Method for calculate the index for other method"
	^rowIndex * columns + columnIndex + 1
]

{ #category : #accessing }
Matrix >> columns [
	^ columns 
]

{ #category : #accessing }
Matrix >> data [
	^ data
]

{ #category : #changeData }
Matrix >> getValueForOneEmplacement: rowIndex column: columnIndex [
"Get the Value with rowIndex and ColumnIndex"
| index value |
index:= self calculateIndex: rowIndex column: columnIndex . 
value := data at: index .
^ value

	
	
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

{ #category : #changeData }
Matrix >> setValueForOneEmplacement: rowIndex column: columnIndex value: value [ 
"Define a value at a defined location obtained thanks to its row and column"
"needs to increment columnIndex by one because at: don't take 0"
| index |
index:= self calculateIndex: rowIndex column: columnIndex . 
data at: index put:value 

	
	
]
