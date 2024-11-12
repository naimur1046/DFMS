using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class CalfDetails
    {
        public virtual int CalfID { get; set; }
        public virtual int CalfMotherID { get; set; }
        public virtual int CalfFatherID { get; set; }
        public virtual DateTime CalfBirthDate { get; set; }
        public virtual string CalfHealthStatus { get; set; }
        public virtual int CalfWeightAtBirth { get; set; }

        public virtual string CalfVaccinationStatus { get; set; }
        public virtual int CalfHouseNo { get; set; }






    }
}