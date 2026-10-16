
function direBonjour() {
    document.getElementById("message").textContent = "Bonjour ! Bienvenue sur ma page.";
}

function afficherDate() {
    var maintenant = new Date();
    var texte = "Nous sommes le " + maintenant.toLocaleDateString("fr-FR") +
        " et il est " + maintenant.toLocaleTimeString("fr-FR") + ".";
    document.getElementById("message").textContent = texte;
}

function changerCouleur() {
    var couleurs = ["#ffeaa7", "#fab1a0", "#81ecec", "#a29bfe", "#b2f2bb"];
    var indice = Math.floor(Math.random() * couleurs.length);
    document.body.style.backgroundColor = couleurs[indice];
    document.getElementById("message").textContent =
        "Nouvelle couleur de fond : " + couleurs[indice];
}

function nombreAleatoire() {
    var nombre = Math.floor(Math.random() * 100) + 1;
    document.getElementById("message").textContent =
        "Votre nombre aléatoire est : " + nombre;
}

function effacer() {
    document.getElementById("message").textContent = "";
}

function verif_age() {
    var age = prompt("Donnez votre âge :");

    if (age === null || age.trim() === "" || isNaN(Number(age)) || Number(age) < 0) {
        document.getElementById("message").textContent = "Âge invalide.";
    } else if (Number(age) < 18) {
        document.getElementById("message").textContent = "Vous êtes mineur.";
        document.body.style.backgroundColor = "red";
    } else {
        document.getElementById("message").textContent = "Vous êtes majeur.";
        document.body.style.backgroundColor = "green";
    }
}

function calculerNotes() {
    var n1 = Number(prompt("Donnez la première note :"));
    var n2 = Number(prompt("Donnez la deuxième note :"));
    var n3 = Number(prompt("Donnez la troisième note :"));

    var somme = n1 + n2 + n3;
    var moyenne = somme / 3;

    document.getElementById("message").textContent =
        "Somme : " + somme + " | Moyenne : " + moyenne.toFixed(2);
}
