using System;

namespace TygaSoft.Model
{
    [Serializable]
    public partial class ProductPictureInfo
    {
        public object Id { get; set; }

        public string OriginalPicture { get; set; }

        public string BPicture { get; set; }

        public string MPicture { get; set; }

        public string SPicture { get; set; }

        public string OtherPicture { get; set; }

        public DateTime LastUpdatedDate { get; set; }
    }
}
