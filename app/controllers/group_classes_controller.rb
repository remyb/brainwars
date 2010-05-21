class GroupClassesController < ApplicationController
  # GET /group_classes
  # GET /group_classes.xml
  def index
    @group_classes = GroupClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_classes }
    end
  end

  # GET /group_classes/1
  # GET /group_classes/1.xml
  def show
    @group_class = GroupClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_class }
    end
  end

  # GET /group_classes/new
  # GET /group_classes/new.xml
  def new
    @group_class = GroupClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_class }
    end
  end

  # GET /group_classes/1/edit
  def edit
    @group_class = GroupClass.find(params[:id])
  end

  # POST /group_classes
  # POST /group_classes.xml
  def create
    @group_class = GroupClass.new(params[:group_class])

    respond_to do |format|
      if @group_class.save
        flash[:notice] = 'GroupClass was successfully created.'
        format.html { redirect_to(@group_class) }
        format.xml  { render :xml => @group_class, :status => :created, :location => @group_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_classes/1
  # PUT /group_classes/1.xml
  def update
    @group_class = GroupClass.find(params[:id])

    respond_to do |format|
      if @group_class.update_attributes(params[:group_class])
        flash[:notice] = 'GroupClass was successfully updated.'
        format.html { redirect_to(@group_class) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_classes/1
  # DELETE /group_classes/1.xml
  def destroy
    @group_class = GroupClass.find(params[:id])
    @group_class.destroy

    respond_to do |format|
      format.html { redirect_to(group_classes_url) }
      format.xml  { head :ok }
    end
  end
end
