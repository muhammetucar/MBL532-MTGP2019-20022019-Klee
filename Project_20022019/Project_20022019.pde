//Screen size

int[][] kirmizilar = new int[8][8];

void setup()
{
  size (900, 900);
  int rnd;

  for (int j = 0; j < 8; j++)
  {
    for (int i = 0; i < 8; i++)
    {
      rnd = int(random(2));
      if (rnd == 0)
      {
      
      kirmizilar[i][j]= 0;
      }
      
      else if (rnd == 1)
      {
         kirmizilar[i][j]= 1;
      }
      
    }
  }
}

void mousePressed()
{
  redraw();
}

void draw()
{
  fill(175, 155, 105);
  rectMode(CENTER);
  rect(width / 2, height / 2, 0.96 * width, 0.96 * height);

  {
    int k1=0, k2=0, k3=0, k4=0;
    for (int i= 0; i < 8; i++)
    {
      for (int j= 0; j < 8; j++)
      {
        k1 = k1 + int(random(0, i));
        k1 = (k1 % 8);

        k2 = k2 + int(random(0, j));
        k2 = (k2 % 8);

        k3 = k3 + int(random(0, i));
        k3 = (k3 % 7);

        k4 = k4 + int(random(0, j));
        k4 = (k4 % 7);



        noLoop();

        ellipseMode(RADIUS);
        stroke(1);

        fill(random(235, 245), random(215, 225), random(165, 175));
        circle((k1 * 0.96 * width/8) + 0.96 * width/16 + 0.02 * width, (k2 * 0.96 * height/8) + (0.96 * width/16) + 0.02 * width, (height - 0.04 * width) / 18);

        noStroke();
        fill(random(65, 205), random(35, 55), random(25, 45), 99.5);
        circle((k3 * 0.96 * width/8) + 0.96 * width/8 + 0.02 * width, (k4 * 0.96 * height/8) + (0.96 * width/8) + 0.02 * width, (height - 0.04 * width) / 20);

        stroke(1);
        line((random(0, k3) * 0.96 * width/8) + 0.96 * width/8 + 0.02 * width, (random(0, k4) * 0.96 * height/8) + (0.96 * width/8) + 0.02 * width, (random(k1) * 0.96 * width/8) + 0.96 * width/8 + 0.02 * width, (random(k2) * 0.96 * height/8) + (0.96 * width/8) + 0.02 * width);
        println(k1, k2, i, j);


        for (int t = 0; t < 8; t++)
        {
          for (int y = 0; y < 8; y++)
          {
            ellipseMode(CENTER);
            
            if (kirmizilar[y][t] == 0)
            {
            }
            else if (kirmizilar[y][t] == 1)
            {
            fill(255, 0, 0, 50);
            ellipse( width / 16 + y * width/8, height / 16 + t * height/8, width/8 * 0.6, height/8 * 0.6);
            }
          }
        }



        if (keyPressed == true)
        { 
          if (keyCode == UP)
          {
            save ("MuhammetUcar_" + "Klee" + hour() + "_" + second() + "_" + day() + month() + year() + ".jpg");
          }
        }
      }
    }
  }
}
