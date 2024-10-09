using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai5._1.Models
{
    public class Staff
    {
        public int StaffId { get; set; }
        public string StaffName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public decimal Salary { get; set; }
        public string StaffImage { get; set; }
    }
}