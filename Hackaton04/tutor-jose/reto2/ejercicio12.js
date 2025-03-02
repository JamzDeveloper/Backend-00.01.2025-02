// Cree una función que tome una matriz de estudiantes y devuelva una matriz de nombres de estudiantes.
// getStudentNames([
//   { name: "Steve" },
//   { name: "Mike" },
//   { name: "John" }
// ]) ➞ ["Becky", "John", "Steve"]

const getStudentNames = (data)=>{


    const names = data.map((value)=>value.name)
    return names
}

const result = getStudentNames(
    [
    { name: "Steve" },
    { name: "Mike" },
    { name: "John" }
  ]
) 

  console.log(result);