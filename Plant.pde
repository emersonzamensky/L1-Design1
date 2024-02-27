// Set strings, angle, and length for the plant
class plant{
  String str = "S";
  float len = 3;
  float angle = 0.1*PI;

  // Set rules
  void display(){
    //float sWeight = 20;
    for (int i=0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'F':
          //strokeWeight(sWeight);
          line(0,0,len,0);
          translate(len,0);
          break;
         case 'l':
           rotate(-angle);
           break;
          case 'r':
            rotate(angle);
            break;
          case '[':
            pushMatrix();
            break;
          case ']':
            popMatrix();
            break;
          //case 'u':
          //  sWeight *= 0.2;
          //  break;
          //case 'd':
          //  sWeight *= (1.0/0.8);
          //  break;
      }
    }
  }

// Make random
  void expand(){
    String newString = "";
    for(int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'S':
          newString += "FB";
          break;
        case 'F':
          if(random(100) < 50){
            newString += "FF";
          } else {
              newString += "F";
          }
          break;
        case 'B':
        if(random(100) < 50){
          newString += "[ullFB][urFBd]";
        } else {
          newString += "[ullFB][urrFB]";
        }
          break;
        default:
          newString += str.charAt(i);
          break;
      }
    }
    str = newString;
  }
 }
 
 // Base code by programming.chaos, https://www.youtube.com/watch?v=1AB3N3nrVwQ
 
