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
                <form id="editBookForm" action="manageruser?action=edit" method="POST" enctype="multipart/form-data" onsubmit="return validateForm2()">
                    <!--id-->
                    <div class="form-group"  style="display: none" >
                        <input type="text" class="form-control" id="idEditInput" name="id"  required>
                    </div>
                    <!--Name-->
                    <div class="form-group">
                        <label for="name">Username:</label>
                        <input type="text" class="form-control" id="usernameEditInput" name="username"  required>
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
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<script>
    function validateForm2() {
        let username = $('#usernameEditInput').val();
        let password = $('#passwordEditInput').val();
        let email = $('#emailEditInput').val();
        let address = $('#addressEditInput').val();
        let roleId = $('#roleIdEdit').val();

        // Xóa thông báo lỗi hiện tại
        $('.error').html('');

        let error = '';

        if (username.trim() === '') {
            $('#nameEditError').html('Tên người dùng không được để trống');
            error += 'Tên người dùng không được để trống. ';
        }

        if (password.trim() === '') {
            $('#passwordEditError').html('Mật khẩu không được để trống');
            error += 'Mật khẩu không được để trống. ';
        }

       

        

        // Kiểm tra nếu không có lỗi thì submit form
        if (error === '') {
            $('#editBookForm').submit();
        } else {
            // Ngăn chặn việc submit form và hiển thị tất cả các lỗi
            event.preventDefault();
            alert('Vui lòng sửa các lỗi sau:\n' + error);
        }
    }

    // Hàm mở modal chỉnh sửa sản phẩm
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
        $('#roleIdEdit').val(roleId);
    }
</script>


