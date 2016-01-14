/**
 * Created by pupil on 2015/12/25.
 */
window.onload=function(){

    var name=document.getElementsByClassName('n');
    var add=document.getElementsByClassName('add');
    var smallImg=document.getElementsByClassName('small');
    var bImg=document.getElementsByClassName('bImg');

    var r=document.getElementsByClassName('return');

    var del=document.getElementsByClassName('delete');
    var plu=document.getElementsByClassName('plus');

    var size=document.getElementsByClassName('size')[1];
    var num=document.getElementsByClassName('number')[2];

    var click=document.getElementsByClassName('onclick');

    var totalMoney=document.getElementById('totalMoney');
    var price=document.getElementsByClassName('price');
    var purchase_status=document.getElementsByClassName('purchase_status');
    var cost=document.getElementById('cost');
    var remain=document.getElementById('remain');
    var purchase=document.getElementsByClassName("buy");
    var bg=document.getElementById("bg");
    var content=document.getElementById("content");



    //本来我把var totalP=parseFloat(parseInt(num.value)*parseInt(price[1].innerHTML));这一行
    //放到了这个方法之外，结果我发现，num.value是不变的，总是我赋予的初值。放到这个方法里边后，
    //totalP便成为了局部的变量，所以当它所在的方法在调用的时候，totalP才会被赋予值。也就是说，会
    //随着外边变化而变化；
    purchase[1].onclick=function(){
        var totalP=parseFloat(parseInt(num.value)*parseInt(price[1].innerHTML));
        var totalM=parseFloat(totalMoney.innerHTML).toFixed(2);
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

    add[0].onclick=function(){
        location.href="myCartTable.jsp?number="+num.value+"&&src="+bImg[0].src+"&&name="+ name[0].innerHTML+"&&price="+price[1].innerHTML;
    }
    bg.style.height=document.body.scrollHeight;
    /*返回*/
    r[0].onclick=function(){
        history.go(-1);
    }

    bg.onclick=function(){
        content.className='hide';
        bg.className='hide';
    }

    /*大小图片切换*/
    for(var i=0;i<smallImg.length;i++){
        smallImg[i].onmouseover= function () {
            bImg[0].src=this.src;
        }
    }

    /*当size失去焦点之后的事件；*/
    size.onblur=function(){
        size.value=testSize(parseInt(this.value));
    }

    /*当num失去焦点之后的事件；*/
    num.onblur=function(){
        num.value=testNumber(parseInt(this.value));
    }

    /*对size的值进行检测,并且里边能用this.value来传递数值，因为传进来的是数值，数值.value是错误的*/
    function testSize(ts){
        var v=ts;
        if(isNaN(v)||v<35||v>45){
            v=40;
        }
        return v;
    }

    /*对number的值进行检测，并且里边能用this.value来传递数值，因为传进来的是数值，数值.value是错误的*/
    function  testNumber(tn){
        var v=tn;
        if(isNaN(v)||v<1){
            v=1;
        }
        return v;
    }

    /*点击-+号事件*/
    del[0].onclick=function(){
        size.value=testSize(parseInt(size.value)-1);
    }

    plu[0].onclick=function(){
        size.value=testSize(parseInt(size.value)+1);
    }

    del[1].onclick=function(){
        num.value=testNumber(parseInt(num.value)-1);
    }

    plu[1].onclick=function(){
        num.value=testNumber(parseInt(num.value)+1);
    }

    for(var i=0;i<click.length;i++){
        click[i].onclick=function(){
            for(var p=0;p<click.length;p++){
                click[p].style.border='none';
            }
            this.style.border='2px solid rgb(196,0,0)';
        }
    }
}