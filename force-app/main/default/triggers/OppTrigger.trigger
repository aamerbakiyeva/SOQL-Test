trigger OppTrigger on Opportunity (before update) {
system.debug ('Trigger.New:' + Trigger.new);
system.debug ('Trigger.Old:' + Trigger.old);
system.debug ('Trigger.NewMap:' + Trigger.newMap);
system.debug ('Trigger.OldMap:' + Trigger.oldMap);
for (Opportunity o : Trigger.new) {
    o.Description = 'Updated by Trigger';
}
}