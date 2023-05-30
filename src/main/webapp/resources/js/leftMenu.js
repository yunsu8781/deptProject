// 醫뚯륫 硫붾돱 �대깽�� �깅줉
(function (){
    // �좏깮�� 醫뚯륫硫붾돱 �대룞 �꾩뿉�� �쒖떆 湲곕뒫
    const selectedListHistory = ()=>{
        let outerList = "";
        let innerList = "";
        $(".side_menu ul.menu li").each((index, item)=>{
            let $checked = $(item).find('a.checked');
            if($checked.index() !== -1){
                if(outerList === ""){
                    outerList = index;
                    sessionStorage.setItem("outerList", outerList);
                }else {
                    innerList = index;
                    sessionStorage.setItem("innerList", innerList);
                }
                // console.log(outerList, innerList);
            }
        });
    }

    const $leftMenu = $(".side_menu ul.menu li");
    // �섏씠吏� �대룞�� �댁쟾 �좏깮由ъ뒪�� �쒖떆
    if(sessionStorage.getItem("outerList")){
        $leftMenu.eq(sessionStorage.getItem("outerList")).children("a").addClass("checked");
        $leftMenu.eq(sessionStorage.getItem("outerList")).children("ul.sub").slideDown("fast");
        // sessionStorage.removeItem("outerList");
    }
    if(sessionStorage.getItem("innerList")){
        $leftMenu.eq(sessionStorage.getItem("innerList")).children("a").addClass("checked");
        // sessionStorage.removeItem("innerList");
    }

    $leftMenu.click(function (e){   // 醫뚯륫 硫붾돱 �대┃�대깽�� 由ъ뒪�� �깅줉
        e.stopPropagation();    // �대깽�� 踰꾨툝留� 諛⑹�
        let $target = $(e.target);
        if($target.prop('tagName') === 'SPAN'){ // �꾩씠肄� �꾨� 寃쎌슦 �덉쇅泥섎━
            $target = $target.parent('a');
        }

        $target.parent().siblings().each((index, item)=>{
           $(item).children("ul.sub").slideUp("fast");  // �좏깮 �� 由ъ뒪�� �リ린
           $(item).find("a.checked").removeClass("checked");    // �좏깮 �� 由ъ뒪�� �됱긽 �쒓굅
        });

        if($target.children().is('span')){  // �곸쐞 由ъ뒪�� �좏깮��
            $target.toggleClass("checked"); // �좏깮 由ъ뒪�� �됱긽 �좉�
            $("ul",this).slideToggle("fast");   // �섏쐞由ъ뒪�� �좉�

        }else{  // �섏쐞 由ъ뒪�� �좏깮��
            $target.addClass("checked");    // �좏깮 由ъ뒪�� �됱긽 異붽�
        }
        selectedListHistory();  //�좏깮�� 由ъ뒪�� �꾩튂 ����
    });
}());