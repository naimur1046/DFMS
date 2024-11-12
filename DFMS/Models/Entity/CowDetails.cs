using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class CowDetails
    {
        public virtual int CowID { get; set; }
        public virtual string CowBreed { get; set; }
        public virtual DateTime CowAge { get; set; }
        public virtual string CowHealthStatus { get; set; }
        public virtual int CowMilkProductionPerday { get; set; }
        public virtual string CowLastVeternaryCheckup { get; set; }
        public virtual double CowWeight { get; set; }
        public virtual DateTime CowBirthDate { get; set; }
        public virtual bool CowIsPregnant { get; set; }
        public virtual string CowGender { get; set; }
        public virtual int CowHouseNo { get; set; }

    }
}