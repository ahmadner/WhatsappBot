count = 0
def _tubeDownloader(video_url,ex):
    try :
        import pytube
        import os
        from datetime import datetime
        global count
        homedir = os.environ['HOME']
        video_folder = f'{homedir}/whatsappBot/whatsappFiles/dwonloads/mp4'
        audio_folder = f'{homedir}/whatsappBot/whatsappFiles/dwonloads/mp3'
        now = datetime.now()
        t = now.strftime(r"%m%d%Y%H%M%S")
        url = video_url[1]
        youtube = pytube.YouTube(url)
        vName = t+str(count)
        count +=1
        if ex == 'd':
            video = youtube.streams.first()
            video.download(video_folder,filename=str(vName))
            folderLink = (f'{video_folder}/{vName}.mp4')
            return folderLink
        elif ex == 'a' :
            video = youtube.streams.filter(only_audio=True).first()
            video.download(audio_folder,filename=str(vName))
            os.rename(f'{audio_folder}/{vName}.mp4',f'{audio_folder}/{vName}.mp3')
            folderLink = (f'{audio_folder}/{vName}.mp3')
            return folderLink
    except:print ('[*] Error in tubeDownloader');return 'Error'
