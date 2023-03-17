using Conference_Article_Application.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Conference_Article_Application.Managers
{
    public static class UIManager
    {
        static UIState CurrentState;

        public static void ChangeUI(UIState newState)
        {
            CurrentState = newState;
        }

        public static void WriteUI()
        {
            switch (CurrentState)
            {
                case UIState.Menu:
                    Console.WriteLine("Menu");
                    break;
            }
        }

        static void WriteOptions(string[] options)
        {

        }
    }
}
