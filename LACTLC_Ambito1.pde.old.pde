PImage Fondo;

String[] Temas = {"anillos", 
  "asteroides", 
  "cometas", 
  "planeta", 
  "planetaenano", 
  "satelites", 
  "sol", 
  "tierra"};
String[] TemasRestantes;
int Tema;
int TemaBis;
String TemaSeleccionado;
String[] NombresTemaSeleccionado;
String TemaIntruso;
String[] Preguntas = {
  "¿Cual de estos anillos es de ", 
  "¿Cual de estos asteroides es ", 
  "¿Cual de estos es el cometa ", 
  "¿Cual de estos planetas es ", 
  "¿Cual de estos planetas enanos es ", 
  "¿Cual de estos satélites es ", 
  "¿Cual de estas imágenes del Sol es ", 
  "¿Cual de estas imágenes de la Tierra "};
String RaizPregunta;
String PreguntaCompleta;

String[] NombresAnillos = {"Neptuno", "Saturno", "Urano"};
String[] NombresAsteroides = {"Eros", "Itokawa", "Vesta"};
String[] NombresCometas = {"Lovejoy", "CHuryumov/Gerasimenko", "Hale/Bopp"};
String[] NombresPlanetas = {"Júpiter", "Marte", "Saturno"};
String[] NombresPlanetasEnanos = {"Ceres", "Makemake", "Plutón"};
String[] NombresSatelites = {"Caronte", "Ío", "Mimas"};
String[] NombresSol = {"la corona", "una fulguración solar", "una mancha solar"};
String[] NombresTierra = {"son cumulonimbos", "es Londres", "es Namibia"};

String[] TextosAnillos = {
  "En agosto de 1989 la sonda Voyager 2 confirmó la existencia de los anillos de Neptuno. Se trata de un sistema de cinco anillos muy tenues, formados por partículas de hierro, rocas y compuestos orgánicos.",
  "La sonda Cassini ha logrado fotografiar las ondulaciones provocadas en los anillos de Saturno por Daphnis, uno de sus satélites más pequeños. La perspectiva de la imagen también permite apreciar la sombra de Daphnis sobre los anillos.",
  "En su aproximación a Urano en 1986 la sonda Voyager 2 descubrió dos nuevos anillos, además de los nueve que ya se conocían. Estos anillos apenas contienen polvo y su anchura es de unos pocos kilómetros."};

String[] TextosAsteroides = {
  "Este asteroide con forma de cacahuete de unos 30 km de longitud orbita al Sol relativamente cerca de la Tierra. En el año 2001 se convirtió en el primer asteroide visitado por una sonda humana, la NEAR-Shoemaker de la NASA.",
  "La órbita del asteroide Itokawa se cruza con las de Marte y la Tierra. En 2005 la sonda japonesa Hayabusa logró regresar a la Tierra tras posarse en la superficie de este pequeño asteroide para recoger muestras del suelo.",
  "Este asteroide gigante – el tercero en tamaño del Sistema Solar – fue visitado en 2005 por la misión Dawn de la NASA. En la parte inferior de la imagen se puede apreciar una impresionante montaña cuya altura triplica a la del Everest."};
  
String[] TextosCometas = {
  "Este cometa tarda unos 8000 años en completar una órbita que le lleva desde los confines del Sistema Solar hasta las proximidades de la Tierra. En 2015 se acercó tanto al Sol que llegó a observarse a simple vista.",
  "A finales de 2014 la sonda Rosetta se acercó a pocos kilómetros de este cometa y depositó un aterrizador sobre su superficie. Esta misión demostró que el agua de nuestro planeta no tiene su origen en los cometas.",
  "Este cometa se mantuvo visible durante buena parte de  1996 y 1997, convirtiéndose en el más observado del siglo XX. Las imágenes obtenidas por profesionales y aficionados alcanzaron gran difusión gracias a una incipiente Internet."};
  
String[] TextosPlanetas = {
  "Las imágenes de Júpiter obtenidas por la sonda Voyager 1 estaban tratadas para mostrar mejor la estructura y la dinámica de la capa de nubes que recubre este planeta. En la parte superior derecha se aprecia parte de la Gran Mancha Roja.",
  "El Planeta Rojo ha recibido la visita de numerosas misiones espaciales, entre ellas  las sondas Viking 1 y 2. Ambas fotografiaron minuciosamente la superficie captando detalles de accidentes como los cañones del Valles Marineris.",
  "La sonda Cassini fotografió una extraordinaria estructura nubosa con forma de hexágono que gira lentamente alrededor del polo norte de Saturno. En su centro reside un fabuloso huracán cincuenta veces mayor que los que se dan en la Tierra. "};
  
