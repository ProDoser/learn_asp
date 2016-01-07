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
    public class TasksController : Controller
    {
        private ScrumCaseDBEntities1 db = new ScrumCaseDBEntities1();

        // GET: Tasks
        public ActionResult Index()
        {
            var task = db.Task.Include(t => t.PBLItem).Include(t => t.Person).Include(t => t.Status);
            return View(task.ToList());
        }

        // GET: Tasks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Task.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        // GET: Tasks/Create
        public ActionResult Create()
        {
            ViewBag.PBLItemID = new SelectList(db.PBLItem, "id", "name");
            ViewBag.personID = new SelectList(db.Person, "id", "firstName");
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1");
            return View();
        }

        // POST: Tasks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,name,statusID,priority,estimatedHours,description,PBLItemID,personID,assignmentDate,completionDate")] Task task)
        {
            if (ModelState.IsValid)
            {
                db.Task.Add(task);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PBLItemID = new SelectList(db.PBLItem, "id", "name", task.PBLItemID);
            ViewBag.personID = new SelectList(db.Person, "id", "firstName", task.personID);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", task.statusID);
            return View(task);
        }

        // GET: Tasks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Task.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            ViewBag.PBLItemID = new SelectList(db.PBLItem, "id", "name", task.PBLItemID);
            ViewBag.personID = new SelectList(db.Person, "id", "firstName", task.personID);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", task.statusID);
            return View(task);
        }

        // POST: Tasks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,name,statusID,priority,estimatedHours,description,PBLItemID,personID,assignmentDate,completionDate")] Task task)
        {
            if (ModelState.IsValid)
            {
                db.Entry(task).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PBLItemID = new SelectList(db.PBLItem, "id", "name", task.PBLItemID);
            ViewBag.personID = new SelectList(db.Person, "id", "firstName", task.personID);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", task.statusID);
            return View(task);
        }

        // GET: Tasks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task task = db.Task.Find(id);
            if (task == null)
            {
                return HttpNotFound();
            }
            return View(task);
        }

        // POST: Tasks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Task task = db.Task.Find(id);
            db.Task.Remove(task);
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
