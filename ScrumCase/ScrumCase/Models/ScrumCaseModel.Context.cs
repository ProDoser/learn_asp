﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ScrumCaseDBEntities1 : DbContext
    {
        public ScrumCaseDBEntities1()
            : base("name=ScrumCaseDBEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DefinitionOfDone> DefinitionOfDone { get; set; }
        public virtual DbSet<Meeting> Meeting { get; set; }
        public virtual DbSet<MeetingType> MeetingType { get; set; }
        public virtual DbSet<PBLItem> PBLItem { get; set; }
        public virtual DbSet<Person> Person { get; set; }
        public virtual DbSet<Project> Project { get; set; }
        public virtual DbSet<ProjectRoleAssignment> ProjectRoleAssignment { get; set; }
        public virtual DbSet<ScrumRoleType> ScrumRoleType { get; set; }
        public virtual DbSet<Sprint> Sprint { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<Task> Task { get; set; }
    }
}
