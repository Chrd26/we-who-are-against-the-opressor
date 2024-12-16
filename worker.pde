public class Worker
{
  float currX = width/2, currY = height/2;
  int movementDirectionX = 1, movementDirectionY = 1;
  float speed = 5.0;
  int radius = 50;
  
  void MoveWorker(float getMouseX, float getMouseY){ 
    GenerateWorker();
  }
  

  void GenerateWorker()
  {
    stroke(255, 255, 255);
    noFill();
    SetMovementdirection();
    //currX += speed * movementDirectionX;
    //currY += speed * movementDirectionY;
    circle(currX, currY, radius);
    GenerateRayCast(RaycastPosition.UP);
    GenerateRayCast(RaycastPosition.RIGHT);
    GenerateRayCast(RaycastPosition.DOWN);
    GenerateRayCast(RaycastPosition.LEFT);
  }
  
  
  void GenerateRayCast(RaycastPosition position)
  {
    int setLineLength = 200;
    stroke(0, 255, 255);
   
  }
  
  
  void SetMovementdirection(){
    if (currX >= width || currX <= 0)
    {
      movementDirectionX *= -1;
    }
    
    
    if (currY >= height || currY <= 0)
    {
      movementDirectionY *= -1;
    }
  }
  
}
