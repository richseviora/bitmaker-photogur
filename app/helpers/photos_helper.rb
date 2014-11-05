module PhotosHelper
  def list_group_link(path,text,classes)
    if current_page?(path)
      # Necessary to state partial, otherwise locals are not passed to partial.
      render partial: 'list_item_current', locals: {path: path, text: text, classes: classes}
    else
      render partial: 'list_item_standard', locals: {path: path, text: text, classes: classes}
    end
  end
end
