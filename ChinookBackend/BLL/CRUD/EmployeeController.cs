using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Infrastructure;
using ChinookBackend.DAL;
using ChinookBackend.Entities;
using System.ComponentModel;

namespace ChinookBackend.BLL.CRUD
{
    [DataObject]
    public class EmployeeController
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Employee> ListAllEmployees()
        {
            using (var context = new ChinookContext())
            {
                return context.Employees.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddEmployee(Employee info)
        {
            using (var context = new ChinookContext())
            {
                context.Employees.Add(info);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateEmployee(Employee info)
        {
            using (var context = new ChinookContext())
            {
                DbEntityEntry<Employee> existing = context.Entry(info);
                existing.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void RemoveEmployee(Employee info)
        {
            using (var context = new ChinookContext())
            {
                var existing = context.Employees.Find(info.EmployeeID);
                context.Employees.Remove(existing);
                context.SaveChanges();
            }
        }
    }
}
