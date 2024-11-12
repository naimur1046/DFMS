using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class EmployeeDetails
    {
        public virtual int EmployeeID { get; set; }
        public virtual string EmployeeName { get; set; }
        public virtual string EmployeeUserName { get; set; }
        public virtual string EmployeePassword { get; set; }
        public virtual string EmployeePosition { get; set; }
        public virtual string EmployeeContactNumber { get; set; }
        public virtual string EmployeeEmail { get; set; }
        public virtual int EmployeeSalary { get; set; }
        public virtual DateTime EmployeeDateOfJoining { get; set; }
        public virtual int EmployeeShiftTimes { get; set; }
        public virtual string EmployeePermanentAddress { get; set; }
        public virtual string EmployeeShift { get; set; }


    }
}