//cargo en un arreglo las imganes de las banderas. Este sera el orden que se mostrarán
let banderas = ["10.jpg", "8.jpg", "5.png", "20.jpg", "1.jpg", "3.jpg", "7.jpg", "18.jpg", "13.jpg", "2.jpg"];

//arreglo que guardara la opcion correcta
let correcta = [1,0,0,1,2,0,1,2,2,1];

//arreglo que guardara los paises a mostrar en cada jugada
let opciones = [];
//cargo en el arreglo opciones las opciones a mostrar en cada jugada
opciones.push(["ome", "matlactli", "ce"]); //10
opciones.push(["chicuei", "nahui", "yei"]); //8
opciones.push(["macuilli", "caxtolli", "chicome"]); //5
opciones.push(["ome", "cempohualli", "chicuei"]); //20
opciones.push(["caxtolli once", "matlactli omome", "ce"]); //1
opciones.push(["yei", "chicome", "nahui"]); //3
opciones.push(["ELLOS", "chicome", "cempohualli"]); //7
opciones.push(["cempohualli", "mactlactli omei", "caxtolli omei"]); //18
opciones.push(["ome", "caxtolli", "mactlactli omei"]); //13
opciones.push(["chicnahui", "ome", "chicome"]); //2
//variable que guarda la posicion actual
let posActual = 0;
//variable que guarda la cantidad acertadas hasta el moemento
let cantidadAcertadas = 0;

function comenzarJuego(){
    //reseteamos las variables
    posActual = 0;
    cantidadAcertadas = 0;
    //activamos las pantallas necesarias
    document.getElementById("pantalla-inicial").style.display = "none";
    document.getElementById("pantalla-juego").style.display = "block";
    cargarBandera();

}

//funcion que carga la siguiente bandera y sus opciones
function cargarBandera(){
    //controlo sis se acabaron las banderas
    if(banderas.length <= posActual){
        terminarJuego();
    }
    else{//cargo las opciones
        //limpiamos las clases que se asignaron
        limpiarOpciones();

        document.getElementById("imgBandera").src = "../../img/img_nums/" + banderas[posActual];
        document.getElementById("n0").innerHTML = opciones[posActual][0];
        document.getElementById("n1").innerHTML = opciones[posActual][1];
        document.getElementById("n2").innerHTML = opciones[posActual][2];
    }
}

function limpiarOpciones(){
    document.getElementById("n0").className = "nombre";
    document.getElementById("n1").className = "nombre";
    document.getElementById("n2").className = "nombre";

    document.getElementById("l0").className = "letra";
    document.getElementById("l1").className = "letra";
    document.getElementById("l2").className = "letra";
}

function comprobarRespuesta(opElegida){
    if(opElegida==correcta[posActual]){//acertó
        //agregamos las clases para colocar el color verde a la opcion elegida
        document.getElementById("n" + opElegida).className = "nombre nombreAcertada";
        document.getElementById("l" + opElegida).className = "letra letraAcertada";
        cantidadAcertadas++;
    }else{//no acerto
        //agramos las clases para colocar en rojo la opcion elegida
        document.getElementById("n" + opElegida).className = "nombre nombreNoAcertada";
        document.getElementById("l" + opElegida).className = "letra letraNoAcertada";

        //opcion que era correcta
        document.getElementById("n" + correcta[posActual]).className = "nombre nombreAcertada";
        document.getElementById("l" + correcta[posActual]).className = "letra letraAcertada";
    }
    posActual++;
    //Esperamos 1 segundo y pasamos mostrar la siguiente bandera y sus opciones
    setTimeout(cargarBandera,1000);
}
function terminarJuego(){
    //ocultamos las pantallas y mostramos la pantalla final
    document.getElementById("pantalla-juego").style.display = "none";
    document.getElementById("pantalla-final").style.display = "block";
    //agreamos los resultados
    document.getElementById("numCorrectas").innerHTML = cantidadAcertadas;
    document.getElementById("numIncorrectas").innerHTML = banderas.length - cantidadAcertadas;
    
    document.getElementById("buenas").value = cantidadAcertadas;
    document.getElementById("malas").value = banderas.length - cantidadAcertadas;
}


function mandar(){
    //obtener los valores de los span
    let buenas = document.getElementById("numCorrectas");
    let malas = document.getElementById("numIncorrectas");

    document.getElementById("buenas").value = cantidadAcertadas;
    document.getElementById("malas").value = banderas.length - cantidadAcertadas;
    
    setTimeout(window.close(),8000);
    
}

function volverAlInicio(){
    //ocultamos las pantallas y activamos la inicial
    document.getElementById("pantalla-final").style.display = "none";
    document.getElementById("pantalla-inicial").style.display = "block";
    document.getElementById("pantalla-juego").style.display = "none";
}