PShape s, v;
PFont f, i, p, n, k;
float [] bx=new float[8];
float [] by=new float[8];
float [] angle=new float[8];
boolean [] sobre=new boolean[8];
boolean [] desbloq= new boolean[8];
boolean juego=false, niveles=false, libre=false, juego1=false, juego2=false, juego3=false, nivel1=false, nivel2=false, nivel3=false, siguiente=false, siguiente1=false, siguiente2=false;
;
int [] col=new int[8];
{
  col[1]=-65536;
  col[2]=-16711936;
  col[3]=-16776961;
  col[4]=-27136;
  col[5]=-256;
  col[6]=-16711681;
  col[7]=-65281;
}
color [] o=new color[8];
{
  o[1]=color(255, 0, 0);
  o[2]=color(0, 255, 0);
  o[3]=color(0, 0, 255);
  o[4]=color(255, 150, 0);
  o[5]=color(255, 255, 0);
  o[6]=color(0, 255, 255);
  o[7]=color(255, 0, 255);
}
int c, O;

void setup()
{
  size(1000, 600);
  f = createFont("Arial", 60, true);
  i = createFont("Arial", 60, true);
  p = createFont("Arial", 60, true);
  n = createFont("Arial", 60, true);

  s = createShape();
  s.beginShape();
  s.fill(255);
  s.noStroke();
  s.vertex(830+0, 20);
  s.vertex(830+20, 0);
  s.vertex(830+30, 10);
  s.vertex(830+110, 10);
  s.vertex(830+120, 20);
  s.vertex(830+100, 20);
  s.vertex(830+90, 30);
  s.vertex(830+84, 24 );
  s.vertex(830+56, 24 );
  s.vertex(830+50, 30);
  s.vertex(830+30, 30);
  s.vertex(830+40, 20);
  s.vertex(830+0, 20);
  s.endShape(CLOSE);

  v = createShape();
  v.beginShape();
  v.fill(255);
  v.noStroke();
  v.vertex(0, 0);
  v.vertex(200, 200);
  v.vertex(300, 200);
  v.vertex(350, 250);
  v.vertex(150, 250);
  v.vertex(0, 400);
  v.vertex(0, 250);
  v.vertex(-70.71, 250);
  v.vertex(-141.42, 179.29 );
  v.vertex(-141.42, 79.29 );
  v.vertex(-41.42, 179.29);
  v.vertex(0, 179.29);
  v.vertex(0, 0);
  v.endShape(CLOSE);

  for (int j=1; j<8; j++) {
    sobre[j]=false;
    desbloq[j]=false;
  }
  for (int i=1; i<8; i++) {
    bx[i]=width/2;
    by[i]=height/2;
  }
}

