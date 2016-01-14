/**
 * Created by pupil on 2015/12/25.
 */
window.onload=function() {

    var del = document.getElementsByClassName('delete');
    var perPrice = document.getElementsByClassName('perPrice');
    var trNumber = document.getElementsByClassName('trNumber');
    var trPrice = document.getElementsByClassName('trPrice');
    var totalPrice = document.getElementsByClassName('totalPrice');
    var r=document.getElementsByClassName('return');

    var purchase=document.getElementsByClassName("buy");
    var bg=document.getElementById("bg");
    var content=document.getElementById("content");

    bg.style.height=document.body.scrollHeight;
    purchase[0].onclick=function(){
        bg.className="show";
        content.className="show";
    }
    bg.onclick=function(){
        content.className='hide';
        bg.className='hide';
    }
    r[0].onclick=function(){
        history.go(-1);
    }
    /*删除不想要的物品*/
    for (var i = 0; i < del.length; i++) {
        del[i].onclick = function () {
            this.parentNode.parentNode.removeChild(this.parentNode);
            totalPrice[1].innerHTML = getTotalPrice().toFixed(2);
        }
    }
    for (var i = 0; i < perPrice.length; i++) {
        var t=0;
        t = parseFloat(perPrice[i].innerHTML * trNumber[i].innerHTML);
        trPrice[i].innerHTML= t.toFixed(2);
    }

    function getTotalPrice(){
        var p=0;
        for(var i=0;i<trPrice.length;i++){
            p+=parseFloat(trPrice[i].innerHTML);
        }
        return p;
    }
    del[0].onclick();

}