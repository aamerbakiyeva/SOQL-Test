trigger Contact4 on Contact (before insert, before update) {
    for (Contact c : Trigger.new) {
      /*  if (Trigger.isBefore && Trigger.isInsert) {
            ContactHandler.beforeInsert(Trigger.new);
            
        }
       if (trigger.isBefore && Trigger.isUpdate) {
        ContactHandler.beforeUpdate(Trigger.new);
       }     
        }
    }
*/
switch on Trigger.OperationType {
    when BEFORE_INSERT {
        ContactHandler.beforeInsert(Trigger.new);
    }
    when else BEFORE_UPDATE {
        ContactHandler.beforeUpdate(Trigger.new); 
    }
}