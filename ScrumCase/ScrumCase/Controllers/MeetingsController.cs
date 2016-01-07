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
    public class MeetingsController : Controller
    {
        private ScrumCaseDBEntities1 db = new ScrumCaseDBEntities1();

        // GET: Meetings
        public ActionResult Index()
        {
            var meeting = db.Meeting.Include(m => m.Sprint).Include(m => m.MeetingType);
            return View(meeting.ToList());
        }

        // GET: Meetings/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Meeting meeting = db.Meeting.Find(id);
            if (meeting == null)
            {
                return HttpNotFound();
            }
            return View(meeting);
        }

        // GET: Meetings/Create
        public ActionResult Create()
        {
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name");
            ViewBag.meetingTypeId = new SelectList(db.MeetingType, "id", "name");
            return View();
        }

        // POST: Meetings/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,meetingTypeId,sprintId,startTime")] Meeting meeting)
        {
            if (ModelState.IsValid)
            {
                db.Meeting.Add(meeting);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", meeting.sprintId);
            ViewBag.meetingTypeId = new SelectList(db.MeetingType, "id", "name", meeting.meetingTypeId);
            return View(meeting);
        }

        // GET: Meetings/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Meeting meeting = db.Meeting.Find(id);
            if (meeting == null)
            {
                return HttpNotFound();
            }
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", meeting.sprintId);
            ViewBag.meetingTypeId = new SelectList(db.MeetingType, "id", "name", meeting.meetingTypeId);
            return View(meeting);
        }

        // POST: Meetings/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,meetingTypeId,sprintId,startTime")] Meeting meeting)
        {
            if (ModelState.IsValid)
            {
                db.Entry(meeting).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.sprintId = new SelectList(db.Sprint, "id", "name", meeting.sprintId);
            ViewBag.meetingTypeId = new SelectList(db.MeetingType, "id", "name", meeting.meetingTypeId);
            return View(meeting);
        }

        // GET: Meetings/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Meeting meeting = db.Meeting.Find(id);
            if (meeting == null)
            {
                return HttpNotFound();
            }
            return View(meeting);
        }

        // POST: Meetings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Meeting meeting = db.Meeting.Find(id);
            db.Meeting.Remove(meeting);
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
