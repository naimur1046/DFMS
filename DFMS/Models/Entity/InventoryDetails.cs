using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class InventoryDetails
    {
        public virtual int InventoryID { get; set; }
        public virtual string InventoryItemName { get; set; }
        public virtual int InventoryQuantityInStock { get; set; }
        public virtual string InventoryCategory { get; set; }
        public virtual int InventoryHouseNo { get; set; }
        public virtual int InventoryPurchaseID { get; set; }




    }
}
