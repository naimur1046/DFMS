using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class CowSaleMap : ClassMap<CowSale>
    {
        public CowSaleMap()
        {
            Table("CowSale"); 
            Id(u => u.CowSaleID).GeneratedBy.Assigned(); 
            Map(u => u.CowSaleBuyerID);
            Map(u => u.CowSaleCowID);
            Map(u => u.CowSaleSellerID);
            Map(u => u.CowSaleDate);
            Map(u => u.CowSalePrice);
            Map(u => u.CowSalePaymentMethod);
        }
    }
}
