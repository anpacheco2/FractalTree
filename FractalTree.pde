private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angleA = angle + branchAngle;
  double angleB = angle - branchAngle;
  double angleC = angle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angleA) + x);
  int endY1 = (int)(branchLength*Math.sin(angleA) + y);
  int endX2 = (int)(branchLength*Math.cos(angleB) + x);
  int endY2 = (int)(branchLength*Math.sin(angleB) + y);
  int endX3 = (int)(branchLength*Math.cos(angleC) + x);
  int endY3 = (int)(branchLength*Math.sin(angleC) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  line(x, y, endX3, endY3);
  if(branchLength > smallestBranch)
  {
    drawBranches(endX1, endY1, branchLength-5, angleA);
    drawBranches(endX2, endY2, branchLength-5, angleB);
    drawBranches(endX3, endY3, branchLength-5, angleC);
  }
  
} 
