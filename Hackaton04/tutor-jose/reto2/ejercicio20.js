// Escriba una función, .vreplace () que extienda el prototipo de cadena reemplazando todas las vocales en una cadena con una vocal especificada.
// "apples and bananas".vreplace("u") ➞ "upplus und bununus"
String.prototype.vreplace = function (vowel) {
    let finalValue = "";

    for (let i = 0; i < this.length; i++) {
        switch (this[i]) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u': finalValue = finalValue + vowel
                break
            default: finalValue = finalValue + this[i]
        }
    }


    return finalValue
}


const result = "apples and bananas".vreplace("u")

console.log(result)