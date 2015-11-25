module MircopostsHelper


  def uploadfile(file)
    if !file.original_filename.empty?
      @filename = file.original_filename
      #设置目录路径，如果目录不存在，生成新目录
      FileUtils.mkdir("#{Rails.root}/app/assets/images") unless File.exist?("#{Rails.root}/app/assets/images")
      #写入文件      
      ##wb 表示通过二进制方式写，可以保证文件不损坏
      File.open("#{Rails.root}/app/assets/images/#{@filename}", "wb") do |f|
        f.write(file.read)
      end
      file_path = "#{Rails.root}/app/assets/images/#{@filename}"
      new_file =  Time.now.to_f.to_s + File.extname(@filename)
      File.rename(file_path, "#{Rails.root}/app/assets/images/#{new_file}")
      "assets/#{new_file}"
    end
  end

  def format_time(time)
  	time
  end

end
