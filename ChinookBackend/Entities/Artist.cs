using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Artist")]
    public class Artist
    {
        #region Column Mappings
        [Key]
        public int ArtistID { get; set; }
        public string Name { get; set; }
        #endregion

        #region Navigational Property
        public virtual ICollection<Album> Album { get; set; } = new HashSet<Album>();
        #endregion
    }
}
