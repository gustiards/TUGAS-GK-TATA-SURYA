PShape globe;
PShape globe_1;
PShape globe_2;
PShape globe_3;
PShape globe_4;
PShape globe_5;
PShape globe_6;
PShape globe_7;
PShape globe_8;
float theta;
PImage bgImg;
PImage logo;
float slidingTextX;

void setup() {
  size(1000, 749, P3D);
  noStroke();

  bgImg = loadImage("planet.jpg");
  

  logo = loadImage("pct.jpg");


  PImage img = loadImage("sun.jpeg");
  PImage img_1 = loadImage("mercury.jpeg");
  PImage img_2 = loadImage("venus.jpeg");
  PImage img_3 = loadImage("earth.jpeg");
  PImage img_4 = loadImage("mars.jpeg");
  PImage img_5 = loadImage("jupiter.jpeg");
  PImage img_6 = loadImage("saturn.jpeg");
  PImage img_7 = loadImage("uranus.jpeg");
  PImage img_8 = loadImage("neptune.jpeg");
  
  globe = createShape(SPHERE, 100);
  globe_1 = createShape(SPHERE, 10);
  globe_2 = createShape(SPHERE, 20);
  globe_3 = createShape(SPHERE, 30);
  globe_4 = createShape(SPHERE, 20);
  globe_5 = createShape(SPHERE, 50);
  globe_6 = createShape(SPHERE, 40);
  globe_7 = createShape(SPHERE, 50);
  globe_8 = createShape(SPHERE, 40);
  
  globe.setTexture(img);
  globe_1.setTexture(img_1);
  globe_2.setTexture(img_2);
  globe_3.setTexture(img_3);
  globe_4.setTexture(img_4);
  globe_5.setTexture(img_5);
  globe_6.setTexture(img_6);
  globe_7.setTexture(img_7);
  globe_8.setTexture(img_8);

  slidingTextX = width;
}

void draw() {
  
  background(255);
  image(bgImg, 0, 0, width, height);

 
  fill(255);
  textSize(70);
  textAlign(CENTER);
  text("Animasi Tata Surya", width/2, 100);
  
  textSize(20);
  text("Gustiar Dwi Saputra S | Restu Aleksa | Alfiqry", width/2, 130);  

  
  float logoX = width / 2 - logo.width / 2;
  float logoY = height / 2 - 210;
  image(logo, logoX, logoY); 
  
  pushMatrix();
  translate(width/2, height/2);
  shape(globe);
  popMatrix();

   pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 3.15));
  translate(150, 0, 0);
  rotateY(radians(theta));
  shape(globe_1);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 2.62));
  translate(200, 0, 0);
  rotateY(radians(theta));
  shape(globe_2);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 2.18));
  translate(250, 0, 0);
  rotateY(radians(theta));
  shape(globe_3);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 0.53));
  translate(300, 0, 0);
  rotateY(radians(theta));
  shape(globe_4);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 1.20));
  translate(350, 0, 0);
  rotateY(radians(theta));
  shape(globe_5);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 1.40));
  translate(400, 0, 0);
  rotateY(radians(theta));
  shape(globe_6);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 1.22));
  translate(450, 0, 0);
  rotateY(radians(theta));
  shape(globe_7);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta * 1.00));
  translate(500, 0, 0);
  rotateY(radians(theta));
  shape(globe_8);
  popMatrix();

  textSize(20);
  fill(255);
  text("Selamat datang di Animasi Tata Surya kami! Nikmati eksplorasi planet-planet.", slidingTextX, height - 60);
  slidingTextX -= 3;

  if (slidingTextX < -textWidth("Selamat datang di Animasi Tata Surya kami! Nikmati eksplorasi planet-planet.")) {
    slidingTextX = width;
  }

  theta += 0.5;
}
