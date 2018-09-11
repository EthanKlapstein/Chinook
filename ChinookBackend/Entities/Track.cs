using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Track")]
    public class Track
    {
        #region Column Mappings
        [Key]
        public int TrackID { get; set; }
        public string Name { get; set; }
        public int AlbumID { get; set; }
        public int MediaTypeID { get; set;}
        public int GenreID { get; set; }
        public string Composer { get; set; }
        public int Milliseconds { get; set; }
        public int Bytes { get; set; }
        public decimal UnitPrice { get; set; }
        #endregion

        #region Navigational Property
        public virtual MediaType MediaType { get; set; }
        public virtual Genre Genre { get; set; }
        public virtual Album Album { get; set; }
        public virtual ICollection<PlaylistTrack> PlaylistTrack { get; set; } = new HashSet<PlaylistTrack>();
        public virtual ICollection<InvoiceLine> InvoiceLine { get; set; } = new HashSet<InvoiceLine>();
        #endregion
    }
}