String[] TextosPlanetasEnanos = {
  "Con casi 1000 km de diámetro Ceres es el asteroide de mayor tamaño y el único planeta enano cuya órbita es interior a la de Neptuno. Esta imagen de la sonda Dawn muestra en distintos colores las rocas y el hielo que forman su superficie.",
  "Este planeta enano fue descubierto en verano de 2005 al mismo tiempo que Eris y Haumea. Tarda más de 300 años terrestres en dar una vuelta alrededor del Sol y se encuentra a una temperatura de tan sólo 30 grados sobre el cero absoluto.",
  "En 2015 la sonda New Horizons pasó junto a Plutón, tomando imágenes con un detalle nunca antes visto en el más grande de los planetas enanos. En ellas se aprecian las planicies de nitrógeno sólido contrastando con montañas de agua helada."};
  
String[] TextosSatelites = {
  "En 2015 la sonda New Horizons pasó junto a Plutón y su satélite Caronte, cuya superficie de hielo se muestra en la imagen. En realidad ambos astros orbitan alrededor del centro de masas común, que se encuentra en un punto situado entre ambos.",
  "En su camino hacia Plutón la sonda New Horizons tomó espectaculares imágenes de Ío, uno de los satélites de Júpiter y el cuerpo con mayor actividad volcánica de todo el Sistema Solar. En la parte superior puede apreciarse uno de estos volcanes.",
  "Mimas es la menor de las lunas principales de Saturno. La superficie helada fotografiada por la sonda Cassini muestra numerosos cráteres, entre ellos uno de gran tamaño que da a esta luna un cierto parecido a la Estrella de la Muerte de Star Wars."};
  
String[] TextosSol = {
  "Los eclipses totales de sol sólo pueden verse desde una estrecha franja del globo terrestre. Esta imagen, en la que se aprecia la corona solar, fue tomada por una expedición británica en la India durante el eclipse de diciembre de 1871.",
  "Desde su privilegiada posición en el espacio el telescopio SDO registra constantemente la actividad del Sol. La parte izquierda de la imagen muestra una de sus habituales  emisiones repentinas de radiación denominadas fulguraciones.",
  "Esta imagen tomada con el Telescopio Solar Sueco ubicado en la isla canaria de La Palma muestra los bordes de una mancha solar. Estas regiones oscuras en la superficie de la estrella corresponden a zonas más frías que el resto."
  };
  
String[] TextosTierra = {
  "Los astronautas abordo de la ISS fotografiaron en julio de 2016 este paisaje terrestre cubierto de nubes. Las formaciones redondeadas corresponden a cumulonimbos, nubes de gran desarrollo vertical que van asociadas a las grandes tormentas.",
  "Las aguas que separan Gran Bretaña de Francia albergan varios parques eólicos. Las corrientes marinas arrastran sedimentos que revelan la posición de los aerogeneradores, como se aprecia en esta imagen del satélite Landsat 8.",
  "En marzo de 2016 la tripulación de la ISS tomó esta fotografía del “mar de arena” en el desierto de Namibia. Las dunas de esta región del oeste de África alcanzan los 300 metros de altura y se disponen como las olas de un imaginario océano arenoso."
  };

String[] TextoExplicativo; 
String ExplicacionAMostrar;

String MeQuedoCon;
int RandoMizador;
int[] ElementosQueQuedan;
int ElDeHacerBulto;

String Archivo1;
String Archivo2;
String Archivo3;

PImage Imagen1;
PImage Imagen2;
PImage Imagen3;

String[] ArchivosACargar;

int RandomizarOrdenEnPantalla;
int[] OrdenEnPantalla;
int BotonBueno;
int ElPulsado = -1;
int Tiempo;
boolean HaAcertado = false;

String[] Nones = {"Va a ser que no…", "Qué va", "Inténtalo de nuevo", "Casi pero no", "No…", "Huy!", "Prueba de nuevo"};

String[] Bravos = {"¡Muy bien!", "En efecto", "Así es", "Genial","Eso es","correcto"};

