// Cree una función que tome un número como argumento y devuelva una matriz de números contando desde este número a cero.
// countdown(5) ➞ [5, 4, 3, 2, 1, 0]


const countdown =(limitNumber)=>{
    const arrayValue = [];

    for(let i=limitNumber;i>=0;i--){
        arrayValue.push(i)
    }

    return arrayValue
} 


const result = countdown(5) ;


console.log(result)


