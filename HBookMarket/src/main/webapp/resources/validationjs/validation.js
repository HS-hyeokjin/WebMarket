function CheckAddBook() {

	var productId = document.getElementById("bookId");

	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	//도서 아이디가 isbn으로 시작되고 숫자를 포함허여 문자 길이가 5~12자
	if (!check(/^ISBN[a-zA-Z0-9]{1,8}$/, productId,
		"[도서 코드]\nISBN과 숫자를 조합하여 5~12까지 입력하세요.\n첫글자는 반드시 ISBN로 시작하세요."))
		return false;
	//도서명 길이가 4~12인지
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[상품명]\n최소 4자에서 12자까지 입력하세요.");
		name.select();
		name.focus();
		return false;
	}
	//상품가격의 문자 길이가 0인지 숫자인지
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	//가격이 음수인지
	if (unitPrice.value < 0) {
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+?:[.]?[\d]?[\d]?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요."))
		return false;
	//재고 수가 숫자인지
	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요.");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	function check(regExp, e, msg) {
		if (regExp.test(e.value))
			return true;

		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newProduct.submit();
}