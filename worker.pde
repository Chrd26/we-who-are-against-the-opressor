public class Worker
{
  float currX = width/2, currY = height/2;
  int movementDirectionX = 1;
  int movementDirectionY= 1;
  int speed = 5;
  int radius = 30;
  boolean left = false;
  boolean up = false;
  
  void MoveWorker(float getMouseX, float getMouseY)
  { 
    float xLocationComparedToWorker = getMouseX - currX;
    float yLocationComparedToWorker = getMouseY - currY;
    
    SetMovementDirection(xLocationComparedToWorker, yLocationComparedToWorker);
    GenerateWorker();
  }
  

  void GenerateWorker()
  {
    stroke(255, 255, 255);
    noFill();
    currX += speed * movementDirectionX;
    currY += speed * movementDirectionY;
    //currX = width/2;
   // currY = height/2;
    circle(currX, currY, radius);
  }
  
  void SetMovementDirection(float xLocationComparedToWorker, float yLocationComparedToWorker)
  {
    boolean change = false;
    
    if (currX >= width || currX <= 0)
    {
      left = !left;
      change = true;
    }
    
    if (currY >= height || currY <= 0)
    {
      up = !up;
      change = true;
    }
    
    
    if (left && change)
    {
      movementDirectionX = -1;
    }else
    {
      movementDirectionX = 1;
    }
    
   
    if (up && change)
    {
      movementDirectionY = -1;
    }
    else
    {
      movementDirectionY = 1; 
    }
    
    if (change)
    {
      return;
    }
    
    println("Current X: " + xLocationComparedToWorker);
    println("Current Y: " + yLocationComparedToWorker);
    
    if (xLocationComparedToWorker <= 50 && xLocationComparedToWorker >= 0 || xLocationComparedToWorker >= -50 && xLocationComparedToWorker < 0)
    {    
      if (yLocationComparedToWorker > 50 || yLocationComparedToWorker < -50)
      {
        return;
      }
      
      if (currX < width && currX > 0)
      {
        println("Change direction");
         left = !left;
         up = !up;
         return;
      }
    }
    
    
    if (left)
    {
      movementDirectionX = -1;
    }else
    {
      movementDirectionX = 1;
    }
    
   
    if (up)
    {
      movementDirectionY = -1;
    }
    else
    {
      movementDirectionY = 1; 
    }
  }
}
