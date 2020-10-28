using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Mandour.Models
{
    public class Todos
    {
        [Key]
        public int TodoID { get; set; }
        [Required]
        [Display(Name = "Todo Title")]
        public string TodoTitle { get; set; }
        public string UserID { get; set; }
        [Required]
        [Display(Name = "Todo Date")]
        public DateTime TodoDate { get; set; }
        public bool IsDone { get; set; }


    }
}