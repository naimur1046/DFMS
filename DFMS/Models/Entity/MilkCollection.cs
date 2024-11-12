using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class MilkCollection
    {
        public virtual int MilkCollectionID { get; set; }
        public virtual int MilkCollectionCowID { get; set; }
        public virtual int MilkCollectionCollectorID { get; set; }
        public virtual DateTime MilkCollectionDate { get; set; }
        public virtual int MilkCollectionQuantity { get; set; }
        public virtual string MilkCollectionShift { get; set; }
    }
}