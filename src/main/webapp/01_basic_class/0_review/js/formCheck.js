window.onload = function(){

		var frm = document.getElementById('frm');
//		var inputs = document.querySelectorAll("input");
		
		frm.onsubmit = function(evt){
			evt.stopPropagation();	//서버로 전송하지 못하게 하는 함수
			evt.preventDefault();	// 위와 동일
			
//			alert(frm.agree.checked);
			if(!frm.agree.checked){
				alert('약관에 동의해야 합니다.');
			}else
			frm.submit();
			
		}

	}