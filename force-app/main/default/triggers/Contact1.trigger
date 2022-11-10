// Populate contact description when user creates contact

trigger Contact1 on Contact (before insert) {
    // bulkification
    // before trigger - No DML
    for (Contact c : Trigger.new) {
        c.Description = 'Created by contact trigger';
    }
}