exports.action = function(data, callback, config, SARAH){

	if(!data.operation){
		return callback({'tts':"Désolé je n'ai pas compris"});
	}else{ 
		var operation = data.operation

		setTimeout((function() {
			var exec = require('child_process').exec;
			var process = __dirname+'/lib/'+operation+'.wsh';
			var child = exec(process,
			function (error, stdout, stderr) { });
		}), 400); 
	}
	return callback({'tts':"Opération terminé"});
};


