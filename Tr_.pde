float mouse;
float tal;
float grene;

void setup(){
size (800,800);
rectMode(CENTER);
background (0);
stroke(200,0,255);
}

void draw(){
  clear();
  tal = 0;
tegnGren(width/2,height,150,mouse/20);
mouse = mouseX-400;
 if (frameCount % 3 == 0) {
    grene++;
  }
}

void tegnGren(float x, float y, float l, float v){
PVector p = new PVector (0, -l);
p.rotate(radians(v));
line(x,y,x+p.x,y+p.y);

if(l>20){
  if(tal<=grene){
  tal++;
  tegnGren(x+p.x,y+p.y,l*0.8,v-25+(mouse/10));
  if(tal<=grene){
  tal++;
   tegnGren(x+p.x,y+p.y,l*0.8,v+25+(mouse/10));
  }
}
}
}
