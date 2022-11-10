// Trow an error whenever the user try to delete the contact which is not assosiated to an account

trigger ContactBeforeDelete on Contact (before delete) {
    //bulkification
for (Contact c : Trigger.old) {
   if (c.AccountId == null) {
    c.addError('You can\'t delete this record!');
   }
    
}

}