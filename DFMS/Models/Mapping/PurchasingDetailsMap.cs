using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class PurchasingDetailsMap : ClassMap<PurchasingDetails>
    {
        public PurchasingDetailsMap()
        {
            Table("PurchasingDetails");
            Id(u => u.PurchaseID).GeneratedBy.Assigned(); 

            Map(u => u.SupplierDetails);
            Map(u => u.PurchaseItemName);
            Map(u => u.PurchaseItemQuantity);
            Map(u => u.PurchaseItemPricePerUnit);
            Map(u => u.PurchaseItemDate);
            Map(u => u.PurchaseItemPaymentStatus);
            Map(u => u.PurchaseItemPaymentMethod);
            Map(u => u.PurchaseItempReceiveDate);
        }
    }
}
