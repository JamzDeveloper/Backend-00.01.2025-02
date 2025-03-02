
// Cree una función para multiplicar todos los valores en una matriz por la cantidad de valores en la matriz dada
// multiplyByLength([2, 3, 1, 0]) ➞ [8, 12, 4, 0]


const multiplyByLength = (data = []) => data.map((value) => value * data.length)


const result = multiplyByLength([2, 3, 1, 0]);


console.log(result)