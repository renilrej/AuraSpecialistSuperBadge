({
	doInit : function(component, event, helper) {
		var navigateToBoatObject = $A.get("e.force:navigateToSObject");
        
        if (navigateToBoatObject) {
            component.set("v.showDetailsButton", true);
        }
	},
    
    onFullDetails : function(component, event, helper) {
		var navigateToBoatObject = $A.get("e.force:navigateToSObject");
        var boat = component.get("v.boat");
        
        if(boat){
            navigateToBoatObject.setParams({
               "recordId" : boat.Id
            }); 
            navigateToBoatObject.fire();
        }
	},
    
})