using DFMS.Models.Entity;
using FluentNHibernate.Mapping;

namespace DFMS.Models.Mapping
{
    public class CustomerDetailsMap : ClassMap<CustomerDetails>
    {
        public CustomerDetailsMap()
        {
            Table("CustomerDetails"); 
            Id(u => u.CustomerID).GeneratedBy.Assigned(); 
            Map(u => u.CustomerName);
            Map(u => u.CustomerNumber);
            Map(u => u.CustomerPassword);
            Map(u => u.CustomerEmail);
            Map(u => u.CustomerLocation);
            Map(u => u.CustomerType);
        }
    }
}
