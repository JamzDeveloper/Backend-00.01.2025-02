
// Escriba una función que convierta un objeto en una matriz, donde cada elemento representa un par clave-valor.
// toArray({ a: 1, b: 2 }) ➞ [["a", 1], ["b", 2]]



const toArray = (objectValue = {})=>{
    return Object.entries(objectValue)
}


const result =  toArray({ a: 1, b: 2 });


console.log(result)