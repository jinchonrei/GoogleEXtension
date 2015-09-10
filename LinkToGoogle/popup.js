var iTemp=0;
var _re;
var bool = true;

function setPrev()
{
    if(bool && !isNaN(_re))
        iTemp = parseInt(_re);
    bool = false;
    iTemp=iTemp - 1;
    document.getElementById("bar").textContent = iTemp;
    setCookie(iTemp);

}

function setReset()
{
    setCookie(0);
}

function setNext()
{
    if(bool && !isNaN(_re))
        iTemp = parseInt(_re);
    bool = false;
    iTemp=iTemp + 1;
    document.getElementById("bar").textContent = iTemp;
    setCookie(iTemp);
    getCookie();
}

  
function setCookie(idx) {  
    chrome.cookies.set({  
        url  : 'http://www.dipro.com/',  
        name : "aaa",  
        value : idx.toString(),
    }, function(msg){  
    });  
}

function getCookie() {  
    var output = [];  
    chrome.cookies.getAll({  
        url  : 'http://www.dipro.com/',
    }, function(cookies){  
        for (var i = 0; i < cookies.length; i++) {  
            var name   = cookies[i].name;  
            var value  = cookies[i].value;  
             console.log(value);
            _re = cookies[i].value;
             console.log(_re);
        }  
    });
}  

document.addEventListener('DOMContentLoaded', function () {
    console.log("Loaded");
    document.querySelector('#btn_prev').addEventListener('click', setPrev);
    document.querySelector('#btn_next').addEventListener('click', setNext);
    document.querySelector("#btn_reset").addEventListener("click", setReset);
    getCookie();
});
