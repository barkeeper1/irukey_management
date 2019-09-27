var kinds;
//drawing 아이디를 가진 div에 svg영역 추가
var draw = Raphael(document.getElementById("drawing"));
var set = draw.set();
var flag = true;

window.onload = function(){
	
	drawing = document.getElementById("drawing");
	//이벤트 추가
	drawing.addEventListener("mousedown", listener);
	drawing.addEventListener("mousemove", listener2);
	drawing.addEventListener("mouseup", listener);
	drawing.addEventListener("mouseout", listener);
	
	$("#drawLine").click(function(){
		$("#drawing").css('cursor', 'crosshair');
		kinds = "line";
		defaultValue();
	});
	$("#rectang").click(function(){
		$("#drawing").css('cursor', 'crosshair');
		kinds = "rect";
		defaultValue();
		create(event, kinds);
	});
	$("#eraser").click(function(){
		kinds = "eraser";
		$("#drawing").css('cursor', 'default');
		$("rect").css('cursor', 'pointer');
		$("path").css('cursor', 'pointer');
		$("text").css('cursor', 'pointer');
		$("image").css('cursor', 'pointer');
	});
	$("#textBox").click(function(){
		kinds = "text";
		if(kinds == 'text') {
			$("#drawing").css('cursor', 'text');
			defaultValue();
		}
	});
	$("#server").click(function(){
		kinds = "server";
		create(event, kinds);
		$("#drawing").css('cursor', 'crosshair');
		defaultValue();
	});
	$("#firewall").click(function(){
		kinds = "firewall";
		create(event, kinds);
		$("#drawing").css('cursor', 'crosshair');
		defaultValue();
	});
	$("#hub").click(function(){
		kinds = "hub";
		create(event, kinds);
		$("#drawing").css('cursor', 'crosshair');
		defaultValue();
	});

}
//기본 css 및 이벤트 해제
function defaultValue(){
	$("rect").css('cursor', 'default');
	$("path").css('cursor', 'default');
	$("text").css('cursor', 'default');
	$("image").css('cursor', 'default');
	$("rect").unbind("click");
	$("path").unbind("click");
	$("text").unbind("click");
	$("image").unbind("click");
}
//마우스 클릭 이벤트 리스너
function listener(event){
	switch(event.type) {
	case "mousedown" : 
		if(kinds == 'rect') {
			if(event.which == 1) {
				create(event, kinds);
			}else {
				kinds = "";
				$("#drawing").css('cursor', 'default');
				rect.remove();
				return false;
			}
		}else if(kinds == 'line') {
			if(flag == true) {
				if(event.which == 1) {
					point = getPosition(event);
					create(event, kinds);
				}else {
					kinds = "";
					line.remove();
					$("#drawing").css('cursor', 'default');
					point = "";
					flag = true;
				}
				
			}else {
				create(event, kinds);
				flag = false;
			}
		}else if(kinds == 'eraser') {
			if(event.which == 1) {
				$("rect").bind("click", function(e){
					$(e.target).remove();
				});
				$("path").bind("click", function(e){
					$(e.target).remove();
				});
				$("text").bind("click", function(e){
					$(e.target).remove();
				});
				$("image").bind("click", function(e){
					$(e.target).remove();
				});
			}else {
				kinds = "";
				defaultValue();
			}
		}else if(kinds == 'text') {
			if(event.which == 1) {
				create(event, kinds);
			}else {
				kinds = "";
				$("#drawing").css('cursor', 'default');
				return false;
			}
		}else if(kinds == 'server') {
			if(event.which == 1) {
				create(event, kinds);
			}else {
				kinds = "";
				$("#drawing").css('cursor', 'default');
				img.remove();
				return false;
			}
		}else if(kinds == 'firewall') {
			if(event.which == 1) {
				create(event, kinds);
			}else {
				kinds = "";
				$("#drawing").css('cursor', 'default');
				img.remove();
				return false;
			}
		}else if(kinds == 'hub') {
			if(event.which == 1) {
				create(event, kinds);
			}else {
				kinds = "";
				$("#drawing").css('cursor', 'default');
				img.remove();
				return false;
			}
		}
	}
}
$("#drawing").contextmenu(function(){
	return false;
});

//마우스 이동 이벤트
function listener2(event) {
	if(kinds == 'rect') {
		rect.remove();
		var coors = getPosition(event);
		create(event, kinds);
	}else if(kinds == "line" && flag == true) {
		line.remove();
		create(event, kinds);
	}else if(kinds == "server") {
		img.remove();
		var coors = getPosition(event);
		create(event, kinds);
	}else if(kinds == "firewall") {
		img.remove();
		var coors = getPosition(event);
		create(event, kinds);
	}else if(kinds == "hub") {
		img.remove();
		var coors = getPosition(event);
		create(event, kinds);
	}
}
//그려진 요소 드래그 이동을 위한 함수
//드래그 시작함수
function dragstart(x, y, e){
	this.current_transform = this.transform();
}
//드래그 중 함수
function dragmove(dx, dy, x, y, e){
  this.transform(this.current_transform+'T'+dx+','+dy)
}
//드래그 완료 함수
function dragend(e){
	this.current_transform = this.transform();
}

//요소 그리기
function create(event, kinds) {
	if(kinds == 'rect') {
		var coors = getPosition(event);
		rect = draw.rect(coors.X, coors.Y, 100, 75).attr("fill", "white").attr("stroke-width", 3);
		rect.drag(dragmove, dragstart, dragend);
	}else if(kinds == "line") {
		var coors = getPosition(event);
		line = draw.path(["M", point.X, point.Y, "L", coors.X, coors.Y]).attr("stroke-width", 3);
		line.drag(dragmove, dragstart, dragend);
	}else if(kinds == "text") {
		var coors = getPosition(event);
		var string = prompt("텍스트를 입력하세요");
		if(string != null) {
			text = draw.text(coors.X, coors.Y, string).attr("font-size", 15).attr("font-weight", "bold");
			text.drag(dragmove, dragstart, dragend);
		}
	}else if(kinds == "server") {
		var coors = getPosition(event);
		img = draw.image("/irukey_client_manage/resources/icon/servers.png", coors.X, coors.Y, 75, 75);
		img.drag(dragmove, dragstart, dragend);
	}else if(kinds == "firewall") {
		var coors = getPosition(event);
		img = draw.image("/irukey_client_manage/images/icon/firewall.png", coors.X, coors.Y, 75, 75);
		img.drag(dragmove, dragstart, dragend);
	}else if(kinds == "hub") {
		var coors = getPosition(event);
		img = draw.image("/irukey_client_manage/images/icon/hub.png", coors.X, coors.Y, 75, 75);
		img.drag(dragmove, dragstart, dragend);
	}
}
//svg영역의 좌표를 찾는 함수
function getPosition(event) {
	var bound = $("#drawing");
	
	var x = event.pageX - bound.offset().left;
	var y = event.pageY - bound.offset().top;
	return {X:x, Y:y};
}
