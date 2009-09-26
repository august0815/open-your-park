

namespace Engine {

  public class Scene : Object {
    private Settings settings;
    
    
    public Scene () {
      Log.debug("Scene initializing");
      settings.load_settings ("settings/scenes/01");
      
      
    }
    
    public void initialize () {
      if (SDL.init(SDL.InitFlag.VIDEO) >= 0)
      {
        weak SDL.Screen screen = SDL.Screen.set_video_mode (640, 480, 16, SDL.SurfaceFlag.HWSURFACE | SDL.SurfaceFlag.DOUBLEBUF);
        if (screen != null)
        {
          Environment.atexit (SDL.quit);
   
          SDL.RWops src = new SDL.RWops.from_file ("valide.bmp", "rb");
          SDL.Surface bmp = SDLImage.load_bmp (src);
          if (bmp != null)
          {
            bool done = false;
    
            while (!done)
            {
              SDL.Event event = SDL.Event ();
    
              while (SDL.Event.poll (event) != 0)
              {
                switch (event.type)
                {
                  case SDL.EventType.QUIT:
                    done = true;
                  break;
    
                  case SDL.EventType.KEYDOWN:
                    switch (event.key.keysym.sym)
                    {
                      case SDL.KeySymbol.ESCAPE:
                        done = true;
                      break;
                    }
                  break;
                }
              }
    
              /* DRAWING STARTS HERE */
    
              screen.fill (null, screen.format.map_rgb (0, 0, 0));
    
              SDL.Rect dstrect = SDL.Rect ();
              dstrect.x = (int16)(screen.w - bmp.w) / 2;
              dstrect.y = (int16)(screen.h - bmp.h) / 2;
    
              bmp.blit (null, screen, dstrect);
    
              /* DRAWING ENDS HERE */
    
              screen.flip ();
            }
          }
          else
          {
            print ("Unable to load bitmap: %s\n", SDL.get_error ());
          }
        }
        else
        {
          print ("Unable to set 640x480 video: %s\n", SDL.get_error ());
        }
      }
      else
      {
        print ("Unable to init SDL: %s\n", SDL.get_error ());
      }
    }
  }

}