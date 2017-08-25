PImage img1;  // Declare a variable of type PImage
PImage img2;  // Declare a variable of type PImage

float i = 255;
float increment = 1;
boolean down = true;

void setup() {
  size(480, 360);
  // Make a new instance of a PImage by loading an image file
  img1 = loadImage("download.jpg");
  img2 = loadImage("download1.jpg");
  img2.resize(width, height);
}

void draw() {
  background(img2);
  // Draw the image to the screen at coordinate (0,0)
  tint(255, i);
  image(img1, 0, 0, width, height);
  if (down) {if (i > 0) {i = i-increment;} else {down = false;}} else {if (i < 255) {i = i+increment;} else {down = true;}}
  increment = increment + 1;
  println(increment);
}