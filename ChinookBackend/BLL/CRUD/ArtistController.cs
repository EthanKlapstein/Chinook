using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Infrastructure;
using ChinookBackend.DAL;
using ChinookBackend.Entities;
using System.ComponentModel;

namespace ChinookBackend.BLL.CRUD
{
    public class ArtistController
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Artist> ListAllArtists()
        {
            using(var context = new ChinookContext())
            {
                return context.Artists.Include(nameof(Artist.Album)).ToList();
            }
        }
    }
}
