public with sharing class BoatSearchResults 
{
    @AuraEnabled
    public static List<Boat__c> getBoats(String boatTypeId)
    { 
        try 
        {
            if(String.isEmpty(boatTypeId))
            {
                return [SELECT Id, Name, BoatType__c, Contact__r.Name, Price__c, Length__c, 
                        Picture__c, BoatType__r.Name, Description__c   
                        FROM Boat__c 
                        WITH SECURITY_ENFORCED];
            }
            else
            {
                return [SELECT Id, Name, BoatType__c, Contact__r.Name, Price__c, Length__c, 
                        Picture__c, BoatType__r.Name, Description__c    
                        FROM Boat__c 
                        WHERE Id =: boatTypeId 
                        WITH SECURITY_ENFORCED];
            }
        } 
        catch (Exception e) 
        {
            throw new AuraHandledException(e.getMessage());
        }
              
    }

    @AuraEnabled
    public static List<BoatType__c> getBoatTypes(){
        try 
        {
            return [SELECT Name, Id FROM BoatType__c WITH SECURITY_ENFORCED ORDER BY Name];
        }
        catch (Exception e) 
        {
            throw new AuraHandledException(e.getMessage());
        }
    }
}