({
    handleClick : function(component, event, helper) {
        var attibuteValue = component.get ("v.text");
        console.log("Current text: " +attibuteValue);

        var target = event.getSource();
        component.set("v.text", target.get("v.lable"));
    }
})
