<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> First Name: </label>
            <div class="col-sm-4">
                <input type="text" name="firstName" value="<#if user??>${user.firstName}</#if>"
                       class="form-control ${(firstNameError??)?string('is-invalid', '')}"
                       placeholder="First name"/>
                <#if firstNameError??>
                    <div class="invalid-feedback">
                        ${firstNameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Last Name: </label>
            <div class="col-sm-4">
                <input type="text" name="lastName" value="<#if user??>${user.lastName}</#if>"
                       class="form-control ${(lastNameError??)?string('is-invalid', '')}"
                       placeholder="Last name"/>
                <#if lastNameError??>
                    <div class="invalid-feedback">
                        ${lastNameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> e-mail: </label>
                <div class="col-sm-4">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="some@gmail.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>