public class ContactHandler {
    public static void beforeInsert(List <Contact> conList) {
for (Contact c : conList) {
    c.Description = 'Created by contact trigger';
}
    }
    public static void beforeUpdate(List <Contact> conList) {
       for (Contact c : conList) {
        c.Description =  'Change made by ' + UserInfo.getName();
       }
            
        }
}


