let yo = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/na.mp3");
let abuelo = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nototatah.mp3");
let abuela = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/notonanan.mp3");
let papa = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/notatah.mp3");
let mama = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nonanan.mp3");

let hermanoMa = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nomimi.mp3");
let hermanaMa = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nopipi.mp3");

let hermanoMe = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nochocho-tlacatl.mp3");
let hermanaMe = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nochocho-cihuatl.mp3");
let tio = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/notlayi.mp3");
let tia = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/noahui.mp3");
let tios = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/notlayihuan.mp3");
let tias = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/noahuihuan.mp3");
let prims = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nomachicnihuan.mp3");
let sobrin = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/nomachconehuan.mp3");
let niet = new Audio("https://tlahtolli.coerll.utexas.edu/wp-content/uploads/noixhuihuan.mp3");
let tu = new Audio("");



var count = 0;
        var inc = 0;
        margin = 0;
        var slider = document.getElementsByClassName("slider-width")[0];
        var itemDisplay = 0;
        if (screen.width > 990) {
            itemDisplay = document.getElementsByClassName("slider-container")[0].getAttribute("item-display-d");
            margin = itemDisplay * 5;
        }
        if (screen.width > 700 && screen.width < 990) {
            itemDisplay = document.getElementsByClassName("slider-container")[0].getAttribute("item-display-t");
            margin = itemDisplay * 6.8;
        }
        if (screen.width > 280 && screen.width < 700) {
            itemDisplay = document.getElementsByClassName("slider-container")[0].getAttribute("item-display-m");
            margin = itemDisplay * 20;
        }


        var items = document.getElementsByClassName("item");
        var itemleft = items.length % itemDisplay;
        var itemslide = Math.floor(items.length / itemDisplay) - 1;
        for (let i = 0; i < items.length; i++) {
            items[i].style.width = (screen.width / itemDisplay) - margin + "px";
        }

        function next() {
            if (inc !== itemslide + itemleft) {
                if (inc == itemslide) {
                    inc = inc + itemleft;
                    count = count - (screen.width / itemDisplay) * itemleft;
                }
                else {
                    inc++;
                    count = count - screen.width;
                }
            }
            slider.style.left = count + "px";
        }

        function prev() {
            if (inc !== 0) {
                if (inc == itemleft) {
                    inc = inc - itemleft;
                    count = count + (screen.width / itemDisplay) * itemleft;
                }
                else {
                    inc--;
                    count = count + screen.width;
                }
            }
            console.log(inc)
            slider.style.left = count + "px";
        }