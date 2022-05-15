$(document).on("click", "#btnSave", function(event)
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateRegisterForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
var type = ($("#hidUnit_Record_IdSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "UnitsAPI", 
 type : type, 
 data : $("#formUnit").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onUnitSaveComplete(response.responseText, status); 
 } 
 }); 
});

function onUnitSaveComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 }
$("#hidUnit_Record_IdSave").val(""); 
$("#formRegister")[0].reset(); 
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{ 
		$("#hidUnit_Record_IdSave").val($(this).data("Unit_Record_Id")); 
		 $("#Tariff_Block").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#Charge_per_Unit").val($(this).closest("tr").find('td:eq(1)').text());  
		 $("#Type").val($(this).closest("tr").find('td:eq(3)').text());
		});




$(document).on("click", ".btnRemove", function(event)
		{ 
		 $.ajax( 
		 { 
		 url : "UnitsAPI", 
		 type : "DELETE", 
		 data : "Unit_Record_Id=" + $(this).data("Unit_Record_Id"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
		 onUnitDeleteComplete(response.responseText, status); 
		 } 
		 }); 
		});
		
function onUnitDeleteComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 } 
}


// CLIENT-MODEL================================================================
function validateRegisterForm()
{
	// NAME
	if ($("#Tariff_Block").val().trim() == "")
	{
	return "Insert Tariff Block.";
	}
	// ADDRESS
	if ($("#Charge_per_Unit").val().trim() == "")
	{
	return "Insert Charge Per Unit.";
	}
	// PHONE
	if ($("#Type").val().trim() == "")
	{
	return "Insert Type.";

}

	return true;
}