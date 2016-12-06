function checkLogin(form){
		if(form.username.value==""){
			alert("You must input your username!");
			form.username.focus();
			return false;
		}
		if(form.password.value==""){
			alert("You must input your password!");
			form.password.focus();
			return false;
		}
		return true;
	}

function checkAddProducts(form){
	if(form.productId.value == "")
    {
        alert("You must input the product ID");
        form.productId.focus();
        return false;
    }
    if(form.productname.value == "")
    {
        alert("You must input the product name");
        form.productname.focus();
        return false;
    }
    if(form.author.value == "")
    {
        alert("���߲���Ϊ�� ��");
        form.author.focus();
        return;
    }
    if(form.publisher.value == "")
    {
        alert("�������ڲ���Ϊ�� ��");
        form.publisher.focus();
        return false;
    }
   if(form.category.value == "")
    {
        alert("���ͱ������룡");
        form.category.focus();
        return false;
    }
    if(form.newproduct.value == "")
    {
        alert("�²�Ʒ����ѡ�� ��");
        form.newproduct.focus();
        return false;
    }
   
   if(form.price1.value == "")
    {
        alert("������۸�1 ��");
        form.price1.focus();
        return false;
    }
    
       if(form.stock.value == "")
    {
        alert("������������ ��");
        form.stock.focus();
        return false;
    }
     if(form.realstock.value == "")
    {
        alert("������ʵ������ ��");
        form.realstock.focus();
        return false;
    }
    if(form.upload.value == "")
   {
       alert("��ѡ��ͼƬ ��");
      form.upload.focus();
      return false;
   }
   form.submit();
 }
 

 function checkRegister(form){
	if(form.username.value == "")
    {
       alert("�û�������Ϊ�գ�"); 
       form.username.focus();
        return false;
    }
   if(form.password.value == "")
    {
        alert("���������� ��");
        form.password.focus();
         return false;
    }
     if(form.password2.value == "")
    {
        alert("���ٴ��������� ��");
       form.password2.focus();
         return false;
    }
    if(form.password.value!=form.password2.value){
    
       alert("������������벻һ�� ��");
        form.password2.focus();
         return false;
    }
    if(form.email.value == "")
    {
        alert("�������ʼ� ��");
        form.email.focus();
         return false;
    }
    
 var regm = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;//��֤Mail��������ʽ,^[a-zA-Z0-9_-]:��ͷ����Ϊ��ĸ,�»���,����,
  if (form.email.value!="" && !form.email.value.match(regm) )
   		 {
     		alert("�ʼ���ʽ���ԣ������������룡");
	     	form.email.focus();
             return false;
   		 }  
   if(form.code.value==""){
   		alert("��������֤�룡");
        form.code.focus();
         return false;
   }
  else 
    return true;
}

 function checkOrder(form){
	if(form.username.value == "")
    {
       alert("�û�������Ϊ�գ�"); 
       form.username.focus();
        return false;
    }
    if(form.tel.value!=""){
    	 var mobilereg = /^(((13[0-9]{1})+\d{8}))|(((15[0-9]{1})+\d{8}))$/;
    	 var telreg = /^(((0[0-9]{2})+(\-)+\d{8}))|(((0[0-9]{3})+(\-)+\d{8}))|(((0[0-9]{3})+(\-)+\d{7}))$/;    
  		 var bl1=mobilereg.test(form.tel.value);
  		 var bl2=telreg.test(form.tel.value);
  		 if(bl1||bl2){
  		 	return true;
  		 }else{
  		 	alert("��������ȷ�ֻ���0xx-xxxxxxxx��ʽ�绰");
  		 	form.tel.focus();
  		 	return false;
  		 }
    }
   
    if(form.email.value == "")
    {
        alert("�������ʼ� ��");
        form.email.focus();
         return false;
    }
    
 var regm = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;//��֤Mail��������ʽ,^[a-zA-Z0-9_-]:��ͷ����Ϊ��ĸ,�»���,����,
  if (form.email.value!="" && !form.email.value.match(regm) )
   		 {
     		alert("�ʼ���ʽ���ԣ������������룡");
	     	form.email.focus();
             return false;
   		 }  
  else 
    return true;
}
 function changeStyle(sel){
        var value = sel.options[sel.selectedIndex].value;
        var links = document.getElementById("styles");
        links.href="./css/"+value; 
     }
    
