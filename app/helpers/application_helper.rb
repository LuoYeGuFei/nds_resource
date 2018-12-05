module ApplicationHelper

  def title_tag(str)
    content_for :title, h("#{str} - NDS资源管理系统")
  end
end
