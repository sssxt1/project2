/**
 * Created by pupil on 2015/12/25.
 */
window.onload=function() {
    //toFixed()方法返回的是一个字符串的类型；
    var del = document.getElementsByClassName('delete');
    var perPrice = document.getElementsByClassName('perPrice');
    var trNumber = document.getElementsByClassName('trNumber');
    var trPrice = document.getElementsByClassName('trPrice');
    var totalPrice = document.getElementsByClassName('totalPrice');
    var r=document.getElementsByClassName('return');
    var totalMoney=document.getElementById('totalMoney');
    var purchase_status=document.getElementsByClassName('purchase_status');
    var cost=document.getElementById('cost');
    var remain=document.getElementById('remain');
    var purchase=document.getElementsByClassName("buy");
    var bg=document.getElementById("bg");
    var content=document.getElementById("content");



    totalPrice[1].innerHTML = getTotalPrice().toFixed(2);
    bg.style.height=document.body.scrollHeight;
    purchase[0].onclick=function(){
        var totalM=parseFloat(totalMoney.innerHTML).toFixed(2);
        var totalP=parseFloat(getTotalPrice().toFixed(2));
        bg.className="show";
        content.className="show";
        if(totalM>=totalP){
            purchase_status[0].innerHTML="购买成功！";
            cost.innerHTML=totalP;
            remain.innerHTML=parseFloat(totalM-totalP).toFixed(2);
            totalMoney.innerHTML=parseFloat(totalMoney.innerHTML)-totalP;
        }
        else {
            purchase_status[0].innerHTML="购买失败，您的余额不足，敬请充值！";
            remain.innerHTML=totalMoney.innerHTML;
            cost.innerHTML=0.00;
        }
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

    function getTotalPrice(){
        for (var i = 0; i < perPrice.length; i++) {
            var t=0;
            t = parseFloat(perPrice[i].innerHTML * trNumber[i].innerHTML);
            trPrice[i].innerHTML= t.toFixed(2);
        }

        var p=0;
        for(var i=0;i<trPrice.length;i++){
            p+=parseFloat(trPrice[i].innerHTML);
        }
        return p;
    }
}