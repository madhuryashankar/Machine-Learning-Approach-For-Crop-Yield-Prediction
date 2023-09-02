using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using agricultureProject.DLTableAdapters;
using System.Data;

namespace agricultureProject
{
    public class BLL
    {
        //class which contains class members and member functions/
        //in this class we invoke the queries from the data layer(DL.xsd file)

        //class memebers
        tblUsersTableAdapter userObj = new tblUsersTableAdapter();       
        tblDatasetTableAdapter datasetObj = new tblDatasetTableAdapter();

        //Member Functions
        //login module

        //function to check the user login id and password
        public DataTable CheckUserLogin(string userId, string password)
        {
            return userObj.CheckUserLogin(userId, password);
        }

        //User change Password
        public void UpdateUserPassword(string password, string userId)
        {
            userObj.UpdateUserPassword(password, userId);
        }

        //User management

        //function to insert new User
        public void InsertUser(string userId, string password, string userType, string loc)
        {
            userObj.InsertUser(userId, password, userType, loc);
        }

        //function to delete the user
        public void DeleteUser(string userId)
        {
            userObj.DeleteUser(userId);
        }

        //function to get other users
        public DataTable GetOtherUsers()
        {
            return userObj.GetOtherUsers();
        }

        //function to retrive all users based on type
        public DataTable GetUsersByType(string userType)
        {
            return userObj.GetUsersByUserType(userType);
        }

        //function to check the userid
        public bool CheckUserId(string userId)
        {
            int cnt = int.Parse(userObj.CheckUserId(userId).ToString());

            if (cnt == 1)

                return false;

            return true;
        }

        //function to get the user by id
        public DataTable GetUserById(string userId)
        {
            return userObj.GetUserById(userId);
        }

        //function to update the user
        public void UpdateUser(string userId, string password, string type, string loc, string UId)
        {
            userObj.UpdateUser(userId, password, type, loc, UId);
        }

      

        //Dataset Module
        //function to add dataset
        public void InsertData(string userId, string name, string date, string temp, string rain, string ph, string nitrogen, string paddy, string village, string hobli, string taluk)
        {
            datasetObj.InsertData(userId, name, date, temp, rain, ph, nitrogen, paddy, village, hobli, taluk);
        }

        public void UpdateData(string userId, string name, string date, string temp, string rain, string ph, string nitrogen, string paddy, string village, string hobli, string taluk, long datasetId)
        {
            datasetObj.UpdateData(userId, name, date, temp, rain, ph, nitrogen, paddy, village, hobli, taluk, datasetId);
        }

        public void DeleteData(long datasetId)
        {
            datasetObj.DeleteData(datasetId);
        }

        public DataTable GetDatasetByLoc(string userId)
        {
            return datasetObj.GetDatasetByLocation(userId);
        }
               

        public DataTable GetAllDataset()
        {
            return datasetObj.GetData();
        }

        public DataTable GetDatasetbyId(long datasetId)
        {
            return datasetObj.GetDatasetById(datasetId);
        }

        public void DeleteDataByLoc(string userId)
        {
            datasetObj.DeleteDataByLoc(userId);
        }
                            
        
    }
}