void setup() {
  // con fullScreen no es necesario especificar tamaño
  // pero la aplicación está diseñada para 1920x1200
  fullScreen();
  //size(1920,1200); 
  // no necesitamos puntero
  noCursor();
  Fondo = loadImage("FondoAmbito1.jpg");
  background(100);
  image(Fondo,0,0);
  EscogerPregunta();
}

void draw() {
}

void keyPressed() { 
  Tiempo = millis();

  if (key == '1') {
    ElPulsado = 1;
    //text("Pulsado el uno", 20, 150);
  }

  if (key == '2') {
    ElPulsado = 2;
    //text("Pulsado el dos", 20, 150);
  }

  if (key == '3') {
    ElPulsado = 3;
    //text("Pulsado el tres", 20, 150);
  }

  if (HaAcertado == true) {
    //background(100);
    HaAcertado = false;
    ElPulsado = -1;
    EscogerPregunta();
  }

  if (ElPulsado == BotonBueno) {
    HaAcertado = true;
  }

  if (HaAcertado == false && ElPulsado != -1) {
    Nope();
  }

  if (HaAcertado == true) {
    HasGanao();
  }
}
//

void EscogerPregunta() {

  //if (HaAcertado == true) {
  //  text("COJONES",500,500);
  //  redraw();
  //  while (millis() < Tiempo + 5000) {
  //    // no hago nada y espero
  //  } 
  //}

  background(100);
  image(Fondo,0,0);
  textSize(12);

  Tema = int((random(0, 8)));
  TemaSeleccionado = Temas[Tema];
  RaizPregunta = Preguntas[Tema];

  switch(Tema) {
  case 0:
    String[] SinElPrimero = {"asteroides", "cometas", "planeta", "planetaenano", "satelites", "sol", "tierra"};
    TemasRestantes = SinElPrimero;
    TemaBis = int((random(0, 7)));
    break;

  case 7: 
    String[] SinElUltimo = {"anillos", "asteroides", "cometas", "planeta", "planetaenano", "satelites", "sol"};
    TemasRestantes = SinElUltimo;
    TemaBis = int((random(0, 7)));
    break;

  default:
    String[] Delante = subset(Temas, 0, Tema);
    String[] Detras = subset(Temas, Tema+1);
    TemasRestantes = concat(Delante, Detras);
    TemaBis = int((random(0, 7)));
    break;
  }

  TemaIntruso = TemasRestantes[int(random(7))];

  switch(Tema) {
  case 0:
    NombresTemaSeleccionado = NombresAnillos;
    TextoExplicativo = TextosAnillos;
    break;
  case 1:
    NombresTemaSeleccionado = NombresAsteroides;
    TextoExplicativo = TextosAsteroides;
    break;
  case 2:
    NombresTemaSeleccionado = NombresCometas;
    TextoExplicativo = TextosCometas;
    break;
  case 3:
    NombresTemaSeleccionado = NombresPlanetas;
    TextoExplicativo = TextosPlanetas;
    break;
  case 4:
    NombresTemaSeleccionado = NombresPlanetasEnanos;
    TextoExplicativo = TextosPlanetasEnanos;
    break;
  case 5:
    NombresTemaSeleccionado = NombresSatelites;
    TextoExplicativo = TextosSatelites;
    break;
  case 6:
    NombresTemaSeleccionado = NombresSol;
    TextoExplicativo = TextosSol;
    break;
  case 7:
    NombresTemaSeleccionado = NombresTierra;
    TextoExplicativo = TextosTierra;
    break;
  }

  //text(NombresTemaSeleccionado[0], 5, 15);
  //text(NombresTemaSeleccionado[1], 5, 35);
  //text(NombresTemaSeleccionado[2], 5, 55);
  RandoMizador = int(random(3));
  MeQuedoCon = NombresTemaSeleccionado[RandoMizador];
  ExplicacionAMostrar = TextoExplicativo[RandoMizador];

  switch(RandoMizador) {
  case 0:
    int[] Unos = {1, 2};
    ElementosQueQuedan = Unos;
    break;
  case 1:
    int[] Otros = {0, 2};
    ElementosQueQuedan = Otros;
    break;
  case 2:
    int[] Aquellos = {0, 1};
    ElementosQueQuedan = Aquellos;
    break;
  }

  ElDeHacerBulto = ElementosQueQuedan[int(random(2))];

  PreguntaCompleta = RaizPregunta + MeQuedoCon + "?";
  //rect(10, 10, 940, 50);
  //textAlign(LEFT, CENTER);
  //textSize(72);
  //text(PreguntaCompleta, 30,125,940,105);

  Archivo1 = TemaSeleccionado + str(RandoMizador) + ".jpg";
  Archivo2 = TemaSeleccionado + str(ElDeHacerBulto) + ".jpg";
  Archivo3 = TemaIntruso + str(int(random(2))) + ".jpg";

  RandomizarOrdenEnPantalla = int(random(6));

  switch(RandomizarOrdenEnPantalla) {
  case 0:
    int[] Orden0 = {0, 1, 2};
    OrdenEnPantalla = Orden0;
    break;
  case 1:
    int[] Orden1 = {1, 0, 2};
    OrdenEnPantalla = Orden1;
    break;
  case 2:
    int[] Orden2 = {1, 2, 0};
    OrdenEnPantalla = Orden2;
    break;
  case 3:
    int[] Orden3 = {0, 2, 1};
    OrdenEnPantalla = Orden3;
    break;
  case 4:
    int[] Orden4 = {2, 0, 1};
    OrdenEnPantalla = Orden4;
    break;
  case 5:
    int[] Orden5 = {2, 1, 0};
    OrdenEnPantalla = Orden5;
    break;
  }

  HaAcertado = false; 
  ElPulsado = -1;
  ShowMeTheFotos();
}

