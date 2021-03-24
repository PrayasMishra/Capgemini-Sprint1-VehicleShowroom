using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class ShowroomEntity
    {
        public int ShowroomId { get; set; }
        public string Name { get; set; }
        public int DealerId { get; set; }
        public string OwnerName { get; set; }
        public string ContactNo { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string PinCode { get; set; }
    }
}
