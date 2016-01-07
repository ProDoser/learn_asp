using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ScrumCase.Models;

namespace ScrumCase.Controllers
{
    public class ProjectRoleAssignmentsController : Controller
    {
        private ScrumCaseDBEntities1 db = new ScrumCaseDBEntities1();

        // GET: ProjectRoleAssignments
        public ActionResult Index()
        {
            var projectRoleAssignment = db.ProjectRoleAssignment.Include(p => p.Person).Include(p => p.Project).Include(p => p.ScrumRoleType);
            return View(projectRoleAssignment.ToList());
        }

        // GET: ProjectRoleAssignments/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProjectRoleAssignment projectRoleAssignment = db.ProjectRoleAssignment.Find(id);
            if (projectRoleAssignment == null)
            {
                return HttpNotFound();
            }
            return View(projectRoleAssignment);
        }

        // GET: ProjectRoleAssignments/Create
        public ActionResult Create()
        {
            ViewBag.personId = new SelectList(db.Person, "id", "firstName");
            ViewBag.projectId = new SelectList(db.Project, "id", "id");
            ViewBag.roleId = new SelectList(db.ScrumRoleType, "id", "name");
            return View();
        }

        // POST: ProjectRoleAssignments/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "projectId,personId,roleId")] ProjectRoleAssignment projectRoleAssignment)
        {
            if (ModelState.IsValid)
            {
                db.ProjectRoleAssignment.Add(projectRoleAssignment);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.personId = new SelectList(db.Person, "id", "firstName", projectRoleAssignment.personId);
            ViewBag.projectId = new SelectList(db.Project, "id", "id", projectRoleAssignment.projectId);
            ViewBag.roleId = new SelectList(db.ScrumRoleType, "id", "name", projectRoleAssignment.roleId);
            return View(projectRoleAssignment);
        }

        // GET: ProjectRoleAssignments/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProjectRoleAssignment projectRoleAssignment = db.ProjectRoleAssignment.Find(id);
            if (projectRoleAssignment == null)
            {
                return HttpNotFound();
            }
            ViewBag.personId = new SelectList(db.Person, "id", "firstName", projectRoleAssignment.personId);
            ViewBag.projectId = new SelectList(db.Project, "id", "id", projectRoleAssignment.projectId);
            ViewBag.roleId = new SelectList(db.ScrumRoleType, "id", "name", projectRoleAssignment.roleId);
            return View(projectRoleAssignment);
        }

        // POST: ProjectRoleAssignments/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "projectId,personId,roleId")] ProjectRoleAssignment projectRoleAssignment)
        {
            if (ModelState.IsValid)
            {
                db.Entry(projectRoleAssignment).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.personId = new SelectList(db.Person, "id", "firstName", projectRoleAssignment.personId);
            ViewBag.projectId = new SelectList(db.Project, "id", "id", projectRoleAssignment.projectId);
            ViewBag.roleId = new SelectList(db.ScrumRoleType, "id", "name", projectRoleAssignment.roleId);
            return View(projectRoleAssignment);
        }

        // GET: ProjectRoleAssignments/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProjectRoleAssignment projectRoleAssignment = db.ProjectRoleAssignment.Find(id);
            if (projectRoleAssignment == null)
            {
                return HttpNotFound();
            }
            return View(projectRoleAssignment);
        }

        // POST: ProjectRoleAssignments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProjectRoleAssignment projectRoleAssignment = db.ProjectRoleAssignment.Find(id);
            db.ProjectRoleAssignment.Remove(projectRoleAssignment);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
