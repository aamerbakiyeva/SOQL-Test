// populate contact description with modified user name when ser updates contact
trigger Contact2 on Contact (before update) {

    for (Contact c : Trigger.new) {
        c.Description =  'Change made by ' + UserInfo.getName();
    }
}