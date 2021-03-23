using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    class Sales
    {
        public int SalesId { get; set; }
        public int VehicleId { get; set; }
        public int CustomerId { get; set; }
        public int ShowroomId { get; set; }
        public double Cost { get; set; }
        public DateTime OrderDate { get; set; }
        public DateTime DeliveryDate { get; set; }
        public string Remarks { get; set; }
    }
}
