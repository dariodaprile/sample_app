require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App')}
    it { should have_selector('title', text: 'Darios site | Home')}
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector 'h1', text: 'Help'}

  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector 'h1', text: 'About Us'}

    end

    describe "Contact page" do

      it "should have the h1 'Contact'" do
        visit contac_path
        page.should have_selector('h1', text: 'Contact')
      end
      it "should have the h1 'Contact'" do
        visit contac_path
        page.should have_selector('title', text: 'Darios site | Contact')
      end

    end
  end
