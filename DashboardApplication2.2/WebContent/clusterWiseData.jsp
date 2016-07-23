<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script type="text/javascript">
$.fn.infiniteScrollUp=function(){
	var self=this,kids=self.children()
kids.slice(40).hide()
	setInterval(function(){
		kids.filter(':hidden').eq(0).fadeIn()
		kids.eq(0).fadeOut(function(){
			$(this).appendTo(self)
			kids=self.children()
		})
},3000)
	return this
}
$(function(){
	$("#overdueScroller").infiniteScrollUp();
	$("#overdueScroller2").infiniteScrollUp();
	$("#breachscroller1").infiniteScrollUp();
	$("#breachscroller2").infiniteScrollUp();


	 
	
});

setInterval("my_function();",300000); 

function my_function(){
    window.location = location.href;
}
</script>
      
<style type="text/css">/
	.table{
		width:100%; 
		border-collapse:collapse; 
	}
	.table td{ 
		padding:7px; 
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.table tr{
		background: #FAEBD7;
	}
	/*  Define the background color for all the ODD background rows  */
	.table tr:nth-child(odd){ 
		background: #E0FFFF;
	}
	/*  Define the background color for all the EVEN background rows  */
	.table tr:nth-child(even){
		background: #dae5f4;
	}
</style>
<style type="text/css">
	.breach2{
		width:100%; 
		border-collapse:collapse; 
	}
	.breach2 td{ 
		padding:7px; 
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.breach2 tr{
		background: #FFFACD;
	}
	/*  Define the background color for all the ODD background rows  */
	.breach2 tr:nth-child(odd){ 
		background:  #F0E68C;
	}
	/*  Define the background color for all the EVEN background rows  */
	.breach2 tr:nth-child(even){
		background: #FFFACD;
	}

</style>

      
</head>
<body>
 
 <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                    <li><s:form action="login"> <button class="btn btn-primary" style="padding-bottom: 1px;">Upload</button></s:form></li>
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
				     <div class="row">
                        <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #62AA23;"><s:property value="clusterName1"/> Cluster</b></h3>
                                    <div class="box-tools">
                                      <!--   <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover" >
                                      	<tr  style=" color: #F9EFEF;background-color:  #62AA23;">  
                                            <th>Business Service </th>
                                            <th>P1 / P2</th>
                                            <th>P3 / P4</th>
                                            <th>SR</th>
                                            <th>FPR</th>
                                            <th>Overdue</th>
                                            <th>Backlog</th>
                                        </tr>
                                         <s:iterator value="clusterDetailsList1">
							<tr>
								<td><s:property value="businessServiceName" /></td>
								<s:if test="p1P2>=95">
								<s:if test="p1P2<100">
									<td align="right"><font color="green"> <s:property value="p1P2" />%<img 
											src="img/happy.jpg" height="30" width="30" ></font></td>
									</s:if>
									<s:else>
									<td align="right"><font color="green"><s:property value="p1P2" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
									</s:else>
								</s:if>
								<s:else>
									<td  align="right"><font color="red"> <s:property value="p1P2" />%<img
											src="img/happyemo.jpg" height="30" width="30"></font></td>
								</s:else>
								<s:if test="p3P4>=90">
									<s:if test="p1P2<100">
									<td align="right"><font color="green"> <s:property value="p3P4" />%<img 
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td align="right"><font color="green"><s:property value="p3P4" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td align="right"><font color="red"> <s:property value="p3P4" />%  <img 
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
								<s:if test="Sr>=90">
								<s:if test="p1P2<100">
									<td align="right"><font color="green"> <s:property value="Sr" />% <img 
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td align="right"><font color="green"><s:property value="Sr" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td align="right"><font color="red"> <s:property value="Sr" />% <img 
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
								<s:if test="Fpr>=99">
								<s:if test="p1P2<100">
									<td align="right"><font color="green"> <s:property value="Fpr" />% <img 
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td align="right"><font color="green"><s:property value="Fpr" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td align="right"><font color="red"> <s:property value="Fpr" />%<img 
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
										
										<td style="text-align: center ; color:#FF0000"><s:property value="overdueCount" /></td>
                                             <td style="text-align: center"><s:property value="bklogCount" /></td>
							</tr>
						</s:iterator>
                                           
                                     
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                   
                        <div class="col-md-6">
                            <%-- <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #62AA23;"><s:property value="clusterName2"/>  Cluster</b></h3>
                                    <div class="box-tools">
                                      <!--   <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                     	<tr  style=" color: #F9EFEF;background-color:  #62AA23;">  
                                            <th >Business Service </th>
                                            <th>P1 / P2</th>
                                            <th>P3 / p4</th>
                                            <th>SR</th>
                                            <th>FPR</th>
                                            <th>Overdue</th>
                                            <th>Backlog</th>
                                        </tr>
                                       <s:iterator value="clusterDetailsList2">
							<tr>
								<td><s:property value="businessServiceName" /></td>
								<s:if test="p1P2>=95">
								<s:if test="p1P2<100">
									<td><font color="green"><s:property value="p1P2" /> %<img
											src="img/happy.jpg" height="30" width="30"></font></td>
									</s:if>
									<s:else>
									<td><font color="green"><s:property value="p1P2" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
									</s:else>
								</s:if>
								<s:else>
									<td><font color="red"><s:property value="p1P2" /> %<img
											src="img/happyemo.jpg" height="30" width="30"></font></td>
								</s:else>
								<s:if test="p3P4>=95">
									<s:if test="p1P2<100">
									<td><font color="green"><s:property value="p3P4" /> %<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td><font color="green"><s:property value="p3P4" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td><font color="red"><s:property value="p3P4" /> %<img
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
								<s:if test="Sr>=95">
								<s:if test="p1P2<100">
									<td><font color="green"><s:property value="Sr" /> %<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td><font color="green"><s:property value="Sr" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td><font color="red"><s:property value="Sr" /> 0%<img
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
								<s:if test="Fpr>=95">
								<s:if test="p1P2<100">
									<td><font color="green"><s:property value="Fpr" /> 0%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:if>
											<s:else>
											<td><font color="green"><s:property value="Fpr" />%<img
											src="img/happy.jpg" height="30" width="30"></font></td>
											</s:else>
								</s:if>
								<s:else><td><font color="red"><s:property value="Fpr" /> %<img
										src="img/happyemo.jpg" height="30" width="30"></font></td>
										</s:else>
											<td style="text-align: center ; color:#FF0000"><s:property value="overdueCount" /></td>
                                             <td style="text-align: center"><s:property value="bklogCount" /></td>
							</tr>
						</s:iterator>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box --> --%>
                              <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #000000;"> Incidents Breaching In 4 Hours</b></h3> 
                                    <div class="box-tools">
                                        <!-- <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding" style="position: relative; overflow: hidden; width: auto; height: 305px;" >
                                   	 <s:if test="breachIn2Hr2.size()>5">
                                    <table class="breach2 table table-hover" class="breach2">
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody  id="breachscroller1" >    
                                        <s:if test="breachIn2Hr1.size()!=0">
                                        <s:iterator value="breachIn2Hr1" >
                                            <tr>
                                                   <td><font color="black">  <s:url action="searchform" var="search" >
    								<s:param name="tno"><s:property value="%{ticketNumber}"/></s:param>
    								</s:url><s:a href="%{search}"><s:property value="ticketNumber"/></s:a>	</font></td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td width="30px"><font color="black"><s:property value="businessServiceName"/></font></td> 
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                            <s:else>
                                           <tr><td align="center"> No Tickets</td></tr>
                                            
                                            </s:else>
                                         </tbody>
                                        
                                    </table></s:if>
                                     <s:else >
                                      <table class="breach2 table table-hover" class="breach2">
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody >    
                                        <s:if test="breachIn2Hr1.size()!=0">
                                        <s:iterator value="breachIn2Hr1" >
                                            <tr>
                                                   <td><font color="black">  <s:url action="searchform" var="search" >
    								<s:param name="tno"><s:property value="%{ticketNumber}"/></s:param>
    								</s:url><s:a href="%{search}"><s:property value="ticketNumber"/></s:a></font></td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td width="30px"><font color="black"><s:property value="businessServiceName"/></font></td> 
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                            <s:else>
                                          <tr><td align="center"> No Tickets</td></tr>
                                            
                                            </s:else>
                                         </tbody>
                                        
                                    </table></s:else>
                                </div><!-- /.box-body -->
                            </div>
                        </div>
                        </div>
			             <div class="row">
                        <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #FF6D00;">Overdue Incidents {<s:property value="clusterBreachTickets1.size()"/>}</b></h3> 
                                    <div class="box-tools">
                                        <!-- <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding"  style="position: relative; overflow: hidden; width: auto; height: 475px;">
                                    <table class="table table-hover" style="height: 175px;">
                                    <thead>
						 <tr style=" color: #F9EFEF;background-color:  #FF6D00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody id="overdueScroller" >    
                                        
                                        <s:iterator value="clusterBreachTickets1">
                                            <tr>
                                                <td><font color="red">              <s:url action="searchform" var="search" >
    								<s:param name="tno"><s:property value="%{ticketNumber}"/></s:param>
    								</s:url><s:a href="%{search}"><s:property value="ticketNumber"/></s:a></font></td>
                                               <td><font color="red"><s:property value="itServiceName"/></font></td>
                                                <td><font color="red"><s:property value="businessServiceName"/></font></td>
                                               <td style="text-align: center"><font color="red"><s:property value="priority"/></font></td>
                                                <td><font color="red"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="red"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                         </tbody>
                                        
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #FF6D00;">All Today's Open Incidents {<s:property value="clusterDump.size()"/>}</b></h3> 
                                    <div class="box-tools">
                                        <!-- <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding"  style="position: relative; overflow: hidden; width: auto; height: 475px;">
                                    <table class="table table-hover" style="height: 175px;">
                                    <thead>
							 <tr style=" color: #F9EFEF;background-color:  #FF6D00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody id="overdueScroller2" >    
                                        
                                        <s:iterator value="clusterDump">
                                            <tr> 
                                          
                                                <td><font color="black">
                                                  <s:url action="searchform" var="search" >
    								<s:param name="tno"><s:property value="%{ticketNumber}"/></s:param>
    								</s:url><s:a href="%{search}"><s:property value="ticketNumber"/></s:a></font></td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td><font color="black"><s:property value="businessServiceName"/></font></td>
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                         </tbody>
                                        
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                        </div>
                           <div class="row">
              
			          <%--  <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #000000;"> Incidents Breaching In 2 Hours</b></h3> 
                                    <div class="box-tools">
                                        <!-- <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding" style="position: relative; overflow: hidden; width: auto; height: 305px;" >
                                   	 <s:if test="breachIn2Hr2.size()>5">
                                    <table class="breach2 table table-hover" class="breach2">
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody  id="breachscroller1" >    
                                        <s:if test="breachIn2Hr1.size()!=0">
                                        <s:iterator value="breachIn2Hr1" >
                                            <tr>
                                                   <td><font color="black"><s:property value="ticketNumber"/></font></td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td width="30px"><font color="black"><s:property value="businessServiceName"/></font></td> 
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                            <s:else>
                                           <tr><td> No Tickets</td></tr>
                                            
                                            </s:else>
                                         </tbody>
                                        
                                    </table></s:if>
                                     <s:else >
                                      <table class="breach2 table table-hover" class="breach2">
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr>
						</thead>
                                             
                                        <tbody >    
                                        <s:if test="breachIn2Hr1.size()!=0">
                                        <s:iterator value="breachIn2Hr1" >
                                            <tr>
                                                   <td><font color="black"><s:property value="ticketNumber"/></font></td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td width="30px"><font color="black"><s:property value="businessServiceName"/></font></td> 
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                            <s:else>
                                           <tr><td> No Tickets</td></tr>
                                            
                                            </s:else>
                                         </tbody>
                                        
                                    </table></s:else>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>	          
                        <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title"><b style=" color: #000000;"> Incidents Breaching In 2 Hours</b></h3> 
                                    <div class="box-tools">
                                        <!-- <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div> -->
                                    </div>
                                </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding" style="position: relative; overflow: hidden; width: auto; height: 305px;" >
            					 <s:if test="breachIn2Hr2.size()>5">
                                    <table class="breach2 table table-hover" >   
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								
								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr> 
						</thead>
                                             
                                        <tbody  id="breachscroller2" >    
                                         <s:if test="breachIn2Hr2.size()!=0">
                                        <s:iterator value="breachIn2Hr2" >
                                            <tr>
                                                   <td><font color="black"><s:property value="ticketNumber"/></font> </td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td><font color="black"><s:property value="businessServiceName"/></font></td>
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                             <s:else>
                                            <tr><td> No Tickets</td></tr>
                                            </s:else>
                                            
                                         </tbody>
                                        
                                    </table></s:if>	 
                                    
                                    
                                    
                                    <s:else >
                                    <table class="breach2 table table-hover" >   
                                    <thead>
							<tr  style=" color: #000000;background-color:  #ffbf00;">

								
								<th>Ticket Number</th>								
								<th>Application</th>
								<th>Business service</th>
								<th>Priority</th>
								<th>Arrival Date</th>
								<th>SLA Target Date</th>
							</tr> 
						</thead>
                                             
                                        <tbody  >    
                                         <s:if test="breachIn2Hr2.size()!=0">
                                        <s:iterator value="breachIn2Hr2" >
                                            <tr>
                                                   <td><font color="black"><s:property value="ticketNumber"/></font> </td>
                                               <td><font color="black"><s:property value="itServiceName"/></font></td>
                                                <td><font color="black"><s:property value="businessServiceName"/></font></td>
                                               <td style="text-align: center"><font color="black"><s:property value="priority"/></font></td>
                                                <td><font color="black"><s:property value="arrivalDate"/></font></td>
                                                <td><font color="black"><s:property value="itslaTargetDate"/></font></td>
                                                
                                                   
                                              
                                            </tr>                                      
                                            </s:iterator>
                                            </s:if>
                                             <s:else>
                                            <tr><td> No Tickets</td></tr>
                                            </s:else>
                                            
                                         </tbody>
                                        
                                    </table></s:else>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div> --%>
                      <!--   <div class="col-md-6">  -->
                            <div class="box">
                                <div class="box-header">
                                <marquee id="marquee_list">
    <div onMouseOver="document.getElementById('marquee_list').stop();" onMouseOut="document.getElementById('marquee_list').start();"> 
    	</div>
                                    <h3 class="box-title"><b style=" color: #FF6D00;">
                                    <s:if test="clusterName1=='05 Deliver Capabilities'">
                                  <b>Abhilasha Dahare</b> - Responsible for getting new business as well timely execution of projects in hand

                                   
                                    </s:if>
                                    <s:elseif test="clusterName1=='04 Service Capabilities'">
                                     
                                  Krishna Singh for his contribution in managing KPIs and keeping them green consistently.
                                   </s:elseif>
                                    <s:elseif test="clusterName1=='07 People Management and Support Capabilities'">
                                     
<b>PM Prakhash</b> for his contribution on improving client communication and team.
                                   </s:elseif>
                                     <s:elseif test="clusterName1=='08 CFO Capabilities'">
                                     
                        <b>Ojas Shah</b> -  for providing quick resolutions to almost all the issues ( more than 10) directly or indirectly related to P20 during the Year end close. It is only because of him that we managed to ensure a smooth closing of Accounts from IT perspective.

                                   </s:elseif>
                                    <s:elseif test="clusterName1=='10 NSN Wide Capabilities'">
                                     
 <b>Tabrez Khan</b> is the special contributor for 1.	Automation in SharePoint monitoring for efficient working.2.Improved processes for Minor Enhancements by introducing GDP and other standards for effective execution and Quality deliveries *** <b>Kundeti, Satishkumar</b>  for his contribution to make success of HWS Mytoolbox successful migration work.

 

                                   </s:elseif>
                                   <s:else>
                                   Welcome
                                   </s:else>
                                   </b></h3> </marquee>
                                 
                            </div>
                                    </div>
                     <!-- </div> -->
                       <%-- <div class="col-md-6">
                            <div class="box">
                                <div class="box-header">
                                <marquee  direction="left" id="marquee_list2">
    <div onMouseOver="document.getElementById('marquee_list2').stop();" onMouseOut="document.getElementById('marquee_list').start();"> 
    	</div>
                                    <h3 class="box-title"><b style=" color: #FF6D00;"> <s:if test="clusterName2=='05 Deliver Capabilities'">
                                 <p><%String s="Mahesh Bakal Contribution towards HR script development for e-Travel which helps in reducing tickets in  e-travel area as well as improve the customer satisfaction***Ramesh Sigadam   Successful completion of H/W upgrade, Involved in Problem management for Stability of NAIP platform. Leading NOKIA NAIP projects for Design and solution (EBB, CLM, iTower, eCommerce)***Geetanjali Gami  Contribution towards automation of YSDRP run preparation activity which will reduced cycle time of the process drastically ."; %> </p> 
                                    <%char[] c=s.toCharArray(); %>
                                    </s:if>
                                    <s:elseif test="clusterName2=='04 Service Capabilities'">
                                     
                                 <p> Krishna Singh for his contribution in managing KPIs and keeping them green consistently.</p>
                                   </s:elseif>
                                    <s:elseif test="clusterName2=='07 People Management and Support Capabilities'">
                                     
                                 <p>nominate Learning Central application team (LMS) as they have really worked & still continuously working hard to not only resolve backlog tickets but also to keep the overdue tickets less. Team is working hard day & night to reduce backlog, client expectations, AtoS Mgmt. expectations.</p>
                                   </s:elseif>
                                     <s:elseif test="clusterName2=='08 CFO Capabilities'">
                                     
                               <p>  Ajay Mishra for successfully managing and working on Demas with near zero defects.</p>
                                   </s:elseif>
                                    <s:elseif test="clusterName2=='10 NSN Wide Capabilities'">
                                     
                                <p> Tabrez Khan He is one answer for any Cluster Problem. Uses his Innovative mindset to bring up improvements in Process , Technology and People across different applications in our Cluster. Never Say Die Attitude with strong ethics and values.</p>
                                   </s:elseif>
                                   <s:else>
                                   Welcome
                                   </s:else></b></h3> </marquee>
                                 
                            </div>
                                    </div>
                     </div> --%></div>
                </section><!-- /.content -->  
            </aside><!-- /.right-side -->
       

<%--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script> --%>
    
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
       <script src="js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="js/AdminLTE/demo.js" type="text/javascript"></script>
<script src="js/jquery.hashchange.min.js" type="text/javascript"></script>
	
 
     
</body>
</html>