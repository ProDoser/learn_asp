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
    
    public partial class Meeting
    {
        public int id { get; set; }
        public Nullable<int> meetingTypeId { get; set; }
        public Nullable<int> sprintId { get; set; }
        public Nullable<System.DateTime> startTime { get; set; }
    
        public virtual Sprint Sprint { get; set; }
        public virtual MeetingType MeetingType { get; set; }
    }
}
