using PerfumerService.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PerfumerService.Services
{
    public class UserService : EntityService<User>
    {
        public UserService(PerfumerEntities context) : base(context) { }
    }
}
