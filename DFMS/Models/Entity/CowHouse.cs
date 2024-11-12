
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class CowHouse
    {
        public virtual int CowHouseID { get; set; }
        public virtual int CowHouseCapacity { get; set; }
        public virtual int CowHouseOccupancySince { get; set; }
        public virtual int CowHouseManagerID { get; set; }

        public virtual int CowHouseUsedFor { get; set; }



    }
}

