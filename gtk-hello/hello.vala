using Gtk;
using Granite;

namespace eTorrent {

    public class helloApp : Window {

        public helloApp () {

            // Defining Window

            this.title = "Hello World !";
            this.set_border_width (12);
            this.window_position = WindowPosition.CENTER;
            this.destroy.connect (Gtk.main_quit);
            set_default_size (900, 550);


            // Defining HeaderBar

            var header = new Gtk.HeaderBar ();
            header.set_title ("Hello World !");
            header.show_close_button = true;
            this.set_titlebar (header);

            var label = new Gtk.Label ("Hello again !");
            
            this.add(label);
            
        }


        // Stuff happens here
        
        public static int main (string[] args) {
            
            Gtk.init (ref args);

            var window = new helloApp ();
            window.show_all ();

            Gtk.main ();
            return 0;
        }
    }
}
