using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Employee")]
    public class Employee
    {
        #region Column Mappings
        [Key]
        public int EmployeeID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Title { get; set; }
        public int? ReportsTo { get; set; }
        public DateTime? BirthDate { get; set; }
        public DateTime? HireDate { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string PostalCode { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        #endregion

        public string FullName { get { return $"{FirstName} {LastName}"; } }

        #region Navigational Properties
        public virtual ICollection<Customer> Customer { get; set; } = new HashSet<Customer>();
        [ForeignKey("ReportsTo")]
        public virtual Employee Manager { get; set; }
        public ICollection<Employee> Subbordinates { get; set; } = new HashSet<Employee>();
        #endregion

        //A constructor is responsible for giving all properties of a class meaningful values
    }
}
