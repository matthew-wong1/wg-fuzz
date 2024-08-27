struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(vec3<bool>(!arg_0.x, true, true));
    var var_2 = _wgslsmith_sub_vec3_i32(firstTrailingBit(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-23318i, 101529i, -31509i), vec3<i32>(6051i, 9707i, -22683i)))), -vec3<i32>(2147483647i, -1i, firstLeadingBit(-59918i)));
    let var_3 = 2147483647i;
    let var_4 = Struct_1(vec3<bool>(true, var_3 < ~(~var_2.x), false));
    return Struct_1(!var_0);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0.b, arg_2);
    let var_1 = firstTrailingBit(u_input.b.zzy);
    var var_2 = Struct_2(var_0.a, func_2(vec3<bool>(all(select(vec4<bool>(arg_2.a.x, var_0.a.a.x, arg_0.a.a.x, false), vec4<bool>(arg_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(true, arg_2.a.x, false, arg_2.a.x))), all(!vec2<bool>(arg_2.a.x, arg_2.a.x)), any(vec2<bool>(arg_2.a.x, arg_0.a.a.x)))));
    var_2 = Struct_2(func_2(select(!select(vec3<bool>(arg_2.a.x, arg_0.a.a.x, false), vec3<bool>(var_2.a.a.x, true, var_2.a.a.x), var_0.a.a.x), !select(vec3<bool>(arg_0.a.a.x, var_2.a.a.x, var_2.a.a.x), vec3<bool>(true, false, var_0.b.a.x), true), var_0.b.a)), func_2(vec3<bool>(false, true, false)));
    let var_3 = any(!vec4<bool>(arg_2.a.x, true, arg_0.b.a.x, arg_2.a.x));
    return true;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(select(!(!vec4<bool>(false, true, arg_0, false)), !select(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), true), !vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, arg_0, arg_0))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, false, true)))), select(select(!(!vec4<bool>(false, arg_0, arg_0, arg_0)), select(vec4<bool>(arg_0, true, true, true), !vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, true, true, arg_0)), func_3(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, true, false))), _wgslsmith_sub_u32(0u, u_input.a), func_2(vec3<bool>(arg_0, true, false)))), !(!(!vec4<bool>(false, true, true, arg_0))), !arg_0), !(!vec4<bool>(arg_0, arg_0, false, any(vec3<bool>(false, arg_0, arg_0)))));
    var_0 = select(vec4<bool>(var_0.x, !var_0.x, all(!(!var_0.zyw)), any(!var_0.xwz)), !(!(!select(vec4<bool>(false, true, arg_0, true), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, true, arg_0, false)))), false);
    let var_1 = Struct_2(Struct_1(var_0.wxy), func_2(vec3<bool>(true, true, true)));
    var var_2 = Struct_1(var_1.a.a);
    var_0 = vec4<bool>(!var_2.a.x, var_1.a.a.x, true, true);
    return Struct_1(vec3<bool>(false, arg_0 & false, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>((select(false, true, true) | true) & true, true, true));
    var_0 = func_1(var_0.a.x);
    var_0 = Struct_1(!vec3<bool>(u_input.c.x == u_input.c.x, func_3(Struct_2(Struct_1(vec3<bool>(true, false, var_0.a.x)), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), u_input.a, func_1(false)), var_0.a.x));
    var_0 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1358f, _wgslsmith_f_op_f32(-1292f + 987f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1281f, -176f) * vec2<f32>(-637f, -1127f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(625f, 574f), vec2<f32>(-1308f, 400f)))))), vec2<f32>(-506f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1005f)), 1085f)))));
}

