using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(ChatSignalRWebForms.Startup))]  
namespace ChatSignalRWebForms
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }  
    }
}