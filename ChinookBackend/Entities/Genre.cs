using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Genre")]
    public class Genre
    {
        #region Column Mappings
        [Key]
        public int GenreID { get; set; }
        public string Name { get; set; }
        #endregion

        #region Navigational Property
        public virtual ICollection<Track> Track { get; set; } = new HashSet<Track>();
        #endregion
    }
}