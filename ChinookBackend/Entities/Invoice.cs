using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Invoice")]
    public class Invoice
    {
        #region Column Mappings
        [Key]
        public int InvoiceID { get; set; }
        public int CustomerID { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public string BillingAddress { get; set; }
        public string BillingCity { get; set; }
        public string BillingState { get; set; }
        public string BillingCountry { get; set; }
        public string BillingPostalCode { get; set; }
        public decimal Total { get; set; }
        #endregion

        #region Navigational Properties
        public virtual ICollection<InvoiceLine> InvoiceLine { get; set; } = new HashSet<InvoiceLine>();
        public virtual Customer Customer { get; set; }
        #endregion
    }
}
