using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class EmployeeDetailsMap : ClassMap<EmployeeDetails>
    {
        public EmployeeDetailsMap()
        {
            Table("EmployeeDetails"); 
            Id(u => u.EmployeeID).GeneratedBy.Assigned(); 
            Map(u => u.EmployeeName);
            Map(u => u.EmployeeUserName);
            Map(u => u.EmployeePassword);
            Map(u => u.EmployeePosition);
            Map(u => u.EmployeeContactNumber);
            Map(u => u.EmployeeEmail);
            Map(u => u.EmployeeSalary);
            Map(u => u.EmployeeDateOfJoining);
            Map(u => u.EmployeeShiftTimes);
            Map(u => u.EmployeePermanentAddress);
            Map(u => u.EmployeeShift);
        }
    }
}
