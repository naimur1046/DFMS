using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class MedicineAdministration
    {
        public virtual int MedicineAdministrationID { get; set; }
        public virtual string MedicineName { get; set; }
        public virtual int MedicineAdministrationCowID { get; set; }
        public virtual int MedicineAdministrationInventoryID { get; set; }
        public virtual int MedicineAdministrationCowProblem { get; set; }
        public virtual int MedicineAdministrationDosage { get; set; }

        public virtual DateTime MedicineAdministrationDate { get; set; }
        public virtual string MedicineAdministrationBy { get; set; }






    }
}

