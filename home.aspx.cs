using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoubleTFurniture
{
    public partial class home : System.Web.UI.Page
    {
        public List<Category> categories = new List<Category>();
        public List<Product> products = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryDAO categoryDAO = new CategoryDAO();
            categories =  categoryDAO.getAll();
            ProductDAO productDAO = new ProductDAO();
            products = productDAO.getAll();
        }
    }
}