﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Text;
using TygaSoft.Model;
using TygaSoft.BLL;
using TygaSoft.WebHelper;
using TygaSoft.DBUtility;

namespace TygaSoft.Web.Admin.Topic
{
    public partial class ListTopicComment : System.Web.UI.Page
    {
        StringBuilder myDataAppend = new StringBuilder(300);
        int pageIndex = WebCommon.PageIndex;
        int pageSize = WebCommon.PageSize10;
        string queryStr;
        ParamsHelper parms;
        string sqlWhere;
        string content;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                NameValueCollection nvc = Request.QueryString;
                int index = 0;
                foreach (string item in nvc.AllKeys)
                {
                    GetParms(item, nvc);

                    if (item != "pageIndex" && item != "pageSize")
                    {
                        index++;
                        if (index > 1) queryStr += "&";
                        queryStr += string.Format("{0}={1}", item, Server.HtmlEncode(nvc[item]));
                    }
                }

                Bind();
            }

            ltrMyData.Text = "<div id=\"myDataAppend\" style=\"display:none;\">" + myDataAppend.ToString() + "</div>";
        }

        private void Bind()
        {
            int totalRecords = 0;
            if (!string.IsNullOrEmpty(tsId.Value))
            {
                //查询条件 
                GetSearchItem();

                TopicComment bll = new TopicComment();

                rpData.DataSource = bll.GetListOW(pageIndex, pageSize, out totalRecords, sqlWhere, parms == null ? null : parms.ToArray());
                rpData.DataBind();
            }

            myDataAppend.Append("<div id=\"myDataForPage\" style=\"display:none;\">[{\"PageIndex\":\"" + pageIndex + "\",\"PageSize\":\"" + pageSize + "\",\"TotalRecord\":\"" + totalRecords + "\",\"QueryStr\":\"" + queryStr + "\"}]</div>");
        }

        private void GetSearchItem()
        {
            if (!string.IsNullOrEmpty(tsId.Value))
            {
                if (parms == null) parms = new ParamsHelper();

                sqlWhere += "and TopicSubjectId = @TopicSubjectId ";
                SqlParameter parm = new SqlParameter("@TopicSubjectId", SqlDbType.UniqueIdentifier);
                parm.Value = Guid.Parse(tsId.Value);
                parms.Add(parm);
            }

            if (!string.IsNullOrWhiteSpace(content))
            {
                if (parms == null) parms = new ParamsHelper();

                sqlWhere += "and ContentText like @ContentText ";
                SqlParameter parm = new SqlParameter("@ContentText", SqlDbType.NVarChar, 2000);
                parm.Value = "%" + content + "%";
                parms.Add(parm);
            }
        }

        private void GetParms(string key, NameValueCollection nvc)
        {
            switch (key)
            {
                case "pageIndex":
                    Int32.TryParse(nvc[key], out pageIndex);
                    break;
                case "pageSize":
                    Int32.TryParse(nvc[key], out pageSize);
                    break;
                case "content":
                    txtContent.Value = nvc[key];
                    content = nvc[key];
                    break;
                case "tsId":
                    tsId.Value = nvc[key];
                    break;
                default:
                    break;
            }
        }
    }
}