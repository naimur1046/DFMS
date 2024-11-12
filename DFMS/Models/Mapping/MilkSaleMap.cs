using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class MilkSaleMap : ClassMap<MilkSale>
    {
        public MilkSaleMap()
        {
            Table("MilkSale"); // Specify the table name
            Id(u => u.MilkSaleID).GeneratedBy.Assigned(); // Use GeneratedBy.Identity() if it's auto-incrementing

            Map(u => u.MilkSaleCustomerID);
            Map(u => u.MilkSaleSallerID);
            Map(u => u.MilkSaleType);
            Map(u => u.MilkSaleDate);
            Map(u => u.MilkSaleQuantity);
            Map(u => u.MilkSalePricePerLiter);
            Map(u => u.MilkSaleTotalAmount);
            Map(u => u.MilkSalePaymentMethod);
            Map(u => u.MilkSaleLocation);
        }
    }
}