void draw()
{ 
  background(0);
  if (!niveles&&!libre) {
    f = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
    textFont(f);       
    fill(255);
    textAlign(CENTER);
    text("Bienvenido", width/2, 200);
    i = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
    textFont(i);       
    fill(255);
    textAlign(CENTER);
    text("Niveles", width/2, 400);
    p = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
    textFont(p);       
    fill(255);
    textAlign(CENTER);
    text("Libre", width/2, 500);
  }
  if (niveles==true) {
    if (!juego) {
      n = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
      textSize(10);
      textFont(n);       
      fill(255);
      textAlign(CENTER);
      text("Nivel 1", width/2, 200);
      n = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
      textSize(10);
      textFont(n);       
      fill(255);
      textAlign(CENTER);
      text("Nivel 2", width/2, 300);
      n = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
      textSize(10);
      textFont(n);       
      fill(255);
      textAlign(CENTER);
      text("Nivel 3", width/2, 400);
    } else {
      if (juego1==true) {
        k = createFont("Arial", 5, true);
        k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
        textFont(k);       
        fill(255);
        textSize(20);
        textAlign(CENTER);
        text("Figura:", 900, 15 );
        rect(950, 5, 20, 20);
        if (nivel1==true) {
          textFont(k);       
          fill(255);
          textSize(60);
          textAlign(CENTER);
          text("Completado", width/2, 50 );
        }
        for (int i=1; i<8; i++) {
          pushMatrix();
          fill(o[i]);
          translate(bx[i], by[i]);
          rotate(radians(angle[i]));
          if (i==1) {
            triangle(0, 0, 0, 100, 50, 50);
          }
          if (i==2) {
            triangle(0, 0, 0, 100, 50, 50);
          }
          if (i==3) {
            triangle(0, 0, 100, 100, 200, 0);
          }
          if (i==4) {
            triangle(0, 0, 100, 100, 200, 0);
          }
          if (i==5) {
            triangle(0, 0, 0, 100, 100, 0);
          }
          if (i==6) {
            rect(0, 0, 70.71, 70.71 );
          }
          if (i==7) {
            quad(0, 0, 100, 0, 150, 50, 50, 50);
          }
          popMatrix();
        }
        c=get(mouseX, mouseY);
        if (c==-65536) {
          sobre[1]=true;
        } else {
          sobre[1]=false;
        }
        if (c==-16711936) {
          sobre[2]=true;
        } else {
          sobre[2]=false;
        }
        if (c==-16776961) {
          sobre[3]=true;
        } else {
          sobre[3]=false;
        }
        if (c==-27136) {
          sobre[4]=true;
        } else {
          sobre[4]=false;
        }
        if (c==-256) {
          sobre[5]=true;
        } else {
          sobre[5]=false;
        }
        if (c==-16711681) {
          sobre[6]=true;
        } else {
          sobre[6]=false;
        }
        if (c==-65281) {
          sobre[7]=true;
        } else {
          sobre[7]=false;
        }
        if ( ((bx[3]+200)<(bx[4]+15)&&(bx[3]+200)>(bx[4]-15)||(bx[4]+200)<(bx[3]+15)&&(bx[4]+200)>(bx[3]-15)) && ((by[3]+200)<(by[5]+15)&&(by[3]+200)>(by[5]-15)) ) {
          if ( (((by[5]-50)<(by[7]+15)&&(by[5]-50)>(by[7]-15))&&((bx[5]+50)<(bx[7]+15)&&(bx[5]+50)>(bx[7]-15)))  && ( (((by[5]-50)<(by[1]+15)&&(by[5]-50)>(by[1]-15))&& ((bx[5]+50)<(bx[1]+15)&&(bx[5]+50)>(bx[1]-15))) || (((by[5]-50)<(by[2]+15)&&(by[5]-50)>(by[2]-15))&& ((bx[5]+50)<(bx[2]+15)&&(bx[5]+50)>(bx[2]-15)))) ) {
            if ((((bx[3])<(bx[1]+15)&&(bx[3])>(bx[1]-15)||(bx[3])<(bx[2]+15)&&(bx[3])>(bx[2]-15)) || ((bx[4])<(bx[1]+15)&&(bx[4])>(bx[1]-15)||(bx[4])<(bx[2]+15)&&(bx[4])>(bx[2]-15)))&& (((by[3])<(by[1]+15)&&(by[3])>(by[1]-15)||(by[3])<(by[2]+15)&&(by[3])>(by[2]-15)) || ((by[4])<(by[1]+15)&&(by[4])>(by[1]-15)||(by[4])<(by[2]+15)&&(by[4])>(by[2]-15)))  ) {
              if ( (((bx[5]<bx[6]+5)&&((bx[5]>bx[6]-5)))&&((by[5]-100>by[6]-5)&&(by[5]-100<by[6]+5) )) ||(((bx[5]+50<bx[6]+5)&&((bx[5]+50>bx[6]-5)) )&&((by[5]-50>by[6]-5)&&(by[5]-50<by[6]+5))) ||(((bx[5]+100<bx[6]+5)&&((bx[5]+100>bx[6]-5)))&&((by[5]-100>by[6]-5)&&(by[5]-100<by[6]+5))) ||(((bx[5]+50<bx[6]+5)&&((bx[5]+50>bx[6]-5)))&&((by[5]-150>by[6]-5)&&(by[5]-150<by[6]+5)))   ) {
                nivel1=true;
              } else {
                nivel1=false;
              }
            } else {
              nivel1=false;
            }
          } else {
            nivel1=false;
          }
        } else {
          nivel1=false;
        }
        if (nivel1==true) {
          if (siguiente==false) {
            k = createFont("Arial", 5, true);
            k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
            textFont(k);       
            fill(255);
            textSize(60);
            textAlign(CENTER);
            text("Siguiente", width/2, 500 );
          } else {
            juego1=false;
            juego2=true;
          }
        }
      } else {

        if (juego2==true) {
          k = createFont("Arial", 5, true);
          k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
          textFont(k);       
          fill(255);
          textSize(20);
          textAlign(CENTER);
          text("Figura:", 800, 15 );
          shape(s, 25, 25);
          if (nivel2==true) {
            textFont(k);       
            fill(255);
            textSize(60);
            textAlign(CENTER);
            text("Completado", width/2, 50 );
          }
          for (int i=1; i<8; i++) {
            pushMatrix();
            fill(o[i]);
            translate(bx[i], by[i]);
            rotate(radians(angle[i]));
            if (i==1) {
              triangle(0, 0, 0, 100, 50, 50);
            }
            if (i==2) {
              triangle(0, 0, 0, 100, 50, 50);
            }
            if (i==3) {
              triangle(0, 0, 100, 100, 200, 0);
            }
            if (i==4) {
              triangle(0, 0, 100, 100, 200, 0);
            }
            if (i==5) {
              triangle(0, 0, 0, 100, 100, 0);
            }
            if (i==6) {
              rect(0, 0, 70.71, 70.71 );
            }
            if (i==7) {
              quad(0, 0, 100, 0, 150, 50, 50, 50);
            }
            popMatrix();
          }
          c=get(mouseX, mouseY);
          if (c==-65536) {
            sobre[1]=true;
          } else {
            sobre[1]=false;
          }
          if (c==-16711936) {
            sobre[2]=true;
          } else {
            sobre[2]=false;
          }
          if (c==-16776961) {
            sobre[3]=true;
          } else {
            sobre[3]=false;
          }
          if (c==-27136) {
            sobre[4]=true;
          } else {
            sobre[4]=false;
          }
          if (c==-256) {
            sobre[5]=true;
          } else {
            sobre[5]=false;
          }
          if (c==-16711681) {
            sobre[6]=true;
          } else {
            sobre[6]=false;
          }
          if (c==-65281) {
            sobre[7]=true;
          } else {
            sobre[7]=false;
          }
          if ( ((((bx[3]-50<bx[4]+10)&&(bx[3]-50>bx[4]-10))&&((by[3]-50<by[4]+10)&&(by[3]-50>by[4]-10)))||(((bx[4]-50<bx[3]+10)&&(bx[4]-50>bx[3]-10))&&((by[4]-50<by[3]+10)&&(by[4]-50>by[3]-10)))) && ((((by[3])<(by[5]+15)&&(by[3])>(by[5]-15))&&((bx[3]+200)<(bx[5]+15)&&(bx[3]+200)>(bx[5]-15)))||(((by[4])<(by[5]+15)&&(by[4])>(by[5]-15))&&((bx[4]+200)<(bx[5]+15)&&(bx[4]+200)>(bx[5]-15)))) ) {
            if ( (((by[5])<(by[7]+15)&&(by[5])>(by[7]-15))&&((bx[5]+100)<(bx[7]+15)&&(bx[5]+100)>(bx[7]-15)))  && ( (((by[5])<(by[1]+15)&&(by[5])>(by[1]-15))&& ((bx[5]+100)<(bx[1]+15)&&(bx[5]+100)>(bx[1]-15))) || (((by[5])<(by[2]+15)&&(by[5])>(by[2]-15))&& ((bx[5]+100)<(bx[2]+15)&&(bx[5]+100)>(bx[2]-15)))) ) {
              if ((((((by[3]+100)<(by[1]+15))&&((by[3]+100)>(by[1]-15)))||(((by[3]+100)<(by[2]+15))&&((by[3]+100)>(by[2]-15)))) ||((((by[4]+100)<(by[1]+15))&&((by[4]+100)>(by[1]-15)))||(((by[4]+100)<(by[2]+15))&&((by[4]+100)>(by[2]-15)))) )&& (((bx[3])<(bx[1]+15)&&(bx[3])>(bx[1]-15)||(bx[3])<(bx[2]+15)&&(bx[3])>(bx[2]-15)) || ((bx[4])<(bx[1]+15)&&(bx[4])>(bx[1]-15)||(bx[4])<(bx[2]+15)&&(bx[4])>(bx[2]-15)))  ) {
                if ( (((bx[5]+50<bx[6]+5)&&((bx[5]+50>bx[6]-5)))&&((by[5]+50>by[6]-5)&&(by[5]+50<by[6]+5) )) ||(((bx[5]+100<bx[6]+5)&&((bx[5]+100>bx[6]-5)) )&&((by[5]>by[6]-5)&&(by[5]<by[6]+5))) ||(((bx[5]+100<bx[6]+5)&&((bx[5]+100>bx[6]-5)))&&((by[5]+100>by[6]-5)&&(by[5]+100<by[6]+5))) ||(((bx[5]+150<bx[6]+5)&&((bx[5]+150>bx[6]-5)))&&((by[5]+50>by[6]-5)&&(by[5]+50<by[6]+5)))   ) {
                  nivel2=true;
                } else {
                  nivel2=false;
                }
              } else {
                nivel2=false;
              }
            } else {
              nivel2=false;
            }
          } else {
            nivel2=false;
          }
          if (nivel2==true) {
            if (siguiente1==false) {
              k = createFont("Arial", 5, true);
              k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
              textFont(k);       
              fill(255);
              textSize(60);
              textAlign(CENTER);
              text("Siguiente", width/2, 500 );
            } else {
              juego2=false;
              juego3=true;
            }
          }
        } else {
          if (juego3==true) {
            k = createFont("Arial", 5, true);
            k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
            textFont(k);       
            fill(255);
            textSize(20);
            textAlign(CENTER);
            text("Figura:", 800, 15 );
            pushMatrix();
            scale(0.2);
            shape(v, 4500, 0);
            popMatrix();
            if (nivel3==true) {
              textFont(k);       
              fill(255);
              textSize(60);
              textAlign(CENTER);
              text("Completado", width/2, 50 );
            }
            for (int i=1; i<8; i++) {
              pushMatrix();
              fill(o[i]);
              translate(bx[i], by[i]);
              rotate(radians(angle[i]));
              if (i==1) {
                triangle(0, 0, 0, 100, 50, 50);
              }
              if (i==2) {
                triangle(0, 0, 0, 100, 50, 50);
              }
              if (i==3) {
                triangle(0, 0, 100, 100, 200, 0);
              }
              if (i==4) {
                triangle(0, 0, 100, 100, 200, 0);
              }
              if (i==5) {
                triangle(0, 0, 0, 100, 100, 0);
              }
              if (i==6) {
                rect(0, 0, 70.71, 70.71 );
              }
              if (i==7) {
                quad(0, 0, 100, 0, 150, 50, 50, 50);
              }
              popMatrix();
            }
            c=get(mouseX, mouseY);
            if (c==-65536) {
              sobre[1]=true;
            } else {
              sobre[1]=false;
            }
            if (c==-16711936) {
              sobre[2]=true;
            } else {
              sobre[2]=false;
            }
            if (c==-16776961) {
              sobre[3]=true;
            } else {
              sobre[3]=false;
            }
            if (c==-27136) {
              sobre[4]=true;
            } else {
              sobre[4]=false;
            }
            if (c==-256) {
              sobre[5]=true;
            } else {
              sobre[5]=false;
            }
            if (c==-16711681) {
              sobre[6]=true;
            } else {
              sobre[6]=false;
            }
            if (c==-65281) {
              sobre[7]=true;
            } else {
              sobre[7]=false;
            }
          }
        }
      }
    }
    if ( ((((bx[3]+200<bx[4]+10)&&(bx[3]+200>bx[4]-10))&&((by[3]+200<by[4]+10)&&(by[3]+200>by[4]-10)))||(((bx[4]+200<bx[3]+10)&&(bx[4]+200>bx[3]-10))&&((by[4]+200<by[3]+10)&&(by[4]+200>by[3]-10)))) && ((((by[3]+180)<(by[5]+15)&&(by[3]+180)>(by[5]-15))&&((bx[3]-141)<(bx[5]+15)&&(bx[3]-141)>(bx[5]-15)))||(((by[4]+180)<(by[5]+15)&&(by[4]+180)>(by[5]-15))&&((bx[4]-141)<(bx[5]+15)&&(bx[4]-141)>(bx[5]-15)))) ) {
      /*if ( (((by[5]+20)<(by[7]+15)&&(by[5]+20)>(by[7]-15))&&((bx[5]+341)<(bx[7]+15)&&(bx[5]+341)>(bx[7]-15)))  && ( (((by[5])<(by[1]+15)&&(by[5])>(by[1]-15))&& ((bx[5])<(bx[1]+15)&&(bx[5])>(bx[1]-15))) || (((by[5])<(by[2]+15)&&(by[5])>(by[2]-15))&& ((bx[5])<(bx[2]+15)&&(bx[5])>(bx[2]-15)))) ) {
       if ((((((by[3]+250)<(by[1]+15))&&((by[3]+250)>(by[1]-15)))||(((by[3]+250)<(by[2]+15))&&((by[3]+250)>(by[2]-15)))) ||((((by[4]+250)<(by[1]+15))&&((by[4]+250)>(by[1]-15)))||(((by[4]+250)<(by[2]+15))&&((by[4]+250)>(by[2]-15)))) )&& (((bx[3]+150)<(bx[1]+15)&&(bx[3]+150)>(bx[1]-15)||(bx[3]+150)<(bx[2]+15)&&(bx[3]+150)>(bx[2]-15)) || ((bx[4]+150)<(bx[1]+15)&&(bx[4]+150)>(bx[1]-15)||(bx[4]+150)<(bx[2]+15)&&(bx[4]+150)>(bx[2]-15)))  ) {
       if ( (((bx[5]+70<bx[6]+5)&&((bx[5]+70>bx[6]-5)))&&((by[5]>by[6]-5)&&(by[5]<by[6]+5) )) ||(((bx[5]+141<bx[6]+5)&&((bx[5]+141>bx[6]-5)) )&&((by[5]>by[6]-5)&&(by[5]<by[6]+5))) ||(((bx[5]+70<bx[6]+5)&&((bx[5]+70>bx[6]-5)))&&((by[5]+70>by[6]-5)&&(by[5]+70<by[6]+5))) ||(((bx[5]+141<bx[6]+5)&&((bx[5]+141>bx[6]-5)))&&((by[5]+70>by[6]-5)&&(by[5]+70<by[6]+5)))   ) {
       nivel3=true;
       } else {
       nivel3=false;
       }
       } else {
       nivel3=false;
       }
       } else {
       nivel3=false;
       }
       */
      nivel3=true;
    } else {
      nivel3=false;
    }
    if (nivel3==true) {
      if (siguiente2==false) {
        k = createFont("Arial", 5, true);
        k = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw"); 
        textFont(k);       
        fill(255);
        textSize(60);
        textAlign(CENTER);
        text("Modo libre", width/2, 500 );
      } else {
        juego3=false;
        libre=true;
      }
    }
  }
  if (juego==true) {
    for (int i=1; i<8; i++) {
      pushMatrix();
      fill(o[i]);
      translate(bx[i], by[i]);
      rotate(radians(angle[i]));
      if (i==1) {
        triangle(0, 0, 0, 100, 50, 50);
      }
      if (i==2) {
        triangle(0, 0, 0, 100, 50, 50);
      }
      if (i==3) {
        triangle(0, 0, 100, 100, 200, 0);
      }
      if (i==4) {
        triangle(0, 0, 100, 100, 200, 0);
      }
      if (i==5) {
        triangle(0, 0, 0, 100, 100, 0);
      }
      if (i==6) {
        rect(0, 0, 70.71, 70.71 );
      }
      if (i==7) {
        quad(0, 0, 100, 0, 150, 50, 50, 50);
      }
      popMatrix();
    }
    c=get(mouseX, mouseY);
    if (c==-65536) {
      sobre[1]=true;
    } else {
      sobre[1]=false;
    }
    if (c==-16711936) {
      sobre[2]=true;
    } else {
      sobre[2]=false;
    }
    if (c==-16776961) {
      sobre[3]=true;
    } else {
      sobre[3]=false;
    }
    if (c==-27136) {
      sobre[4]=true;
    } else {
      sobre[4]=false;
    }
    if (c==-256) {
      sobre[5]=true;
    } else {
      sobre[5]=false;
    }
    if (c==-16711681) {
      sobre[6]=true;
    } else {
      sobre[6]=false;
    }
    if (c==-65281) {
      sobre[7]=true;
    } else {
      sobre[7]=false;
    }
  }
}


