
// Cree la función que toma una matriz con objetos y devuelve la suma de los presupuestos de las personas.

// getBudgets([
//   { name: "John", age: 21, budget: 23000 },
//   { name: "Steve",  age: 32, budget: 40000 },
//   { name: "Martin",  age: 16, budget: 2700 }
// ]) ➞ 65700


const getBudgets = (data) => {
    let sumaTotal = 0;
    for (let person of data) {
        sumaTotal = sumaTotal + person.budget;
    }

    console.log(sumaTotal) //cambiar a return
}

getBudgets([
    { name: "John", age: 21, budget: 23000 },
    { name: "Steve", age: 32, budget: 40000 },
    { name: "Martin", age: 16, budget: 2700 }
]
)