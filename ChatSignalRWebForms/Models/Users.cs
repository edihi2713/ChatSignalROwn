using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChatSignalRWebForms.Models
{
    public class Users
    {
        public string ConnectionId { get; set; }
        public string UserName { get; set; }
        public string UserImage { get; set; }
        public string LoginTime { get; set; }
    }
}