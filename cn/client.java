import java.io.*;
import java.net.Socket;

class Client
   {
    public static void main(String[] args) throws Exception {
        try {
            Socket sock = new Socket("127.0.0.1", 4000);

            System.out.print("Enter the file name: ");
            BufferedReader keyRead = new BufferedReader(new InputStreamReader(System.in));
            String fname = keyRead.readLine();

            OutputStream ostream = sock.getOutputStream();
            PrintWriter pwrite = new PrintWriter(ostream, true);
            pwrite.println(fname);

            System.out.println("Contents of the file: ");
            InputStream istream = sock.getInputStream();
            BufferedReader socketRead = new BufferedReader(new InputStreamReader(istream));

            String str;
            while ((str = socketRead.readLine()) != null)
            {
                System.out.println(str);
            }

            pwrite.close();
            socketRead.close();
            keyRead.close();
            sock.close();
        } catch (IOException e)
        {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

