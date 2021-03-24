using System.Drawing;
namespace Entities
{
    public class VehicleEntity
    {
        public int VehicleId { get; set; }
        public string VehicleName { get; set; }
        public string VehicleMode { get; set; }
        public int DealerId { get; set; }
        public Image Img { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string PinCode { get; set; }
    }
}
