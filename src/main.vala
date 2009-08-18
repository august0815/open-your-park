// Film: "21 gram", "W"

public class Main {
  public static int main (string[] argv) {
    Engine.Scene scene = new Engine.Scene ();
    
    string filename = "data/settings";
    Json.Parser parser = new Json.Parser ();
    bool success = parser.load_from_file (filename);
    stdout.printf ("\nSuccess: %i\n",(int)success);
    
    unowned Json.Node root = parser.get_root ();
    //stdout.printf ("\nHEY; %s\n", root.get_string() );
    
    stdout.printf ("screenx: ");//, Engine.Settings.screen_x);
    
    return 0;
  }
}


