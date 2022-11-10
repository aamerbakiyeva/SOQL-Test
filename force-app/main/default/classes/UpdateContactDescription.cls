/* 
Create a batch class to update Contacts:
1. Description of Contact should be updated with
"Title of AccountName : Account's Description"
2. Contact which does not have any Account associated with it, should not be updated.
*/

public class UpdateContactDescription implements Database.Batchable<sObject> {
    //Getting all the contacts
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Id, Account.Name, Title, Description, Account.Description FROM Contact WHERE AccountId != null';
        return Database.getQueryLocator(query);
    }
    //Go through the each Contact and update Description
    public void execute(Database.BatchableContext bc, List<Contact> scope){
        List<Contact> updatedList = new List<Contact>();

        if (scope != null) {
            for (Contact c : scope) {
                c.Description = c.Title + ' of ' + c.Account.Name + ':' + c.Account.Description;
                updatedList.add(c);
            }
            update updatedList;
        }
    }

    //Execute optional code
    public void finish(Database.BatchableContext bc){
        System.debug('Update Contact Description Batch Apex Executed');
    }
}