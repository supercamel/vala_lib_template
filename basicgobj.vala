
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

    public void print_bool(bool t) {
        stdout.printf(t.to_string());
        stdout.printf("\n");
    }

    public int adder(uint8[] v) {
        print("adder\n");
        int r = 0;
        stdout.printf("length is %i\n", v.length);
        stdout.flush();
        for(int i = 0; i < v.length; i++) {
            r += v[i];
        }
        return r;
    }
}


