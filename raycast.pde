public static enum RaycastPosition{
    UP,
    RIGHT,
    DOWN,
    LEFT
}

public class RayCast
{
  void GenerateCast(RaycastPosition position, float posX, float posY)
  {
    switch (position)
    {
      case UP:
        for (int i = 0; i < setLineLength; i++)
        {
          if (posX + i >= mouseX && mouseX > posX)
          {
            if (IsCursorDetected())
            {
              break;
            }
          }
          point(posX, posY - i);
        }
        break;
      case RIGHT:
         for (int i = 0; i < setLineLength; i++)
        {
          if (posX + i >= mouseX && mouseX > posX)
          {
            if (IsCursorDetected())
            {
              break;
            }
          }
          point(posX + i, posY);
        }
        break;
       case DOWN:
         for (int i = 0; i < setLineLength; i++)
        {
          if (posX + i >= mouseX && mouseX > posX)
          {
            if (IsCursorDetected())
            {
              break;
            }
          }
          point(posX, posY + i);
        }
         break;
       case LEFT:
        for (int i = 0; i < setLineLength; i++)
        {
          if (posX + i >= mouseX && mouseX > posX)
          {
            if (IsCursorDetected())
            {
              break;
            }
          }
          point(posX - i, posY);
        }
         break;
        default:
         println("Value does not exist");
         break;
      }
  }
  
  boolean IsCursorWithinHeight(float posX, float posY)
  {
    for (float j = -1 * radius/2; j < radius * 0.5; j++)
    { 
      if (posY + j == mouseY)
      {
        return true;
      }
    }
    
    return false;
  }
  
};
