const date = new Date();
// Dátum narodenia
let yearOfBorn = 2006;
let mounthOfBorn = 12;
let dayOfBorn = 19;

//súčasný čas

let curentDay = date.getDate();
let curentMonth = date.getMonth() + 1;
let curentYear = date.getFullYear();

//nastavenie správneho veku
let age = curentYear - yearOfBorn;
if(mounthOfBorn < curentMonth){
    console.log("toto je tvoj vek: " + age)
}else if(mounthOfBorn == curentMonth){
    if(dayOfBorn <= curentDay){
        console.log("toto je tvoj vek: " + age)
    }else{
        age -= 1;
        console.log("toto je tvoj vek: " + age)

    }
}else{
    age -= 1;
    console.log("toto je tvoj vek: " + age )
}
//vloženie správneho veku do stránky
console.log("toto je tvoj súčasný vek:" + age + "pri dátume narodenia : " + dayOfBorn + "." + mounthOfBorn + "." + yearOfBorn );
document.querySelector("#age").innerHTML += age;