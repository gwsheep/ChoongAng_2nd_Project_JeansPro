$(document).ready(function() {


    /* 모달창 */
    const modal = $("#modal");
    const btnModal = $(".btn-modal");
    const closeBtn = modal.find(".close-area");

    function isModalOn() {
        return modal.css("display") === "none";
    }

    function modalOn() {
        modal.css("display", "flex");
    }

    function modalOff() {
        modal.css("display", "none");
    }

    btnModal.on("click", function() {
        modalOn();
    });

    closeBtn.on("click", function() {
        modalOff();
    });

    modal.on("click", function(e) {
        const evTarget = $(e.target);
        if (evTarget.hasClass("modal-overlay")) {
            modalOff();
        }
    });

    $(window).on("keyup", function(e) {
        if (isModalOn() && e.key === "Escape") {
            modalOff();
        }
    });
});
