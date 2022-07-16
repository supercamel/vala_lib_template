
namespace BasicGObj 
{
    public class Thing: Object {
        public Thing() {
            print("constructor\n");
        }

        ~Thing() {

        }

        public int add(int a, int b) {
            return a + b;
        }
    }
}


