using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using TygaSoft.Model;

namespace TygaSoft.IDAL
{
    public partial interface ICategory
    {
        #region ICategory Member

        CategoryInfo GetModelByJoin(object Id);

        List<CategoryInfo> GetListByJoin();

        #endregion
    }
}
