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
    public class PBLItemsController : Controller
    {
        private ScrumCaseDBEntities1 db = new ScrumCaseDBEntities1();

        // GET: PBLItems
        public ActionResult Index()
        {
            var pBLItem = db.PBLItem.Include(p => p.Project).Include(p => p.Sprint).Include(p => p.Status);
            return View(pBLItem.ToList());
        }

        // GET: PBLItems/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PBLItem pBLItem = db.PBLItem.Find(id);
            if (pBLItem == null)
            {
                return HttpNotFound();
            }
            return View(pBLItem);
        }

        // GET: PBLItems/Create
        public ActionResult Create()
        {
            ViewBag.projectId = new SelectList(db.Project, "id", "id");
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name");
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1");
            return View();
        }

        // POST: PBLItems/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,name,projectId,sprintId,statusID,priority,estimatedHours,description")] PBLItem pBLItem)
        {
            if (ModelState.IsValid)
            {
                db.PBLItem.Add(pBLItem);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.projectId = new SelectList(db.Project, "id", "id", pBLItem.projectId);
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", pBLItem.sprintId);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", pBLItem.statusID);
            return View(pBLItem);
        }

        // GET: PBLItems/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PBLItem pBLItem = db.PBLItem.Find(id);
            if (pBLItem == null)
            {
                return HttpNotFound();
            }
            ViewBag.projectId = new SelectList(db.Project, "id", "id", pBLItem.projectId);
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", pBLItem.sprintId);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", pBLItem.statusID);
            return View(pBLItem);
        }

        // POST: PBLItems/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,name,projectId,sprintId,statusID,priority,estimatedHours,description")] PBLItem pBLItem)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pBLItem).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.projectId = new SelectList(db.Project, "id", "id", pBLItem.projectId);
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", pBLItem.sprintId);
            ViewBag.statusID = new SelectList(db.Status, "statusId", "status1", pBLItem.statusID);
            return View(pBLItem);
        }

        // GET: PBLItems/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PBLItem pBLItem = db.PBLItem.Find(id);
            if (pBLItem == null)
            {
                return HttpNotFound();
            }
            return View(pBLItem);
        }

        // POST: PBLItems/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PBLItem pBLItem = db.PBLItem.Find(id);
            db.PBLItem.Remove(pBLItem);
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
