// Escriba una función que convierta un objeto en una matriz de claves y valores.
// objectToArray({
//   likes: 2,
//   dislikes: 3,
//   followers: 10
// }) ➞ [["likes", 2], ["dislikes", 3], ["followers", 10]]



const objectToArray =(data) =>Object.entries(data)

const result =objectToArray({
    likes: 2,
    dislikes: 3,
    followers: 10
  })
  

  console.log(result)