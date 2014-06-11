package com.emilio.webdev.actions;

import org.springframework.webflow.action.AbstractAction;
import org.springframework.webflow.action.FormAction;
import org.springframework.webflow.execution.Action;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import com.emilio.webdev.models.Player;
import com.emilio.webdev.search.PlayerSearchCriteria;
import com.emilio.webdev.services.PlayerService;

public class FindExistingPlayerAction implements Action {
	
	private PlayerService playerService;
	
	public void setPlayerService(PlayerService playerService) {
		this.playerService = playerService;
	}
	
	@Override
	public Event execute(RequestContext context) throws Exception {
		Event event = null;
		PlayerSearchCriteria criteria = (PlayerSearchCriteria) context.getFlowScope().get("playerSearchCriteria");
		if(criteria != null) {
			Player player = playerService.findExistingPlayer(criteria);
			context.getFlowScope().put("player", player);
			event = new Event(this, "success");
		} else{
			event = new Event(this, "error");
		}
		return event;
	}

}