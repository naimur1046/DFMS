using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class CowDetailsMap : ClassMap<CowDetails>
    {
        public CowDetailsMap()
        {
            Table("CowDetails"); 
            Id(u => u.CowID).GeneratedBy.Assigned(); 
            Map(u => u.CowBreed);
            Map(u => u.CowAge);
            Map(u => u.CowHealthStatus);
            Map(u => u.CowMilkProductionPerday);
            Map(u => u.CowLastVeternaryCheckup);
            Map(u => u.CowWeight);
            Map(u => u.CowBirthDate);
            Map(u => u.CowIsPregnant);
            Map(u => u.CowGender);
            Map(u => u.CowHouseNo);
        }
    }
}
