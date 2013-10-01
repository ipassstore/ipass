# -- encoding: utf-8

class HomeController < ApplicationController

  def index
    @title = t('site.home')
  end

  def products
    @title = t('site.products')
  end

  def contact
    @title = t('site.contact')
  end

end
