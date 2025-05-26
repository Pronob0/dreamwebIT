<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ContactMessage;
use App\Models\ContactPage;
use App\Models\Counter;
use App\Models\Feature;
use App\Models\Generalsetting;
use App\Models\Page;
use App\Models\Project;
use App\Models\Service;
use App\Models\Subscriber;
use App\Models\Team;
use App\Models\Testimonial;
use Brian2694\Toastr\Facades\Toastr ;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;


//use Markury\MarkuryPost;

class FrontendController extends Controller
{

    public function __construct()
    {
        
        // $this->auth_guests();

        $this->middleware(function ($request, $next) {
            if (!Session::has('popup')) {
                view()->share('visited', 1);
            }
            Session::put('popup', 1);
            return $next($request);
        });
    }

    public function language($id){
        Session::put('language', $id);
        return redirect()->back();
    }

    public function index()
    {

        $data['counters'] = Counter::get();
        $data['projects'] = Project::with('category')->orderby('id', 'desc')->take(4)->get();
        $data['brands'] = Brand::get();
        $data['feature_services'] = Service::where('is_feature', 1)->latest()->take(3)->get();
        $data['teams'] = Team::take(4)->get();
        $data['about'] = About::first();
        $data['blogs'] = Blog::with('category')->orderby('id', 'desc')->take(3)->get();
        $data['testimonials'] = Testimonial::get();
        $data['servicescategory'] = Category::get();
        $data['features'] = Feature::take(6)->get();

        return view(theme() . 'front.index', $data);
    }

    public function contact()
    {
        $contact = ContactPage::first();
        return view('front.contact', compact('contact'));
    }

    public function contactSubmit(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'phone' => 'required',
            'message' => 'required',
        ]);

        

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
               Toastr::error($error, 'Error');
            }
            return redirect()->back();
        }

        $contact_message = new ContactMessage();
        $contact_message->name = $request->name;
        $contact_message->email = $request->email;
        $contact_message->subject = $request->subject;
        $contact_message->phone = $request->phone;
        $contact_message->message = $request->message;
        $contact_message->created_at = now();
        $contact_message->type = 'contact';
        $contact_message->save();
        return back()->with('success', 'Message sent successfully');
    }

    

    

    public function page($slug)
    {
        $page = Page::where('slug', $slug)->first();
        return view('front.page', compact('page'));
    }

    public function blog(Request $request)
    {
        $category = $request->has('category') ? BlogCategory::where('slug', $request->category)->first() : '';
        $tag = $request->has('tag') ? $request->tag : '';

        $tags = null;
        $tagz = '';
        $name = Blog::pluck('tags')->toArray();
        foreach($name as $nm)
        {
            $tagz .= $nm.',';
        }
        $tags = array_unique(explode(',',$tagz));

        

        $search = $request->has('search') ? $request->search : '';
        $blogs = Blog::with('category')->orderby('id', 'desc')
            ->when($category, function ($query, $category) {
                $query->where('category_id', $category->id);
            })
            ->when($search, function ($query, $search) {
                $query->where('title', 'like', '%' . $search . '%');
            })
            ->when($tag, function ($query, $tag) {
                $query->where('tags', 'like', '%' . $tag . '%');
            })
            ->paginate(6);

        $categories = BlogCategory::whereStatus(1)->get();
        return view('front.blog.index', compact('blogs', 'categories','tags'));
    }

    public function blog_details($slug)
    {
        $blog = Blog::where('slug', $slug)->first();
        $blog->views = $blog->views + 1;
        $blog->update();
        $tags = null;
        $tagz = '';
        $name = Blog::pluck('tags')->toArray();
        foreach($name as $nm)
        {
            $tagz .= $nm.',';
        }
        $tags = array_unique(explode(',',$tagz));

        $categories = BlogCategory::whereStatus(1)->get();
        $recent_blogs = Blog::with('category')->orderby('id', 'desc')->take(3)->get();
        return view('front.blog.details', compact('blog', 'recent_blogs', 'categories','tags'));
    }

    public function service()
    {
        $services = Service::whereStatus(1)
            
            ->paginate(12);
            $brands = Brand::get();
        return view('front.service.index', compact('services', 'brands'));
    }

    public function service_details($slug)
    {
        $service = Service::with('faqs')->where('slug', $slug)->first();
        $services = Service::where('id', '!=', $service->id)->get();
        $brands = Brand::get();
        return view('front.service.details', compact('service', 'services', 'brands'));
    }

    public function project()
    {
        $projects = Project::with('category')
            ->when(request()->has('search'), function ($query) {
                $query->where('title', 'like', '%' . request()->search . '%');
            })
            ->get();
        return view('front.project.index', compact('projects'));
    }

    public function project_details($slug)
    {
        $project = Project::with('category')->where('slug', $slug)->first();
        $recent_project = Project::with('category')->where('id', '!=', $project->id)->orderby('id', 'desc')->take(3)->get();
        return view('front.project.details', compact('project', 'recent_project'));
    }

    public function team()
    {
        $teams = Team::get();
        return view('front.team.index', compact('teams'));
    }

    public function team_details($slug)
    {
        $team = Team::where('slug', $slug)->first();
        $teams = Team::where('id', '!=', $team->id)->get();
        $brands = Brand::get();
        return view('front.team.details', compact('team', 'teams','brands'));
    }

    public function subscriber(Request $request)
    {
        $request->validate([
            'email' => 'required|email|unique:subscribers,email',
        ]);

        $subscriber = new Subscriber();
        $subscriber->email = $request->email;
        $subscriber->save();
        return back()->with('success', 'Subscribed successfully');
    }

    public function maintenance()
    {
        
        $gs = Generalsetting::first();
        if($gs->is_maintenance == 1){
            return view('front.maintenance');
        }else{
            return redirect()->route('front.index');
        }
       
    }

   

    public function aboutpage(){
        $data['about'] = About::first();
        return view('front.aboutus',$data);
    }

}
