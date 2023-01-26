function Inint_AJAX() 
{
	try 
	{ 
		return new ActiveXObject("Msxml2.XMLHTTP");  
	} 
	catch(e) 
	{} //IE
	try 
	{ 
		return new ActiveXObject("Microsoft.XMLHTTP"); 
	} 
	catch(e) {} //IE
	try 
	{ 
		return new XMLHttpRequest(); 
	} catch(e) {} //Native Javascript
	alert("XMLHttpRequest not supported");
	return null; 
};
		
/*function changeWard(ward,val) 
{
	var req = Inint_AJAX();
	req.onreadystatechange = function () 
	{ 
		document.getElementById('wardLoader').innerHTML="<img src='images/ajax-loader.gif' />";
		if (req.readyState==4)
		{
			if (req.status==200) 
			{
				document.getElementById('wardLoader').innerHTML=" ";
				document.getElementById('ward').innerHTML=req.responseText; 
							//alert(req.responseText);
			} 
		}
	};
	req.open("GET", "dropdown1.php?data="+ward+"&val="+val); 
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=tis-620"); // set Header
	req.send(null); 
}
window.onLoad=changeWard('ward',-1);   */

function changeBlock(block,val) 
{
	var req = Inint_AJAX();
	req.onreadystatechange = function () 
	{ 
		document.getElementById('blockLoader').innerHTML="<img src='images/ajax-loader.gif' />";
		if (req.readyState==4)
		{
			if (req.status==200) 
			{
				document.getElementById('blockLoader').innerHTML=" ";
				document.getElementById(block).innerHTML=req.responseText; 
							//alert(req.responseText);
			} 
		}
	};
	req.open("GET", "dropdown1.php?data="+block+"&val="+val); 
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=tis-620"); // set Header
	req.send(null); 
	 
}

function changeMohalla(mohalla,val) 
{
	var req = Inint_AJAX();
	req.onreadystatechange = function () 
	{ 
		document.getElementById('mohallaLoader').innerHTML="<img src='images/ajax-loader.gif' />";
		if (req.readyState==4)
		{
			if (req.status==200) 
			{
				document.getElementById('mohallaLoader').innerHTML=" ";
				document.getElementById(mohalla).innerHTML=req.responseText; 
							//alert(req.responseText);
			} 
		}
	};
	req.open("GET", "dropdown1.php?data="+mohalla+"&val="+val); 
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=tis-620"); // set Header
	req.send(null); 
}


function changeHouse(house_no,val,block_id) 
{
	var req = Inint_AJAX();
	req.onreadystatechange = function () 
	{ 
		document.getElementById('houseLoader').innerHTML="<img src='images/ajax-loader.gif' />";
		if (req.readyState==4)
		{
			if (req.status==200) 
			{
				document.getElementById('houseLoader').innerHTML=" "; 
				document.getElementById(house_no).innerHTML=req.responseText; 
							//alert(req.responseText);
			} 
		}
	};
	req.open("GET", "dropdown1.php?data="+house_no+"&val="+val+"&block="+block_id); 
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=tis-620"); // set Header
	req.send(null); 
}
