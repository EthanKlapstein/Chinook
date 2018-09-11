using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Customer")]
    public class Customer
    {
        #region Column Mappings
        [Key]
        public int CustomerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Company { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string PostalCode { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        public int SupportRepID { get; set; }
        #endregion

        public string FullName { get { return $"{FirstName} {LastName}"; } }

        #region Navigational Properties
        public virtual Employee Employee { get; set; }
        public virtual ICollection<Invoice> Invoice { get; set; } = new HashSet<Invoice>();
        #endregion

    }
}