void ShowMeTheFotos() {

  //text(OrdenEnPantalla[0], 300, 20);
  //text(OrdenEnPantalla[1], 350, 20);
  //text(OrdenEnPantalla[2], 400, 20);

  //text(30+(OrdenEnPantalla[0])*630, 300, 40);
  //text(30+(OrdenEnPantalla[1])*630, 350, 40);
  //text(30+(OrdenEnPantalla[2])*630, 400, 40);

  background(100);
  image(Fondo,0,0);
  
  
  fill(255);
  rect(15,75,1890,750);
  
  fill(150);
 
  Imagen1 = loadImage(Archivo1);
  //text(Archivo1, 30+(OrdenEnPantalla[0])*630, 170);
  rect(28+(OrdenEnPantalla[0])*630, 118,604,604);
  image(Imagen1, 30+(OrdenEnPantalla[0])*630, 120);

  Imagen2 = loadImage(Archivo2);
  //text(Archivo2, 30+(OrdenEnPantalla[1])*630, 170);
  rect(28+(OrdenEnPantalla[1])*630, 118,604,604);
  image(Imagen2, 30+(OrdenEnPantalla[1])*630, 120);

  Imagen3 = loadImage(Archivo3);
  //text(Archivo3, 30+(OrdenEnPantalla[2])*630, 170);
  rect(28+(OrdenEnPantalla[2])*630, 118,604,604);
  image(Imagen3, 30+(OrdenEnPantalla[2])*630, 120);
  
  textSize(48);
  fill(0);
  textAlign(CENTER, CENTER);
  text(PreguntaCompleta, 960, 775);

  BotonBueno = OrdenEnPantalla[0] + 1;
  //text("Elbueno -> " + str(BotonBueno), 20, 120);
  
  

}

void HasGanao() {

  noStroke();
  
  ShowMeTheFotos();
  fill(255);
  rect(15,875,1890,250);
  RandoMizador = int((random(0, 3)));
  textSize(75);
  fill(150);
  textAlign(CENTER, CENTER);
  text(Bravos[RandoMizador], 960,910);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(24);
  text(ExplicacionAMostrar,400,865,1060,300);
  textSize(12);
  text("Pulsa un botón para seguir",960,1100); 
  ElPulsado = -1;
}

void Nope() {

  noStroke();
  //fill(100);
  //rect(5, 45, 940, 105);
  ShowMeTheFotos();
  fill(255);
  rect(15,875,1890,150);
  RandoMizador = int((random(0, 4)));
  textAlign(LEFT, CENTER);
  textSize(72);
  fill(150);
  textAlign(CENTER, CENTER);
  text(Nones[RandoMizador], 960, 940);
  //fill(0);
  //textSize(18);
  //text("Vuelve a intentarlo",960,950); 
  ElPulsado = -1;
}