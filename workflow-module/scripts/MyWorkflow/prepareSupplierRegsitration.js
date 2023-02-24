/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
var vendorId=$.context.SupplierID;
var Questionire=$.context.Questionire;
var sTaskURL = "https://workzone-dev.launchpad.cfapps.us10.hana.ondemand.com/333dcff3-3c09-4546-8d13-7c8136fe5315.supplierregistration.supplierregistration-0.0.1/index.html"
sTaskURL+="?VendorId='"+ vendorId +"',Questionire='"+Questionire+"'";
$.context.taskURL = sTaskURL;
