//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ScrumCase.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PBLItem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PBLItem()
        {
            this.Task = new HashSet<Task>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public int projectId { get; set; }
        public Nullable<int> sprintId { get; set; }
        public int statusID { get; set; }
        public int priority { get; set; }
        public int estimatedHours { get; set; }
        public string description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Task> Task { get; set; }
        public virtual Project Project { get; set; }
        public virtual Sprint Sprint { get; set; }
        public virtual Status Status { get; set; }
    }
}