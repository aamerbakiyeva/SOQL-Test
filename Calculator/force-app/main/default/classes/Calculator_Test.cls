public class Calculator_Test {

    // Create test data - mock data
    // Run the actual code with test data
    // Use System.Assert methods to check data
    
        @isTest
        public static void addingTest(){
            Integer result = Calculator.adding(2, 2);
            system.assertEquals(4, result, 'These numbers are not equal!');
        }
    
        @isTest
        public static void subtrackingTest(){
            Integer result = Calculator.subtracking(4, 2);
            system.assertEquals(2, result, 'These numbers are not equal!');
        }
    
        @isTest
        public static void multiplyingTest(){
            Integer result = Calculator.multiplying(2, 2);
            system.assertEquals(4, result, 'These numbers are not equal!');
        }
    
        @isTest
        public static void dividingTest(){
            Integer result = Calculator.dividing(6, 2);
            system.assertEquals(3, result, 'These numbers are not equal!');
        }
        
    }
