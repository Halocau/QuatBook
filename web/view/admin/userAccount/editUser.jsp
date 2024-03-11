<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBookModalLabel">Edit Account User</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editBookForm" action="manager-user?action=edit" method="POST" enctype="multipart/form-data">
                    <!--id-->
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="idEditInput" name="id" required>
                    </div>
                    <!--Name-->
                    <div class="form-group">
                        <label for="name">Username:</label>
                        <input type="text" class="form-control" id="usernameEditInput" name="username" required>
                        <div id="nameEditError" class="error"></div>
                    </div>
                    <!--Password-->
                    <div class="form-group">
                        <label for="price">Password:</label>
                        <input type="text" class="form-control" id="passwordEditInput" name="password">
                        <div id="priceEditError" class="error"></div>
                    </div>
                    <!--Email-->
                    <div class="form-group">
                        <label for="quantity">Email:</label>
                        <input type="text" class="form-control" id="emailEditInput" name="email">
                        <div id="quantityEditError" class="error"></div>
                    </div>
                    <!--Address-->
                    <div class="form-group">
                        <label for="descriptionEditInput">Address:</label>
                        <input type="text" class="form-control" id="addressEditInput" name="address"/>
                    </div>
                    <!--roleId-->
                    <div class="form-group">
                        <label for="category">Status: </label>
                        <input type="text" class="form-control" id="roleIdEdit" name="roleId" readonly/>   
                    </div> 
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" form="editBookForm"
                        onclick="validateForm2()">Update</button>
                            </div>
        </div>
    </div>
</div>

<script>
                            function validateForm2() {
                                    let name = $('#nameEditInput').val();
                                    let price = $('#priceEditInput').val();


                                    //xoá thông báo lỗi hiện tại                             $('.error').html(''); 
                            if (name === '') {
                            $('#nameEditError').html('Tên sách không được để trống');
                                } 
                            if (price === '') {
                            $('#priceEditError').html('Giá của quyển sách không được để trống');
                            }



                            // Kiểm tra nếu không có lỗi thì submit form                                 let error = '';
                                $('.error').each(function () {
                                    error += $(this).html();
                                });
                                if (error === '') {
                                    $('#editBookForm')
                                            .submit();
                                } else {
                                    event.preventDefault();
                                }
                            }



<!-- function editProductModal(id, name, description, author, price, quantity, image, categoryId) {// -->
    function editProductModal(button) {
        let id = $(button).closest('tr').find('td[name="id"]').text().trim();
        let username = $(button).closest('tr').find('td[name="username"]').text().trim();
        let password = $(button).closest('tr').find('td[name="password"]').text().trim();
        let email = $(button).closest('tr').find('td[name="email"]').text().trim();
        let address = $(button).closest('tr').find('td[name="address"]').text().trim();
       let roleId = $(button).closest('tr').find('td[name="roleId"]').text().trim();

        $('#idEditInput').val(id);
        $('#usernameEditInput').val(username);
        $('#passwordEditInput').val(password);
        $('#emailEditInput').val(email);
        $('#addressEditInput').val(address);
        //loop through category list to select the category
        $('#roleIdEdit').val(roleId);
        
    }

</script>

