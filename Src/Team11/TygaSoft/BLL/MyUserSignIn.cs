﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using TygaSoft.IDAL;
using TygaSoft.Model;
using TygaSoft.DALFactory;

namespace TygaSoft.BLL
{
    public partial class UserSignIn
    {
        #region UserSignIn Member

        public UserSignInInfo GetModelByUser(object userId)
        {
            return dal.GetModelByUser(userId);
        }

        #endregion
    }
}
