using System.Runtime.InteropServices;

namespace Xam.Plugin.Mixpanel.iOS
{
    [StructLayout (LayoutKind.Sequential)]
    public struct mp_tweak_entry
    {
        public unsafe string name;

        public unsafe void* value;

        public unsafe void* min;

        public unsafe void* max;

        public unsafe sbyte** encoding;
    }
}
