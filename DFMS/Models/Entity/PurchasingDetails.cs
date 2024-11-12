using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class PurchasingDetails
    {
        public virtual int PurchaseID { get; set; }
        public virtual string SupplierDetails { get; set; }
        public virtual string PurchaseItemName { get; set; }
        public virtual int PurchaseItemQuantity { get; set; }

        public virtual int PurchaseItemPricePerUnit { get; set; }
        public virtual DateTime PurchaseItemDate { get; set; }
        public virtual string PurchaseItemPaymentStatus { get; set; }
        public virtual string PurchaseItemPaymentMethod { get; set; }
        public virtual DateTime PurchaseItempReceiveDate { get; set; }


    }
}

