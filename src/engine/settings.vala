
namespace Engine {
  
  // Singleton class
  public class Settings : Object {
    public static int screen_x { get; set; }
    
    public static bool load_settings (string filename) {
      //screen_x = 3;
      
      return true;
    }
    
  }
}