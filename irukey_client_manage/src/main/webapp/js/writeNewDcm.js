var managers;

function uploadImg(){
	$("#upload").click();
}

$("#upload").on("change", handleImgFileSelect);

function handleImgFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	filesArr.forEach(function(f){
		if(!f.type.match("image.*")) {
			alert("이미지파일만 가능합니다.");
			return;
		}

		sel_file = f;
		var reader = new FileReader();
		reader.onload = function(e){
			var img = draw.image(e.target.result, 0, 0, 1140, 500);
		}
		reader.readAsDataURL(f);
	});
}


$(document).on("change", ".custom-file-input", function(e) {
	var file = e.target.files;
	console.log($(this));
	$(this).siblings().text(file[0].name);
});

function cancle() {
	if(window.confirm("정말 취소하시겠습니까?")){
		location.href="${contextPath}/main";
	}
}

$(function(){
	$(".infoTable").hide();
	$("#baseTable").show();

	$(document).on("click", ".btn-outline-secondary", function(){
		$(".infoTable").hide();
		console.log($(this).attr("id"));
		switch($(this).attr("id")) {
			case "baseInfo" : 
				$("#baseTable").show();
				break;
			case "serverInfo" : 
				$("#serverTable").show();
				break;
			case "webInfo" : 
				$("#webTable").show();
				break;
			case "mobileInfo" : 
				$("#mobileTable").show();
				break;
			case "otherInfo" :
				$("#otherTable").show();
				break;
		}
	});

	$(document).on("click", "#addNewFile", function(){
		var $div = $("<div class='custom-file' style='margin-top:5px;'>");
		var $input = $("<input type='file' class='custom-file-input' name='file'>");
		var $label = $("<label class='custom-file-label' for='file' id='filename'>파일을 선택하세요</label>")

		$div.append($input);
		$div.append($label);
		$(".fileSection").append($div);
	});

	$(document).on("click", "#addOtherInfo", function(){
		var $tr = $("<tr>");
		var $td1 = $("<td>");
		var $td2 = $("<td>");
		var $input = $("<input type='text' name='otherHeader' class='form-control'>");
		var $textarea = $("<textarea class='form-control' name='otherContent'>");

		$td1.append($input);
		$td2.append($textarea);
		$tr.append($td1);
		$tr.append($td2);

		$("#otherTable").children("tbody").append($tr);
	});

	$(document).on("click", "#deleteFile", function(){
		var div = $(".custom-file");
		console.log(div.length);
		if(div.length - 1 > 0) {
			$(".custom-file:last").remove();
		}
	});

	$(document).on("click", "#deleteOtherInfo", function(){
		$("#otherTable").children("tbody").children().last().remove();
	});

	$(document).on("click", "#addManager", function(){
		var value = parseInt($("input[name='choice']:last").val()) + 1;
		
		var $tr = $("<tr>");
		var $td1 = $("<td>");
		var $td2 = $("<td>");
		var $td3 = $("<td>");
		var $td4 = $("<td>");
		var $td5 = $("<td>");
		var $input1 = $("<input type='text' class='form-control' name='managerName'>");
		var $input2 = $("<input type='text' class='form-control' name='managerJob'>");
		var $input3 = $("<input type='tel' class='form-control' name='managerTel'>");
		var $input4 = $("<input type='email' class='form-control' name='managerEmail'>");
		var $radio = $("<input type='radio' name='choice' value=" + value + ">");

		console.log(value);
		
		$td1.append($input1);
		$td2.append($input2);
		$td3.append($input3);
		$td4.append($input4);
		$td5.append($radio);
		$tr.append($td1);
		$tr.append($td2);
		$tr.append($td3);
		$tr.append($td4);
		$tr.append($td5);

		$("#managerTable").children("tbody").append($tr);
	});

	$(document).on("click", "#deleteManager", function(){
		if($("#managerTable").children("tbody").children().length - 1 > 0) {
			$("#managerTable").children("tbody").children().last().remove();
		}
	});

});

$(document).on("click", "#insertManager", function(){
	$(".badge").remove();
	
	var names = $("input[name='managerName']");
	var jobs = $("input[name='managerJob']");
	var tels = $("input[name='managerTel']");
	var emails = $("input[name='managerEmail']");
	var manger = $("input[name='choice']:checked").val();
	console.log(manger);
	managers = new Array();
	
	for(var i = 0; i < names.length; i++) {
		if(names[i].value != "" && jobs[i].value != "" && tels[i].value != "" && emails[i].value != "") {
			managers.push({name:names[i].value, job:jobs[i].value, tel:tels[i].value, email:emails[i].value});
			if(manger == i) {
				var $span = $("<span class='badge' style='margin-right:5px; font-size:1em'>*" + names[i].value + "</span>");
				$("#manager").parent().prepend($span);
			}else{
				var $span = $("<span class='badge' style='margin-right:5px; font-size:1em'>" + names[i].value + "</span>");
				$("#manager").parent().append($span);
			}
		}else {
			alert("모든정보를 기입해주세요.");
			$(".badge").remove();
			managers = new Array();
		}
	}
	console.log(managers);
	$("#manager").parent().append($("#manager"));
});