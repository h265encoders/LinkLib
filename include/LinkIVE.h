#ifndef LINKIVE_H
#define LINKIVE_H
#include "Link.h"
#include <QRect>
#ifndef LINK_LIBRARY
#include "hi_common.h"
#include "hi_comm_ive.h"
#include "hi_defines.h"
#include "hi_comm_video.h"
#endif

#ifdef LINK_MPP_V5
#define VIDEO_FRAME_INFO_S hi_video_frame_info
#define IVE_IMAGE_S hi_svp_img
#define IVE_DATA_S hi_svp_data
#define IVE_MEM_INFO_S hi_svp_mem_info
#define HI_U64 hi_u64
#define HI_U16 hi_u16
#define HI_U8 hi_u8
#define IVE_HANDLE hi_ive_handle
#define IVE_IMAGE_TYPE_E hi_svp_img_type
#define IVE_IMAGE_TYPE_U8C1 HI_SVP_IMG_TYPE_U8C1
#endif

class IVEMem
{
public:
    friend class LinkIVE;
    IVEMem();
    IVEMem(int w, int h, int chn=1, bool cached=false, const char *name=NULL);
    ~IVEMem();
    void fromFrame(VIDEO_FRAME_INFO_S &frame, bool cached=false);
    void memset(char c);
    void resize(int w,int h);
    void flush();
    IVEMem toUV();
    IVEMem sub(int chn);
    IVEMem rect(QRect rect);
    IVE_IMAGE_S *toImage(IVE_IMAGE_TYPE_E type=IVE_IMAGE_TYPE_U8C1);
    IVE_DATA_S *toData();
    IVE_MEM_INFO_S *toMem();
    char *data();
private:
    bool isFrame;
    IVE_IMAGE_S s_img;
    IVE_DATA_S s_data;
    IVE_MEM_INFO_S s_mem;

    HI_U16  width;
    HI_U16  height;
    int channels;
    HI_U8  *virAddr[3];

    HI_U16  stride[3];
    HI_U64  phyAddr[3];
};

class LinkIVE
{
public:
    LinkIVE();
    void wait();
    static VIDEO_FRAME_INFO_S makeFrame(int width, int height);
    bool copy(IVEMem &src, IVEMem &dst,QRect rect=QRect(0,0,0,0));
    bool copySmall(IVEMem &src, IVEMem &dst);
    bool erode(IVEMem &src, IVEMem &dst, int size);
    bool dilate(IVEMem &src, IVEMem &dst, int size);
    bool thresh(IVEMem &src, IVEMem &dst, int low, int high=-1,int val=255);
    bool integ(IVEMem &src, IVEMem &dst);
    quint32 integRect(IVEMem &mem, QRect rect);
    bool sobel(IVEMem &src, IVEMem &dst, char *mask=NULL, int norm=1);
    bool filter(IVEMem &src, IVEMem &dst, char *mask=NULL, int norm=0);
    bool resize(IVEMem &src, IVEMem &dst);
    bool Sub(IVEMem &src1, IVEMem &src2, IVEMem &dst);
    bool And(IVEMem &src1, IVEMem &src2, IVEMem &dst);
    bool Or(IVEMem &src1, IVEMem &src2, IVEMem &dst);
    bool Add(IVEMem &src1, IVEMem &src2, IVEMem &dst, double a, double b);
    bool canny(IVEMem &src, IVEMem &dst, int low=50, int high=150, char *mask=NULL);
    QVariantList CCL(IVEMem &src, int area);
protected:
    IVE_HANDLE handle;
};

#endif // LINKIVE_H
