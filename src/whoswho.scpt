(*
	WhosWho検索スクリプト
*)

on run argv
	tell application "Safari"
		tell window 1
		activate
		set current tab to (make new tab)
		do JavaScript "(function(){
			var form=document.createElement('form');
			form.setAttribute('action','http://sp-ap1.iiji.jp/home/TMPD/WhoKensaku.cfm');
			form.setAttribute('method','POST');
			document.body.appendChild(form);
	
			input1=document.createElement('input');
			input1.setAttribute('name','name1');
			input1.setAttribute('type','text');
			input1.setAttribute('value','" & argv & "');
			form.appendChild(input1);
			
			input2=document.createElement('input');
			input2.setAttribute('name','ActionMode');
			input2.setAttribute('type','hidden');
			input2.setAttribute('value','search');
			form.appendChild(input2);
			
			form.submit();
		})();" in document 1
		end tell
	end tell
end run
