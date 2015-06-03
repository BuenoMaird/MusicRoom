var ready = function () {
 
    /**
     * When the send text link on our home page is clicked
     * send an ajax request to our rails app with the sender_id and
     * recipient_id
     */
 
    $('.start-discussion').click(function (e) {
        e.preventDefault();
 
        var sender_id = $(this).data('sid');
        var recipient_id = $(this).data('rip');
 
        $.post("/discussions", { sender_id: sender_id, recipient_id: recipient_id }, function (data) {
            console.log("Chat with about to be called.");
            chatBox.chatWith(data.discussion_id);
        });
    });
 
    /**
     * Used to minimize the chatbox
     */
 
    $(document).on('click', '.toggleChatBox', function (e) {
        e.preventDefault();
 
        var id = $(this).data('cid');
        chatBox.toggleChatBoxGrowth(id);
    });
 
    /**
     * Used to close the chatbox
     */
 
    $(document).on('click', '.closeChat', function (e) {
        e.preventDefault();
 
        var id = $(this).data('cid');
        chatBox.close(id);
    });
 
 
    /**
     * Listen on keypress' in our chat textarea and call the
     * chatInputKey in chat.js for inspection
     */
 
    $(document).on('keydown', '.chatboxtextarea', function (event) {
 
        var id = $(this).data('cid');
        chatBox.checkInputKey(event, $(this), id);
    });
 
    /**
     * When a discussion link is clicked show up the respective
     * discussion chatbox
     */
 
    $('a.discussion').click(function (e) {
        e.preventDefault();
        console.log("a.discussion clicked")
        var discussion_id = $(this).data('cid');
        chatBox.chatWith(discussion_id);
    });
 
 
}
 
$(document).ready(ready);
$(document).on("page:load", ready);