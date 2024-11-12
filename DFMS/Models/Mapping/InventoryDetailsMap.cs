using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class InventoryDetailsMap : ClassMap<InventoryDetails>
    {
        public InventoryDetailsMap()
        {
            Table("InventoryDetails"); 
            Id(u => u.InventoryID).GeneratedBy.Assigned(); 
            Map(u => u.InventoryItemName);
            Map(u => u.InventoryQuantityInStock);
            Map(u => u.InventoryCategory);
            Map(u => u.InventoryHouseNo);
            Map(u => u.InventoryPurchaseID);
        }
    }
}
