sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent"
], (Controller, UIComponent) => {
    "use strict";

    return Controller.extend("appviewcatalog.controller.Main", {
        onInit() {
        },
        onPressTile: function(){
            console.log("presionaste el titulo");
            let oRouter = UIComponent.getRouterFor(this);
            oRouter.navTo("ViewList");

        }
    });
});