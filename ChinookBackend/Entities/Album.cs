using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    [Table("Album")]
    public class Album
    {
        #region Colun Mappings
        [Key]
        public int AlbumID { get; set; }
        public string Title { get; set; }
        public int ArtistID { get; set; }
        #endregion

        #region Navigational Property
        //For Navigational Properties use public virtuals
        public virtual Artist Artist { get; set; }
        public virtual ICollection<Track> Track { get; set; } = new HashSet<Track>();
        #endregion
    }
}
