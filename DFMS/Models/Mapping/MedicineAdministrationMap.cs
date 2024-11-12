using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class MedicineAdministrationMap : ClassMap<MedicineAdministration>
    {
        public MedicineAdministrationMap()
        {
            Table("MedicineAdministration"); // Specify the table name
            Id(u => u.MedicineAdministrationID).GeneratedBy.Assigned(); // Use GeneratedBy.Identity() if you want auto-increment
            Map(u => u.MedicineName);
            Map(u => u.MedicineAdministrationCowID);
            Map(u => u.MedicineAdministrationInventoryID);
            Map(u => u.MedicineAdministrationCowProblem);
            Map(u => u.MedicineAdministrationDosage);
            Map(u => u.MedicineAdministrationDate);
            Map(u => u.MedicineAdministrationBy);
        }
    }
}
