public class UpdateAccount {
   public static void updateTest(){
   
    List<Account> accList = [Select Id, Name, Industry, Description From Account Where Industry = 'Consulting'];
    List<Account> UpdatedList = new List<Account>();

    for (Account a : accList){
        a.Description='Test';
        UpdatedList.add(a);    
    }       
    update UpdatedList;
}
    }