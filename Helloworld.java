public class Helloworld{
  public static void main(String args[]){
    while(true){
      System.out.println("hello world");
      try{
        Thread.sleep(60000);

       }
      catch(Exception ex){
        System.out.println(ex);
       }
     }
   }
}
