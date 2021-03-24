using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VehicleShowroom.DAL;
using Entities;
namespace VehicleShowroom.BLL
{
    public class DealerBLL
    {
        public int AddNewDealer(DealerEntitiy dealer)
        {
            DealerDAL dAL = new DealerDAL();
            return dAL.AddNewDealer(dealer);
        }
    }
}
