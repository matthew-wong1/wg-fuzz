struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = u_input.a & max(u_input.a, 4294967295u);
    var var_1 = Struct_1(select(_wgslsmith_mod_vec4_i32(-vec4<i32>(13459i, 2147483647i, -2147483647i, -8482i) >> (~vec4<u32>(4294967295u, var_0, u_input.b, u_input.b) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(vec4<i32>(-15896i, arg_0, 1i, 0i), vec4<i32>(arg_0, 2147483647i, u_input.d, 0i))), -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, arg_0, 20542i), vec4<i32>(1i, arg_0, 2147483647i, -2147483647i))), !vec4<bool>(true, false, true, select(false, false, false))), true || any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), false)));
    var_1 = Struct_1(var_1.a, !(arg_0 < 1i));
    let var_2 = all(vec4<bool>(any(vec3<bool>(var_1.b, false, true)) & true, var_1.b, any(vec3<bool>(false, var_1.b, true)), !var_1.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(156f, 742f), vec2<f32>(-1630f, 1138f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1752f, 908f), vec2<f32>(-1162f, -1000f), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(447f, -2257f)))))));
    return 1i;
}

fn func_2() -> Struct_3 {
    global0 = 889f;
    var var_0 = ~(~(-39805i >> (max(~u_input.a, u_input.a) % 32u)));
    return Struct_3(Struct_1(vec4<i32>(u_input.d, u_input.c, _wgslsmith_mod_i32(func_3(13335i), ~(-1i)), -u_input.d), !any(vec2<bool>(false, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_u32(u_input.a, ~u_input.b) > 19897u;
    var var_2 = func_2();
    var var_3 = !arg_0.b;
    var_3 = select(var_0.b, !select(vec4<bool>(true, true, true, true), select(arg_0.b, !arg_0.b, true), func_2().b), all(vec4<bool>(arg_1 != _wgslsmith_f_op_f32(142f + 601f), 46371i == (var_2.a.a.x | arg_0.a.a.x), true, false)));
    return Struct_3(Struct_1(~(~select(var_2.a.a, vec4<i32>(arg_0.a.a.x, 24335i, arg_0.a.a.x, 550i), true)), _wgslsmith_f_op_f32(f32(-1f) * -701f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))), !(!vec4<bool>(!var_3.x, var_0.b.x, false || var_2.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(627f + _wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -789f)))));
    let var_0 = Struct_1(abs(~vec4<i32>(u_input.c, _wgslsmith_clamp_i32(-2147483647i, u_input.d, u_input.c), u_input.c, -2147483647i)), _wgslsmith_mod_i32(~firstTrailingBit(u_input.c), _wgslsmith_sub_i32(~(-5623i), firstTrailingBit(0i))) == 1i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(sign(-551f))))))));
    let var_1 = func_1(Struct_3(var_0, vec4<bool>(var_0.b, (var_0.b && false) || (u_input.b < u_input.b), true, !(!var_0.b))), _wgslsmith_f_op_f32(max(1731f, _wgslsmith_f_op_f32(1000f - -845f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 67623u, 18033u, u_input.a), vec4<u32>(40930u, u_input.b, 4294967295u, u_input.a)), ~u_input.b, all(vec3<bool>(true, false, var_1.a.b))) << (0u % 32u)), 1f);
}

