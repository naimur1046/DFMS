using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class CalfDetailsMap:ClassMap<CalfDetails>
    {
        public CalfDetailsMap() {
            Table("CalfDetails");
            Id(u=>u.CalfID).GeneratedBy.Assigned();
            Map(u=>u.CalfFatherID);
            Map(u=>u.CalfMotherID);
            Map(u=>u.CalfHouseNo);
            Map(u=>u.CalfHealthStatus);
            Map(u=>u.CalfBirthDate);
            Map(u=>u.CalfVaccinationStatus);
            Map(u=>u.CalfWeightAtBirth);
            

        }

    }
}
