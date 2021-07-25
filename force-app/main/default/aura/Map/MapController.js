({
    onPlotMapMarker : function(component, event) {
        
        var locationData = {
            sObjectId : event.getParam("sObjectId"),
            lat : event.getParam("lat"),
            long : event.getParam("long"),
            label : event.getParam("label")
        };
        
        component.set("v.mapMarkers", locationData);
        
    } 
    
})