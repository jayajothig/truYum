function deleteRow(){
	var index, table = document.getElementById('info');
	for(var i = 1; i < table.rows.length; i++)
            {
                table.rows[i].cells[3].onclick = function()
                {
                	index = this.parentElement.rowIndex;
                	table.deleteRow(index);
                	//console.log(index);

                }

                
            }


}

function calTotal(){
	var tt=document.getElementById("info");
	var sum=0;
	for(var i=1;i<tt.rows.length-1;i++){
		var arr=[];
		var s=tt.rows[i].cells[2].innerHTML;
		arr=s.split(" ");
		sum=sum+parseInt(arr[1]);
	}
		//console.log(sum);
		document.getElementById("total").innerHTML="Rs. "+sum+".00";
		if(sum=="0.00"){
			emptycart();
		}

}



function emptycart() {
        window.location.replace("cart-empty.html");
} 


function formValidate(){
		var title=document.getElementById("food").value;
		var p=document.getElementById("price").value;
		var datol=document.getElementById("dateOfLaunch").value;
		

		if((title.length)>=2 && (title.length)<=65){
			
			window.open("edit-menu-item-status.html");
		}

		else{
			alert("Invalid Inputs");
		}
		dol=Date.parse(datol);
		if(isNaN(dol)){
			alert("Invalid Inputs");
			
		}

		

}




