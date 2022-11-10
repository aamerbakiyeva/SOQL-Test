@istest
public class Contact2_Test {
    @istest
    public static void singleContact2_Test() {
        //Create Record
        Contact c1 = new Contact();
        c1.LastName = 'Contact1';
        insert c1;

        //Update Record
        Contact c2 = [SELECT LastName FROM Contact LIMIT 1];
        c2.LastName = 'Contact2';
        //c2.Description = 'Change made by ' + UserInfo.getName();
        update c2;

        //Testing
        Contact c3 = [SELECT Description FROM Contact LIMIT 1];
        System.assertEquals('Change made by Aida Amerbakiyeva', c3.Description);

    }

    @istest
    public static void multipleContact2_Test() {
        List<Contact> firstList = new List<Contact>();

        for (Integer i = 0; i < 5; i++) {
            Contact c = new Contact();
            c.LastName = 'Contact' + i;
            firstList.add(c);
        }
        insert firstList;

        List<Contact> secondList = [SELECT LastName FROM Contact];
        List<Contact> thirdList = new List<Contact>();

        for (Contact c2 : secondList) {
            c2.LastName = c2.LastName + 1;
            thirdList.add(c2);
        }
        update thirdList;

        List<Contact> forthList = [SELECT Description FROM Contact];

        for (Contact c3 : forthList) {
            system.assertEquals('Change made by Aida Amerbakiyeva', c3.Description);
        }

    }
}









