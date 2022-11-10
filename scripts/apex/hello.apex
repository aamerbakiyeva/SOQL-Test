// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

//string tempvar = 'Enter_your_name_here';
//System.debug('Hello World!');
//System.debug('My name is ' + tempvar);

//system.debug(Calculator);

QueueableExample myClass = new QueueableExample();
System.enqueueJob(myClass);

System.enqueueJob(new QueueableExample();

MySchedule myClass = new MySchedule();
System.schedule('My Schedule Apex', '0 0 12 * * ?', myClass);

System.schedule('My Second Schedule Apex', '0 0 13 * * ?', new MySchedule());

Database.executeBatch(new batchAccountUpdate());

Database.executeBatch(UpdateContactDescription());