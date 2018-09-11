using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using ChatSignalRWebForms.Models;

namespace ChatSignalRWebForms
{
    public class ChatHub : Hub
    {
        static List<Users> ConnectedUsers = new List<Users>();
        static List<Messages> CurrentMessage = new List<Messages>();



        public void Connect(string UserName)
        {
            var id = Context.ConnectionId;

            // quiere decir que no ha estado conectado
            if (ConnectedUsers.Count(c => c.ConnectionId == id) == 0)
            {
                string UserImg = GetUserImage();
                string loginTime = DateTime.Now.ToString();
                ConnectedUsers.Add(new Users { ConnectionId = id, LoginTime = loginTime, UserImage = UserImg, UserName = UserName });

                //Se envía al cliente los conectados y también los mensajes...
                Clients.Caller.onConnected(id, UserName, ConnectedUsers, CurrentMessage);

                Clients.AllExcept(id).onNewUserConnected(id, UserName, UserImg, loginTime);
            }
        }

        public void SendMessageToAll(string userName, string message, string time)
        {
            string UserImg = GetUserImage();
            // store last 100 messages in cache
            AddMessageinCache(userName, message, time, UserImg);

            // Broad cast message
            Clients.All.messageReceived(userName, message, time, UserImg);

        }


        private void AddMessageinCache(string userName, string message, string time, string UserImg)
        {
            CurrentMessage.Add(new Messages { UserName = userName, Message = message, Time = time, UserImage = UserImg });

            if (CurrentMessage.Count > 100)
                CurrentMessage.RemoveAt(0);

            // Refresh();
        }


        public string GetUserImage()
        {
            string RetimgName = "images/dummypicture.png";
            //try
            //{
            //    string query = "select Photo from tbl_Users where UserName='" + username + "'";
            //    string ImageName = ConnC.GetColumnVal(query, "Photo");

            //    if (ImageName != "")
            //        RetimgName = "images/DP/" + ImageName;
            //}
            //catch (Exception ex)
            //{ }
            return RetimgName;
        }

        public override System.Threading.Tasks.Task OnDisconnected(bool stopCalled)
        {
            var item = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == Context.ConnectionId);
            if (item != null)
            {
                ConnectedUsers.Remove(item);

                var id = Context.ConnectionId;
                Clients.All.onUserDisconnected(id, item.UserName);

            }
            return base.OnDisconnected(stopCalled);
        }

    }
}