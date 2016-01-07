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
    public class ScrumRoleTypesController : Controller
    {
        private ScrumCaseDBEntities1 db = new ScrumCaseDBEntities1();

        // GET: ScrumRoleTypes
        public ActionResult Index()
        {
            return View(db.ScrumRoleType.ToList());
        }

        // GET: ScrumRoleTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScrumRoleType scrumRoleType = db.ScrumRoleType.Find(id);
            if (scrumRoleType == null)
            {
                return HttpNotFound();
            }
            return View(scrumRoleType);
        }

        // GET: ScrumRoleTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ScrumRoleTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,name")] ScrumRoleType scrumRoleType)
        {
            if (ModelState.IsValid)
            {
                db.ScrumRoleType.Add(scrumRoleType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(scrumRoleType);
        }

        // GET: ScrumRoleTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScrumRoleType scrumRoleType = db.ScrumRoleType.Find(id);
            if (scrumRoleType == null)
            {
                return HttpNotFound();
            }
            return View(scrumRoleType);
        }

        // POST: ScrumRoleTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,name")] ScrumRoleType scrumRoleType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(scrumRoleType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(scrumRoleType);
        }

        // GET: ScrumRoleTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScrumRoleType scrumRoleType = db.ScrumRoleType.Find(id);
            if (scrumRoleType == null)
            {
                return HttpNotFound();
            }
            return View(scrumRoleType);
        }

        // POST: ScrumRoleTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ScrumRoleType scrumRoleType = db.ScrumRoleType.Find(id);
            db.ScrumRoleType.Remove(scrumRoleType);
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
