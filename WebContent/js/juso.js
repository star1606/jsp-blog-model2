var isCheckedUsername = false;

// juso.go.kr 라이브러리 (시작)------------------------------
 
 

function goPopup(){
	window.open("/blog/juso/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr) {
	var tfAddress = document.querySelector("#address");
	tfAddress.value = roadFullAddr;
	// document.form.roadFullAddr.value = roadFullAddr;
}