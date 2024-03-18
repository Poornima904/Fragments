sap.ui.define([
    "sap/m/MessageBox"

], function(MessageBox) {
    'use strict';
		return{
		handleLinkPress: function (evt) {
			MessageBox.alert("Link was clicked!");
		}
	}
});


    