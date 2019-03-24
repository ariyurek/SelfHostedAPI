#region Using namespaces
using System.Collections.Generic;
using System.Linq;
using System.Web.Http; 
#endregion

namespace SelfHostedAPI
{
    /// <summary>
    /// Product controller. Contains CURD operations on product
    /// </summary>
    public class ProductController : ApiController
    {
        private WebApiDbContext db = new WebApiDbContext();
        // GET api/<controller>
        public IEnumerable<Product> Get()
        {
            return db.Product;
           //var entities=new WebApiDbEntities();
           // return entities.Products;
        }

        // GET api/<controller>/5
        public Product Get(int id)
        {
            return db.Product.FirstOrDefault(p => p.ProductId == id);
            //var entities = new WebApiDbEntities();
            //return entities.Products.FirstOrDefault(p=>p.ProductId==id);
        }

        // POST api/<controller>
        public bool Post([FromBody]Product product)
        {
            //var entities = new WebApiDbEntities();
            //entities.AddToProducts(product);
            //var i = entities.SaveChanges();
            db.Product.Add(product);
            var i =  db.SaveChanges();

            return i > 0;
        }

        // PUT api/<controller>/5
        public bool Put(int id, [FromBody]Product product)
        {
            return true;
            //using (var entities = new WebApiDbEntities())
            //{
            //    var prod = (from p in entities.Products
            //                where p.ProductId == id
            //                select p).FirstOrDefault();

            //    prod.ProductName = product.ProductName;
            //    var i=entities.SaveChanges();
            //    return i > 0;
            //}
        }

        // DELETE api/<controller>/5
        public bool Delete(int id)
        {
            return true;
            //using (var entities = new WebApiDbEntities())
            //{
            //    var prod = (from p in entities.Products
            //                where p.ProductId == id
            //                select p).FirstOrDefault();

            //   entities.Products.DeleteObject(prod);
            //   var i=entities.SaveChanges();
            //   return i > 0;
            //}
        }
    }
}