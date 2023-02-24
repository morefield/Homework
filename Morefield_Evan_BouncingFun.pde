int cx=0; //x of ball
int cy=0; //y of ball
float dirx=5.4; //x direction of ball
float diry=7.6; //y direction of ball
void setup(){
  
  size(250,200); //size of code
  
}
void draw(){
  background(255); //background color
  makeBall(); //function displaying the ball
  moveBall(); //function making the ball move
  hitWall(); //function when ball hits wall
}
void makeBall(){
 fill(random(0,255), random(0,255),random(0,255)); //making the ball colorful
 circle(cx,cy,25); //ball

}

void moveBall(){
 cx+=dirx; //ball moving laterally
 cy+=diry; //ball moving vertically
}

void hitWall(){ 
  if (cx<=0 || cx>width){ //ball hitting side walls and bouncing
  dirx*=-1;}
  if (cy<=0 || cy>height){ //ball hitting top & bottom walls and bouncing
    diry*=-1;}
}
