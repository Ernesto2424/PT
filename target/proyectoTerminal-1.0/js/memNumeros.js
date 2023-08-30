//inicializacion de variables
let tarjetasDestapadas = 0;
let tarjeta1 = null;
let tarjeta2 = null;
let primerResultado = null;
let segundoResultado = null;
let movimientos = 0;
let aciertos = 0;
let temporizador = false;
let timer = 90;
let tiempoRegresivo = null;

//sonidos
//let s1 = new Audio("https://www.uv.mx/celulaode/innova2018/AlfabetoNahuatl/audio/awakatl.mp3");



//apintadno document html
let mostrarMovimientos = document.getElementById('movimientos');
let mostrarAciertos = document.getElementById('aciertos');
let mensaje = document.getElementById('mensaje');
let mostrarTiempo = document.getElementById('t_restante');

//generacion numeros aleatorios
let numeros = [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10];
numeros = numeros.sort(()=>{return Math.random()-0.5});
console.log(numeros);

//funciones
function contarTiempo(){
    tiempoRegresivo = setInterval(()=>{
        timer--;
        mostrarTiempo.innerHTML =  `Tiempo: ${timer} seg`;
        if(timer == 0 ){

            clearInterval(tiempoRegresivo);
            setTimeout(()=>{
            bloquearTarjetas();
            //s1.play();
            
                
               },500);    
            setTimeout(()=>{
                alert("oops! no has completado el juego, intentalo de nuevo!!");
               },1500);
            //mensaje.innerHTML = "oops! no has completado el juego, intentalo de nuevo!!"
        }
    },1000);
}

function bloquearTarjetas(){
    for(let i=0; i<=19; ++i){
        let tarjetaBloqueada = document.getElementById(i);
        tarjetaBloqueada.innerHTML = `<img src="./numeros/${numeros[i]}.png" alt="">`;
        tarjetaBloqueada.disabled = true;
    }
}

//funcion principal

function destapar(id){

    if(temporizador == false){
        contarTiempo();
        temporizador = true;
    }

tarjetasDestapadas++;
console.log(tarjetasDestapadas);

if(tarjetasDestapadas == 1){
    //mostrar el primer numero
    tarjeta1 = document.getElementById(id);
    primerResultado = numeros[id];
    tarjeta1.innerHTML =`<img src="./numeros/${primerResultado}.png" alt="">`;
    

    //deshabilitar el primero boton
    tarjeta1.disabled = true;
}else if(tarjetasDestapadas == 2){
    //mostrar segundo numero
    tarjeta2 = document.getElementById(id);
    segundoResultado = numeros[id];
    tarjeta2.innerHTML = `<img src="./numeros/${segundoResultado}.png" alt="">`;

    //deshabilitar noton2
    tarjeta2.disabled = true;

    //incr movimientos
    movimientos++;
    mostrarMovimientos.innerHTML =  `Movimientos: ${movimientos}`;
    
    if(primerResultado == segundoResultado){
        tarjetasDestapadas = 0;

        //aumentar aciertos;
        aciertos++;
        mostrarAciertos.innerHTML = `Aciertos: ${aciertos}`;
        
        if(aciertos==10){
            clearInterval(tiempoRegresivo);
           // mensaje.innerHTML = "¡ FELICITACIONES, HAS TERMINADO EL JUEGO !";
           setTimeout(()=>{
            alert("¡ FELICITACIONES, HAS TERMINADO EL JUEGO !");
           },600);
            
        }

    }else{
        //mostrar momentanneamente y tapar valores
        setTimeout(()=>{
            tarjeta1.innerHTML = " ";
            tarjeta2.innerHTML = " ";
            tarjeta1.disabled = false;
            tarjeta2.disabled = false;
            tarjetasDestapadas = 0;

        },800);
    }
}

}
