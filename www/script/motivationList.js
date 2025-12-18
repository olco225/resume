//motivačný list
/*let text = "Dobrý deň, moje meno je Oliver Chalúpka. A chcel by som sa zamestnať vo vašej firme, ako brigádnik. Viem sa učiť rôzne nové veci, ale nejaký ten čas to trvá.";
let text2 = "Dobrý deň, síce možno tento motivačný list nebude znieť motivačne, ale začnem. Viem určité veci ktoré ste mali napísané v inzeráte, ale z niektorými nemám moc skúseností, takže neviem si presne predstaviť ako by mohla vyzerať práca s nimi, a dokonca nemám moc skúseností robiť IT služby pre firmi.Ale určité veci viem a na niečo sa cítim viac a na niečo menej. Takže je otázne či by som niečo také vedel zvládnuť alebo nie. Ale o tom je to prímacie konanie. Aspoň myslím, že je. A bol by som rád keby sa ho môžem aspoň do nejakej úrovne zúčasniť. A tiež by ma potešilo keby môžem mať to zadanie. Získal by som aspoň nejaké skúsenosti. A kdo vie, možno budem pre vás zaujímavý. A možno aj užitočný. Plus časom sa vie človek zlepšovať a učiť. Takže som otvorený a ochotný sa učiť nové veci. A možno sa ich budem vedieť doúčať v rozumnom tempe a možno nie. Je to na vás, prajem pekný deň.";  

let button = document.querySelector("#motivačný-list #tlačítko-motivačného-listu");

button.addEventListener("click", vypísanieListuCezSpan);


function vypísanieListu(){
    console.log("button funguje");
    let paragraph = document.querySelector("#motivačný-list p");
    
    //funkcia na vypísanie textu po písmenkách
    paragraph.textContent = "";
    let index =  0;
    function letterAddWithPause(){
        if(index < text.length){
        paragraph.textContent += text[index];
        index ++;
        setTimeout(letterAddWithPause, 25);
        }
    };
    letterAddWithPause();
    
}
function vypísanieListuCezSpan(){
    console.log("button funguje");
    let paragraph = document.querySelector("#motivačný-list p span");
    
    //funkcia na vypísanie textu po písmenkách
    paragraph.textContent = "";
    let index =  0;
    function letterAddWithPause(){
        if(index < text2.length){
        paragraph.textContent += text2[index];
        index ++;
        setTimeout(letterAddWithPause, 20);
        }
    };
    letterAddWithPause();
    
}
*/
let text3List = []; 
function setMotivationLetter(motivationLetterList){
    text3List = motivationLetterList;
}
//viac paragrafov
  
//postupná verzia
let button2 = document.querySelector("#motivačný-list2 #tlačítko-motivačného-listu2");
button2.addEventListener("click", putMotivationLetter);
//rýchla verzia
let button2Fast = document.querySelector("#motivačný-list2 #tlačítko-motivačného-listu2-rýchlo");
button2Fast.addEventListener("click", putMotivationLetterFast);

function putMotivationLetter(){
    let textContainer = document.querySelector("#motivačný-list2 #motivation-text-container");
    //Pri spustený nanovo funkcie, aby sa vnútro premazalo/ resetovalo
    textContainer.innerHTML = "";
    //vytvorenie požadovaného počtu paragrafou
    for(i = 0; i < text3List.length; i++){
        //pridanie nového paragrafu
        let paragraph = document.createElement("p");
        paragraph.setAttribute("id", "paragraph"+i);
        paragraph.setAttribute("class", "motivation-list-paragraph");

        textContainer.appendChild(paragraph);
    }
    //postupné vypísanie textu paragraf po paragrafe
    let listOfParagraphs = document.querySelectorAll("#motivačný-list2 #motivation-text-container .motivation-list-paragraph");
    console.log(listOfParagraphs)
    let indexOfParagraph = 0;
    let indexOfParagraphString = 0;
    function letterAddToParagraph(currentParagraph, textJustHere){
        if(indexOfParagraphString < textJustHere.length){
            currentParagraph.textContent += textJustHere[indexOfParagraphString];
            indexOfParagraphString ++;
        }else{
            indexOfParagraphString = 0;
            indexOfParagraph ++;
        }
    };
    setInterval(function(){
        letterAddToParagraph(listOfParagraphs[indexOfParagraph], text3List[indexOfParagraph] )
    }, 15);
}
function putMotivationLetterFast(){
    let textContainer = document.querySelector("#motivačný-list2 #motivation-text-container");
    //Pri spustený nanovo funkcie, aby sa vnútro premazalo/ resetovalo
    textContainer.innerHTML = "";
    //vytvorenie požadovaného počtu paragrafou
    for(i = 0; i < text3List.length; i++){
        //pridanie nového paragrafu
        let paragraph = document.createElement("p");
        paragraph.setAttribute("id", "paragraph"+i);
        paragraph.setAttribute("class", "motivation-list-paragraph");
        paragraph.textContent = text3List[i];
        textContainer.appendChild(paragraph);
    }
}


