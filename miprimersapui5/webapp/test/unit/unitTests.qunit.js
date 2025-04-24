/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"sap/demo/miprimersapui5/miprimersapui5/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
