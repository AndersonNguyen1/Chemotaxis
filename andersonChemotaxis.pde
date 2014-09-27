Fly [] flies;
 
 void setup()   
 {     
     size(500, 500);
     flies = new Fly[20];
     for(int i = 0; i < flies.length; i++)
    {
        flies[i] = new Fly((int)(Math.random()*500), (int)(Math.random()*500));
    }
 } 

 void draw()   
 {   
     drawFlies();
     poop();
 } 

 class Fly    
 {     
     int flyPositionX;
     int flyPositionY;
     int flySize;

    Fly(int x, int y)
    {
        flyPositionX = x;
        flyPositionY = y;
        flySize = 10;
    }

    void walk()
    { 
       if (flyPositionX > mouseX)
       {
       		flyPositionX += (int)(Math.random()*8)-4;			
       }
       else if (flyPositionX < mouseX)
       {
       		flyPositionX += (int)(Math.random()*8)-3;			
       }
       else
       {
       		flyPositionX += (int)(Math.random()*8)-4;
       }

       if (flyPositionY > mouseY)
       {
       		flyPositionY += (int)(Math.random()*8)-4;
       }
       else if (flyPositionY < mouseY)
       {
       		flyPositionY += (int)(Math.random()*8)-3;
       }
       else
       {
       		flyPositionY += (int)(Math.random()*8)-4;
       }
        
    }

    void show()
    {
        fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
        ellipse(flyPositionX, flyPositionY, flySize, flySize);

    }
 } 

 void drawFlies()
 {
     background(#ff4500);
     for(int i = 0; i < flies.length; i++)
     {
     	flies[i].walk();
        flies[i].show();
     }    
 }

 void poop()
 {
     fill(#8b4513);
    ellipse(mouseX, mouseY, 50, 50);
    // face details
    fill(0);
    arc(mouseX, mouseY, 30, 30, PI/8, 7*PI/8);
    fill(255);
    // eyes
    ellipse(mouseX - 7, mouseY - 10, 10, 15);
    ellipse(mouseX + 7, mouseY - 10, 10, 15);
    // pupils
    fill(0);
    ellipse(mouseX - 7, mouseY - 10, 5, 8);
    ellipse(mouseX + 7, mouseY - 10, 5, 8);
    text("Poop", mouseX - 15, mouseY - 30);
 }


