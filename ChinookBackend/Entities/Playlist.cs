using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    public class Playlist
    {
        #region Column Mappings
        [Key]
        public int PlaylistID { get; set; }
        public string Name { get; set; }
        #endregion

        #region Navigational Property
        public virtual ICollection<PlaylistTrack> PlaylistTrack { get; set; } = new HashSet<PlaylistTrack>();
        #endregion
    }
}
