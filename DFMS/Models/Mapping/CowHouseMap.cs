using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class CowHouseMap : ClassMap<CowHouse>
    {
        public CowHouseMap()
        {
            Table("CowHouse");
            Id(u => u.CowHouseID).GeneratedBy.Assigned(); 
            Map(u => u.CowHouseCapacity);
            Map(u => u.CowHouseOccupancySince);
            Map(u => u.CowHouseManagerID);
            Map(u => u.CowHouseUsedFor);
        }
    }
}
