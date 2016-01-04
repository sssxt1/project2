/**
 * Created by pupil on 2015/12/25.
 */
window.onload=function(){
    var r=document.getElementsByClassName('return');

    r[0].onclick= function () {
        history.go(-1);
    }
}
