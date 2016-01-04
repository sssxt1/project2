window.onload=function() {
    var content = document.getElementById('content');
    var login = document.getElementById('login');
    var bg = document.getElementById('bg');
    var b=document.getElementsByClassName('button');
    var back=document.getElementById('back');
    var num=document.getElementById('number');
    var pas=document.getElementById('password');

    bg.style.height=document.body.scrollHeight;
    login.onclick = function () {
        content.className='show';
        bg.className='show';
    }

    bg.onclick=function(){
        content.className='hide';
        bg.className='hide';
    }

    b[0].onclick=function(){
        content.className='hide';
        bg.className='hide';
        login.className='hide';
        back.className='show';
        num.value='';
        pas.value='';
    }

    back.onclick = function () {
        login.className='show';
        back.className='hide';
    }
}
