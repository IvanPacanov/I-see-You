using AForge.Imaging.Filters;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using AForge.Imaging;
using DevExpress.Data.Helpers;
using Emgu.CV;
using Emgu.CV.CvEnum;
using Emgu.CV.Structure;

namespace I_See_You.ImageProces
{
    public static class ImagineProcessing
    {
        /// <summary>
        /// Generate a gray <c>BitmapImage</c>
        /// </summary>
        /// <param name="bitmapImage"></param>
        /// <returns> </returns>
        public static BitmapImage GrayScale(this BitmapImage bitmapImage)
        {

            // Bitmap bitmap = bitmapImage.BitmapImage2Bitmap();

            Image<Bgr, byte> myImage = new Image<Bgr, byte>(bitmapImage.BitmapImage2Bitmap());

            Mat imgGrayscale = new Mat(myImage.Size, DepthType.Cv8U, 1);
            Mat imgGrayscale2 = new Mat(myImage.Size, DepthType.Cv8U, 1);
            // CvInvoke.BitwiseNot(myImage, imgGrayscale);
            CvInvoke.CvtColor(myImage, imgGrayscale2, ColorConversion.Bgr2Lab);


            CvInvoke.CvtColor(imgGrayscale2, imgGrayscale, ColorConversion.Bgr2Rgb);

            return imgGrayscale.Bitmap.ToBitmapImage(); //Grayscale.CommonAlgorithms.BT709.Apply(bitmap).ToBitmapImage();
        }
        /// <summary>
        /// Generate a binary BitmapImage
        /// </summary>
        /// <param name="bitmapImage"></param>
        /// <param name="thresholdLevel"></param>
        /// <returns></returns>
        public static BitmapImage Binary(this BitmapImage bitmapImage, int thresholdLevel)
        {

            Bitmap bitmap = bitmapImage.BitmapImage2Bitmap();
            Threshold threshold = new Threshold(thresholdLevel);
            IFilter filter = Grayscale.CommonAlgorithms.BT709;
            bitmap = filter.Apply(bitmap);
            return threshold.Apply(bitmap).ToBitmapImage();
        }
        public static BitmapImage Invert(this BitmapImage bitmapImage)
        {
            Bitmap bitmap = bitmapImage.BitmapImage2Bitmap();

            for (int y = 0; (y <= (bitmap.Height - 1)); y++)
            {
                for (int x = 0; (x <= (bitmap.Width - 1)); x++)
                {
                    Color inv = bitmap.GetPixel(x, y);
                    inv = Color.FromArgb(255, (255 - inv.R), (255 - inv.G), (255 - inv.B));
                    //if (inv.R > 240)
                    //{
                    //    inv = Color.FromArgb(0, (inv.R), 0, 0);
                    //}
                    //else
                    //{
                    //    inv = Color.FromArgb(0, (0), 0, 0);
                    //}
                    //int R = 0;
                    //int G = 0;
                    //int B = 0;
                    //if (inv.R / 2 > 105)
                    //{
                    //    R = 1;
                    //}

                    //if (inv.G / 2 > 105)
                    //{
                    //    G= 1;
                    //   }

                    //if (inv.B / 2 > 105)
                    //        {
                    //       B = 1;
                    //   }
                    //   inv = Color.FromArgb(255, R,G,B);

                    bitmap.SetPixel(x, y, inv);
                }
            }

            return bitmap.ToBitmapImage();
        }
        public static BitmapImage DilatationImage(this BitmapImage bitmapimage)
        {
            Bitmap bitmap = bitmapimage.BitmapImage2Bitmap();
            Dilatation dilatation = new Dilatation();
            dilatation.Apply(bitmap);
            return bitmap.ToBitmapImage();
        }


        public static BitmapImage Contrast(this BitmapImage bitmapimage, int factor)
        {
            Bitmap bitmap = bitmapimage.BitmapImage2Bitmap();
            ContrastCorrection contrastCorrection = new ContrastCorrection(factor);
            contrastCorrection.ApplyInPlace(bitmap);
            return bitmap.ToBitmapImage();
        }


    }
}