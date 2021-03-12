PImage backgroundImg;
PImage soilImg;
PImage lifeImg;
PImage groundhogImg;
PImage robotImg;
PImage soldierImg;

int block = 80;
int soldierX = -block;
int soldierY = block*floor(random(2,6));
int robotX= block*floor(random(2,8));
int robotY= block*floor(random(2,6));

void setup() {
	size(640, 480, P2D);
  backgroundImg = loadImage ("img/bg.jpg");
  soilImg = loadImage ("img/soil.png");
  lifeImg = loadImage ("img/life.png");
  groundhogImg = loadImage ("img/groundhog.png");
  robotImg = loadImage ("img/robot.png");
  soldierImg = loadImage ("img/soldier.png"); 

}

void draw() {
	//show the background images
  image(backgroundImg,0,0);
  image(soilImg,0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //draw the Sun
    
  fill(253,184,19);
  stroke(255,255,0);
  strokeWeight(5);
  ellipse (590,50,120,120);     
  
  //draw the grass
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  
  //show the groundhog
  image(groundhogImg,280,80);
  
  //show the soldier and make it move
  image(soldierImg,soldierX,soldierY);
  soldierX += 3;
  if (soldierX >= 640)soldierX = -block;
  
  //show the robot
  image(robotImg,robotX,robotY);
  println(floor(random(2,8)));
 }
