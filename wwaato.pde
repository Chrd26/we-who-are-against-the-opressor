Worker worker;

void setup()
{
  size(1200, 800);
  worker = new Worker();
  worker.MoveWorker(mouseX, mouseY);
}

void draw()
{
  background(0);
  worker.MoveWorker(mouseX, mouseY);
}
