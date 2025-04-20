import java.net.*;
import java.util.*;
public class DSender{
public static void main(String[] args) throws Exception{
DatagramSocket ds = new DatagramSocket();
Scanner sc = new Scanner(System.in);
System.out.println("Enter the message and press ENTER to send : ");
String str = sc.nextLine();
InetAddress ip = InetAddress.getByName("127.0.0.1");
DatagramPacket dp = new DatagramPacket(str.getBytes(),str.length(),ip,1200);
ds.send(dp);
ds.close();
}
}
