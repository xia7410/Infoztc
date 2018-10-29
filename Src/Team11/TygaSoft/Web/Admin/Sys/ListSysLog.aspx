﻿<%@ Page Title="日志列表" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ListSysLog.aspx.cs" Inherits="TygaSoft.Web.Admin.Sys.ListSysLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

<div id="toolbar" style="padding:5px;">
    关键字：<input type="text" runat="server" id="txtKeyword" maxlength="50" class="txt" />
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="ListSysLog.Search()">查 詢</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="ListSysLog.Del()">删 除</a>
</div>

<table id="dgT" class="easyui-datagrid" title="日志列表" data-options="rownumbers:true,pagination:true,fit:true,fitColumns:true,toolbar:'#toolbar'">
    <thead>
        <tr>
            <th data-options="field:'f0',checkbox:true"></th>
            <th data-options="field:'f1',width:100">应有程序</th>
            <th data-options="field:'f2',width:130">方法名称</th>
             <th data-options="field:'f3',width:300">日志消息</th>
            <th data-options="field:'f4',width:120">最后更新时间</th>
           
        </tr>
    </thead>
    <tbody>
    <asp:Repeater ID="rpData" runat="server">
        <ItemTemplate>
            <tr>
                <td><%#Eval("Id")%></td>
                <td><%#Eval("AppName")%></td>
                <td><%#Eval("MethodName")%></td>
                <td><%#Eval("Message")%></td>
                <td><%#((DateTime)Eval("LastUpdatedDate")).ToString("yyyy-MM-dd HH:mm")%></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    </tbody>
</table>

<asp:Literal runat="server" ID="ltrMyData"></asp:Literal>

<script type="text/javascript" src="../../Scripts/Admin/Sys/ListSysLog.js"></script>

<script type="text/javascript">
    var sPageIndex = 0;
    var sPageSize = 0;
    var sTotalRecord = 0;
    var sQueryStr = "";

    $(function () {
        try {
            var myData = ListSysLog.GetMyData("myDataForPage");
            $.map(myData, function (item) {
                sPageIndex = parseInt(item.PageIndex);
                sPageSize = parseInt(item.PageSize);
                sTotalRecord = parseInt(item.TotalRecord);
                sQueryStr = item.QueryStr.replace(/&amp;/g, '&');
            })

            ListSysLog.Init();
        }
        catch (e) {
            $.messager.alert('错误提醒', e.name + ": " + e.message, 'error');
        }

    })
</script>

</asp:Content>
