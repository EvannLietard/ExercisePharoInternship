Class {
	#name : #SparseMatrix,
	#superclass : #DenseMatrix,
	#instVars : [
		'rows',
		'columns'
	],
	#category : #MatrixAndSparseMatrixExcercise
}

{ #category : #changeData }
SparseMatrix >> calculateIndex: rowIndex column: columnIndex [
	"Method for calculate the index for other method"
	^ rowIndex* columns + columnIndex +1
]

{ #category : #accessing }
SparseMatrix >> columns [
"Override of this method because now we directly have the attribute"
	^ columns 
]

{ #category : #access }
SparseMatrix >> countNotZerosInData [
    | notZeroCount |
    notZeroCount := 0.
    data do: [ :item |
        | value |
        value := item.
        value = 0 ifFalse: [ notZeroCount := notZeroCount + 1 ].
    ].
    ^ notZeroCount
]

{ #category : #changeData }
SparseMatrix >> getValueForOneEmplacement: rowIndex column: columnIndex [
"Get the Value with rowIndex and ColumnIndex"
| index value |
index:= self calculateIndex: rowIndex column: columnIndex . 
value := data at: index .
^ value

	
	
]

{ #category : #initialization }
SparseMatrix >> initialize: nRows columns: nColumns array: arrayGiven [
	| expectedSize |
   expectedSize := nRows * nColumns.
	rows := nRows.
	columns := nColumns.
	(arrayGiven size = expectedSize)
        ifTrue: [ data := arrayGiven ]
        ifFalse: [ self error: 'Size of the provided array does not match the size of the array' ].
	
	
]

{ #category : #accessing }
SparseMatrix >> rows [
	"Override of this method because now we directly have the attribute"
	^ rows
]

{ #category : #changeData }
SparseMatrix >> setValueForOneEmplacement: rowIndex column: columnIndex value: value [ 
"Define a value at a defined location obtained thanks to its row and column"
"needs to increment columnIndex by one because at: don't take 0"
| index |
index:= self calculateIndex: rowIndex column: columnIndex . 
data at: index put:value 

	
	
]

{ #category : #convertiser }
SparseMatrix >> toCompactMatrix [
        | size compactMatrix k |
        size := self countNotZerosInData.
       

        compactMatrix := Array new: size withAll: (Array new: 3).
        k := 1.
        (0 to: rows-1 ) do: [ :i |
            (0 to: columns-1 ) do: [ :j |
                | value |
                value := (self getValueForOneEmplacement: i column:  j).
                value = 0 ifFalse: [
                    compactMatrix at: k put: (Array with: i with: j with: value).
                k := k + 1.
                ]
				]
			].
		^ compactMatrix

]

{ #category : #convertiser }
SparseMatrix >> toDenseMatrix [
	|array |
        array := super initializeWithRows: self rows columns: self columns.

        data do: [ :item |
            | i j value |
            i := item first.
            j := item second.
            value := item third.
            array setOnSpecificValue: i column: j value: value
        ].

        ^ array
]
