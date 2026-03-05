var fishX = 100;
var bubbleY = 350;

//🟢setup Function - Runs on Repeat
setup = function() {
    size(600, 400);
};
   
draw = function(){
  background(180,230,255);
  fill(120,200,255);
  rect(0,250,600,150);
  fishX +=1;
  if(fishX > 600){
    fishX = 0;
  }
    bubbleY -= 1;
    if(bubbleY < 250){
      bubbleY = 350;
    }
    drawFish(fishX, 300);
    drawBubble(300,bubbleY);
    drawMoon(mouseX,100);
};


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  fishX = mouseX;

};
var drawFish = function(x,y){
  fill(255,150,100);
  ellipse(x,y,50,30);
  triangle(x-25,y,x-40,y-10,x-40,y+10);
};
var drawBubble = function(x,y){
  fill(255,255,255,120);
  ellipse(x,y,15,15);
};
var drawMoon = function(x,y){
  fill(255,255,200);
  ellipse(x,y,30,30);
};






