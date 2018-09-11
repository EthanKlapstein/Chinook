using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChinookBackend.Entities
{
    public class PlaylistTrack
    {
        #region Column Mappings
        [Key]
        public int PlaylistID { get; set; }
        public int TrackID { get; set; }
        #endregion

        #region Navigational Property
        public virtual Track Track { get; set; }
        public virtual Playlist Playlist { get; set; }
        #endregion
    }
}