using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("InvoiceLine")]
    public class InvoiceLine
    {
        #region Column Mappings
        [Key]
        public int InvoiceLineID { get; set; }
        public int InvoiceID { get; set; }
        public int TrackID { get; set; }
        public decimal UnitPrice { get; set; }
        public int Quantitiy { get; set; }
        #endregion

        #region Navigational Properties
        public virtual Track Track { get; set; }
        public virtual Invoice Invoice { get; set; }
        #endregion
    }
}
