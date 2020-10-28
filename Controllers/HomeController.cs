using Mandour.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Mandour.Controllers
{
    public class HomeController : Controller
    {
        //public ActionResult Index()
        //{
        //    return View();
        //}
        public ActionResult Index()
        {
            Todos todo = new Todos();
            ViewData["AddTodo"] = todo;
            MandourContext obj = new MandourContext();
            string strUserID = User.Identity.GetUserId();
            var model = obj.Todos.Where(xx => xx.UserID == strUserID);
            return View(model.ToList());
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult DeleteTodo(string hdnTodoIDDelete)
        {
            MandourContext obj = new MandourContext();
            //Advertisement ad = new Advertisement();
            Todos fav = new Todos();
            string strUserID = User.Identity.GetUserId();
            var model = obj.Todos.Where(vv => vv.UserID == strUserID);
            if (hdnTodoIDDelete != "0" || hdnTodoIDDelete != null)
            {
                try
                {
                    fav = obj.Todos.Find(int.Parse(hdnTodoIDDelete));
                    obj.Entry(fav).State = EntityState.Deleted;
                    obj.SaveChanges();
                    ViewBag.TodoDeleteSuccess = "Delete Todo Successfully";
                    return View("Index", model);
                }
                catch (Exception)
                {
                    ViewBag.TodoDeleteError = "Error While Delete Todo";
                    return View("Index", model);
                }

            }
            else
            {
                ViewBag.TodoDeleteError = "Select Todo To Delete";
                return View("Index", model);
            }

        }
        public ActionResult NotDoneTodo(string hdnDoneID)
        {
            MandourContext obj = new MandourContext();
            Todos ad = new Todos();
            string strUserID = User.Identity.GetUserId();

            if (hdnDoneID != "0" || hdnDoneID != null)
            {
                try
                {
                    ad = obj.Todos.Find(int.Parse(hdnDoneID));
                    ad.IsDone = false;
                    obj.Entry(ad).State = EntityState.Modified;
                    obj.SaveChanges();
                    ViewBag.TodoDeleteSuccess = "Todo Not Done Successfully";
                    var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", model);
                }
                catch (Exception)
                {
                    ViewBag.TodoDeleteError = "Error While Not Done Todo";
                    var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", model);
                }

            }
            else
            {
                ViewBag.TodoDeleteError = "Select Todo To Not Done";
                var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                return View("Index", model);
            }

        }
        public ActionResult DoneTodo(string hdnDoneID)
        {
            MandourContext obj = new MandourContext();
            Todos ad = new Todos();
            string strUserID = User.Identity.GetUserId();

            if (hdnDoneID != "0" || hdnDoneID != null)
            {
                try
                {
                    ad = obj.Todos.Find(int.Parse(hdnDoneID));
                    ad.IsDone = true;
                    obj.Entry(ad).State = EntityState.Modified;
                    obj.SaveChanges();
                    ViewBag.TodoDeleteSuccess = "Todo Done Successfully";
                    var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", model);
                }
                catch (Exception)
                {
                    ViewBag.TodoDeleteError = "Error While Done Todo";
                    var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", model);
                }

            }
            else
            {
                ViewBag.TodoDeleteError = "Select Todo To Done";
                var model = obj.Todos.Where(vv => vv.UserID == strUserID);
                return View("Index", model);
            }

        }
        [HttpPost]
        public ActionResult AddTodo(Todos model)
        {
            string strUserID = User.Identity.GetUserId();
            MandourContext objReturn = new MandourContext();
            if (ModelState.IsValid)
            {
                try
                {
                    model.IsDone = false;
                    model.UserID = strUserID;
                    MandourContext obj = new MandourContext();
                    obj.Todos.Add(model);
                    obj.SaveChanges();
                    ViewBag.TodoDeleteSuccess = "Add Todo Successfully";
                    ModelState.Clear();
                    var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", modelNew);
                }
                catch (Exception)
                {
                    ViewBag.TodoDeleteError = "Error While Add Todo";
                    var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", modelNew);
                }

            }
            else
            {
                ViewBag.TodoDeleteError = "Error While Add Todo";
                var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                return View("Index", modelNew);
            }
           
        }
        [HttpPost]
        public ActionResult UpdateTodo(Todos model, string hdnTodoID)
        {
            MandourContext obj = new MandourContext();
            MandourContext objReturn = new MandourContext();
            Todos ad = new Todos();
            string strUserID = User.Identity.GetUserId();

            if (hdnTodoID != "0" || hdnTodoID != null)
            {
                try
                {
                    ad = obj.Todos.Find(int.Parse(hdnTodoID));
                    ad.IsDone = model.IsDone;
                    ad.TodoDate = model.TodoDate;
                    ad.TodoTitle = model.TodoTitle;
                    ad.UserID = strUserID;
                    obj.Entry(ad).State = EntityState.Modified;
                    obj.SaveChanges();
                    ViewBag.TodoDeleteSuccess = "Edit Todo Successfully";
                    var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", modelNew);
                }
                catch (Exception)
                {
                    ViewBag.TodoDeleteError = "Error While Edit Todo";
                    var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                    return View("Index", modelNew);
                }

            }
            else
            {
                ViewBag.TodoDeleteError = "Error While Edit Todo";
                var modelNew = objReturn.Todos.Where(vv => vv.UserID == strUserID);
                return View("Index", modelNew);
            }
        }
    }
}