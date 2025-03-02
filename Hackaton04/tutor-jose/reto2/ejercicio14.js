
// Cree una función donde, dado el número n, devuelva la suma de todos los números cuadrados  incluyendo n.
// squaresSum(3) ➞ 14
// // 1² + 2² + 3² =
// // 1 + 4 + 9 =
// // 14

const  squaresSum =(value )=>{

    let result =0;

    for(let i=1;i<=value;i++){
        result = result+Math.pow(i,2)
    }

    return result
}

const result = squaresSum(3);

console.log(result)