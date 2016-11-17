int[] data;

void setup(){
  size(800,400,P3D);
  String[] stringFromdata = loadStrings("data.txt");                             // load our file into a string array
  data= int(split (stringFromdata[0],',')); 
fill(255,0,0);  // our string arry only has one item because the file had one line
noStroke();
}                                                                                  // split the String to items using ',' as deliminato                                                                                 
                                                                                   // cast the strings into an int array data[]


void draw(){ 
  lights();
background(0); 
rotateX(mouseY/100.0);
rotateY(mouseX/100.0);
 translate (0,50);  // draw circles based on the numbers in the file
  for (int i = 0;i<data.length;i++){
    translate (50,0);
    sphere(data[i]);
  }
}

