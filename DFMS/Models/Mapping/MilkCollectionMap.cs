using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class MilkCollectionMap : ClassMap<MilkCollection>
    {
        public MilkCollectionMap()
        {
            Table("MilkCollection"); // Specify the table name
            Id(u => u.MilkCollectionID).GeneratedBy.Assigned(); // Use GeneratedBy.Identity() if you want auto-increment
            Map(u => u.MilkCollectionCowID);
            Map(u => u.MilkCollectionCollectorID);
            Map(u => u.MilkCollectionDate);
            Map(u => u.MilkCollectionQuantity);
            Map(u => u.MilkCollectionShift);
        }
    }
}
