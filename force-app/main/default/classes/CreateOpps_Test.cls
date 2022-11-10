@istest
Public class CreateOpps_Test {
    @istest
    Public Static Void newOpps_Test() {
        CreateOpps.newOpps(); 

       Opportunity o = [SELECT Id, Name, StageName FROM Opportunity WHERE Name = 'New Opportunity'];

       System.assertEquals('New Opportunity', o.Name);
       System.assertEquals('Qualification', o.StageName);
      
    }
}