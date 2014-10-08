
public class MainScene : SEScene
{
	SESprite title;
	SESprite playButton;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

		rsc.prepare_font("title","calibri bold color=black",150);
		rsc.prepare_font("play","forte bold color=black",80);
		title = add_sprite_for_text("RUN Bro!","title");
		title.move(get_scene_width()*0.5-title.get_width()*0.5,get_scene_height()*0.5-title.get_height()*0.5);

		playButton = add_sprite_for_text("PLAY","play");
		playButton.move(get_scene_width()*0.5-playButton.get_width()*0.5,get_scene_height()*0.5+playButton.get_height());
	}

	public void cleanup() {
		base.cleanup();
	}

	 public void on_pointer_press(SEPointerInfo pi) {
        
        
     base.on_pointer_press(pi);
    
        if(pi.is_inside(playButton.get_x(), get_scene_height()*0.5+playButton.get_height(), playButton.get_width(), playButton.get_height())) {
            switch_scene(new MainScene());
			playButton.set_text("Hi!");
        }
       
    
    }
}