void mousePressed() {
  for (int i=1; i<8; i++) {
    if (sobre[i]==true) {
      desbloq[i]=true;
      if (mouseButton==RIGHT) {
        angle[i]=angle[i]+45;
      }
    } else {
      desbloq[i]=false;
    }
  }
}  
void mouseDragged() {
  for (int i=1; i<8; i++) {
    if (desbloq[i]==true) {
      if (mouseButton==LEFT) {
        translate(bx[i]=mouseX, by[i]=mouseY);
        for (int j=1; j<8; j++) {
          if (bx[i]-bx[j]<15&&bx[i]-bx[j]>0) {
            bx[i]=bx[j];
          }
          if (by[i]-by[j]<15&&by[i]-by[j]>0) {
            by[i]=by[j];
          }
        }
      }
    }
  }
}
void mouseClicked() {
  if (!niveles) {
    if ((mouseX<600&&mouseX>400)&&(mouseY<400&&mouseY>350)) {
      niveles=true;
    }
  } else {
    if ((mouseX<600&&mouseX>400)&&(mouseY<200&&mouseY>150)&&(juego2==false)&&(juego3==false)) {
      juego=true;
      juego1=true;
    } else {
      if ((mouseX<600&&mouseX>400)&&(mouseY<300&&mouseY>250)&&(juego3==false)) {
        juego=true;
        juego2=true;
      } else {
        if ((mouseX<600&&mouseX>400)&&(mouseY<400&&mouseY>350)&&!libre) {
          juego=true;
          juego3=true;
        }
      }
    }
  }
  if (nivel1==true) {
    if ((mouseX<600&&mouseX>400)&&(mouseY<600&&mouseY>300)&&(!libre)&&(!juego2)&&(!juego3)) {
      siguiente=true;
    }
  }
  if (nivel2==true) {
    if ((mouseX<600&&mouseX>400)&&(mouseY<600&&mouseY>300)&&(!libre)&&(!juego3)) {
      siguiente1=true;
    }
  }
  if (nivel3==true) {
    if ((mouseX<600&&mouseX>400)&&(mouseY<600&&mouseY>300)&&(!libre)) {
      siguiente2=true;
    }
  }
  if (!libre) {
    if ((mouseX<555&&mouseX>425)&&(mouseY<5000&&mouseY>460)) {
      libre=true;
      juego=true;
    }
  }
}