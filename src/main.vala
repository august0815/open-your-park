
public class Main {
  public static int main (string[] argv) {
    //Engine.Log.set_mode("verbose");
    //Engine.Log.log("Program started");
    
    Engine.Scene scene = new Engine.Scene ();
    scene.initialize();
    
   // string filename = "data/settings";
   // Json.Parser parser = new Json.Parser ();
   // bool success = parser.load_from_file (filename);
   // stdout.printf ("\nSuccess: %i\n",(int)success);
    
  //  unowned Json.Node root = parser.get_root ();
    //stdout.printf ("\nHEY; %s\n", root.get_string() );
    
    //Engine.Log.log ("screenx: ", 7);//, Engine.Settings.screen_x);
    
    return 0;
  }
}


