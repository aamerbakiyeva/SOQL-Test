@istest
public class Contact1_Test {
    // single and multiple record testing
    @istest
    public static void singleContact1_Test() {
        // Create a new Contact to execute trigger
        Contact c = new Contact();
        c.LastName = 'Blue';
        //c.Description = 'Created by contact trigger';
        insert c; // A contact, LastName = Blue, Description = 'Created by contact trigger'

        Contact d = [SELECT Description FROM Contact LIMIT 1];
        System.assertEquals('Created by contact trigger', d.Description);
    }

    @istest
    public static void multipleContact1_Test() {
        // Create a new Contacts to execute trigger
        List<Contact> cons = new List<Contact>();
        
        for (Integer i = 0; i < 5; i++) {
            Contact a = new Contact();
            a.LastName = 'Contact' + i;
            cons.add(a);
        }
        insert cons;

        List<Contact> newList = [SELECT Description FROM Contact];
        for (Contact cn : newList) {
            System.assertEquals('Created by contact trigger', cn.Description);
        }  
        
    }
}







