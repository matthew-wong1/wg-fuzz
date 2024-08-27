struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = ~abs((vec3<i32>(u_input.b, 1i, 25701i) & min(vec3<i32>(2147483647i, u_input.c.x, u_input.b), vec3<i32>(u_input.b, 2147483647i, -2147483647i))) ^ _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.c.x, -1i, 37720i), vec3<i32>(17335i, u_input.d.x, u_input.d.x)), -vec3<i32>(u_input.a.x, u_input.d.x, u_input.c.x)));
    var_0 = vec3<i32>(u_input.d.x, 0i, u_input.b);
    var var_1 = vec4<bool>(select(true, !(arg_0.x | false) | arg_0.x, !any(vec4<bool>(arg_1.x, false, arg_1.x, true))), arg_0.x, select(false, false, arg_1.x), !arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(2135f));
    var var_3 = vec3<bool>(arg_0.x && select(arg_0.x, true, true), true, all(!var_1.xzx));
    return !vec3<bool>(true, !arg_1.x, all(select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, arg_1.x, arg_0.x), var_1.wxw), arg_0, vec3<bool>(true, var_1.x, var_3.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(!(true | (u_input.a.x >= u_input.d.x)), true, true);
    let var_1 = 2147483647i;
    var_0 = select(select(vec3<bool>(true, true, all(vec2<bool>(var_0.x, var_0.x))), vec3<bool>(43550u != select(1u, 1u, false), true, var_0.x), !(!(!var_0.x))), select(vec3<bool>(all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x)), !var_0.x, any(!vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<bool>(var_0.x, var_0.x, !var_0.x), func_3(vec3<bool>(select(true, true, var_0.x), true, all(vec3<bool>(true, var_0.x, true))), var_0.yz)), vec3<bool>(var_0.x, true, true));
    let var_2 = vec4<bool>(all(!select(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, false, true, var_0.x))), false, true, true);
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1173f, _wgslsmith_f_op_f32(sign(-147f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(192f, 1000f), vec2<f32>(-1000f, -864f)))) + vec2<f32>(-403f, -736f))), true, var_1, 0u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(147f, 1123f), var_3.a, true)))))), true, 32720i, ~(~61986u));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x + -1088f)) * vec2<f32>(_wgslsmith_f_op_f32(951f + -337f), _wgslsmith_f_op_f32(1318f - 1000f)))), !func_2().b, -8199i, _wgslsmith_mult_u32(1u, 6039u));
    let var_1 = func_2();
    var var_2 = select(func_3(vec3<bool>(true, arg_0.b, var_1.b), !select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b)), vec2<bool>(var_0.b, false), var_1.c > var_1.c)), !vec3<bool>(false, select(!var_0.b, var_0.b, true & var_1.b), false), !vec3<bool>(var_0.b || (var_1.a.x <= var_0.a.x), true == (14258i >= u_input.c.x), func_3(vec3<bool>(var_1.b, true, var_1.b), vec2<bool>(var_1.b, var_1.b)).x));
    var_2 = select(select(vec3<bool>(true, select(false, false, var_1.b) && var_1.b, var_0.b), select(vec3<bool>(!var_0.b, true, any(vec3<bool>(var_2.x, true, false))), func_3(func_3(vec3<bool>(var_2.x, var_0.b, true), vec2<bool>(var_2.x, true)), var_2.zx), select(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(var_0.b, arg_0.b, var_0.b), vec3<bool>(false, false, arg_0.b)), !vec3<bool>(var_0.b, var_2.x, false), vec3<bool>(true, true, true))), var_0.b), !(!select(select(vec3<bool>(true, true, var_2.x), vec3<bool>(arg_0.b, var_1.b, var_1.b), vec3<bool>(arg_0.b, var_2.x, var_1.b)), vec3<bool>(var_2.x, var_0.b, false), vec3<bool>(true, true, true))), func_3(vec3<bool>(any(select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(true, true, false), false)), var_2.x && true, select(false, true, !var_1.b)), !vec2<bool>(arg_0.b, var_0.b)));
    let var_3 = var_1.d;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a, var_1.a))))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, 356f) + vec2<f32>(454f, -907f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, 825f))) + vec2<f32>(1240f, 2023f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2()))))));
    var var_1 = u_input.b > 19198i;
    var_1 = arg_0.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = all(vec4<bool>(true, -1028f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2026f * -1198f), -575f, all(vec2<bool>(true, true)))), func_1(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-15366i, 30842i), -vec2<i32>(2147483647i, u_input.c.x)) > _wgslsmith_mod_i32(34796i, -u_input.c.x)));
    let var_2 = true;
    var var_3 = !select(vec4<bool>(true, !any(vec2<bool>(var_2, true)), u_input.a.x != u_input.a.x, func_3(select(vec3<bool>(var_2, var_2, false), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, var_2)), vec2<bool>(var_2, false)).x), !(!select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(var_2, var_2, var_2, var_2), false)), vec4<bool>(var_2, var_2, any(vec3<bool>(true, var_2, var_2)) || true, !var_2));
    let var_4 = Struct_1(vec2<f32>(1f, 1f), var_3.x, _wgslsmith_mult_i32(u_input.a.x, -17789i), ~1u);
    let var_5 = vec4<bool>(!var_4.b, true, func_3(var_3.zww, !(!select(var_3.wx, var_3.zw, vec2<bool>(var_2, false)))).x, any(!vec4<bool>(var_2, true, !var_3.x, !var_4.b)));
    var_0 = true;
    let var_6 = _wgslsmith_f_op_f32(max(472f, 1167f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

