
Bone bone = new Bone(5);
Bone draggedBone;

float time = 0; // how many seconds have passed since the starting the app


void setup() {
  size(600, 600);
}

// ticks every 1/60th of a sec. (think of this like the update in C#)
void draw() {

  background(128);

  time = millis()/1000.0; // calc time

  if (draggedBone != null) draggedBone.drag();
  bone.calc();
  bone.draw();
}

void mousePressed() {
  //bone = new Bone(5);

  Bone clickedBone = bone.onClick();

  if (Keys.SHIFT()) {

    if (clickedBone != null) {

      clickedBone.addBone(1);
    }
  } else { // no keys held:

    draggedBone = clickedBone;   // start dragging
  }
}

void mouseReleased() {
  draggedBone = null; // stop dragging
}
