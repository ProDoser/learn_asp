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
    
    public partial class ProjectRoleAssignment
    {
        public int projectId { get; set; }
        public int personId { get; set; }
        public Nullable<int> roleId { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual Project Project { get; set; }
        public virtual ScrumRoleType ScrumRoleType { get; set; }
    }
}
