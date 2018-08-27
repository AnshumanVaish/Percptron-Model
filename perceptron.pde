perseptron b;
point[] points=new point[100];
 void setup(){
   size(400,400);
   b=new perseptron();
   for(int i=0;i<points.length;i++)
   {
   points[i]= new point();
   } 
 }
 void draw(){
   background(255);
   stroke(0);
   line(0,0,width,height);
   for(point p:points){
     p.show();
   }
   for (point p :points){
     float[] inputs={p.x,p.y};
     int target= p.label;
     
     int guess=b.guess(inputs);
     if(guess==target)
     fill(0,255,0);
     else
     fill(255,0,0);
     noStroke();
     ellipse(p.x,p.y,4,4);
    }
 }
  void mousePressed()
  {
     for (point p :points){
     float[] inputs={p.x,p.y};
     int target= p.label;
     b.train(inputs,target);
    
   }
  }
    
  
 