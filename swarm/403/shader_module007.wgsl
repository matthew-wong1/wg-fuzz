struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<bool>(true, false), -251f, Struct_1(vec2<i32>(i32(-2147483648), 32380i), 29130u, false, -1000f, -1i)), Struct_1(vec2<i32>(1i, -13132i), 0u, true, 2102f, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = -1i;
    var var_1 = global1.a;
    global0 = ~global1.a.c.a.x;
    var var_2 = global1.b;
    var var_3 = vec4<u32>(global1.b.b, 0u, _wgslsmith_clamp_u32(var_1.c.b, var_2.b, var_1.c.b << (arg_0.c.b % 32u)), var_1.c.b);
    return vec3<u32>(~(~max(7832u, 4294967295u)), global1.b.b, var_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(func_3(arg_0), _wgslsmith_mult_vec3_u32(select(abs(vec3<u32>(22003u, 0u, global1.b.b)), abs(~vec3<u32>(global1.b.b, 0u, global1.b.b)), select(!vec3<bool>(true, arg_1, false), select(vec3<bool>(true, arg_0.a.x, arg_1), vec3<bool>(false, arg_1, arg_0.c.c), false), true)), ~min(vec3<u32>(arg_0.c.b, 4294967295u, 0u), vec3<u32>(21170u, arg_0.c.b, 10208u)) ^ min(select(vec3<u32>(46416u, global1.b.b, 1u), vec3<u32>(0u, global1.b.b, 24310u), arg_1), func_3(global1.a))));
    var var_1 = ~(~vec3<u32>(var_0.x, global1.a.c.b, abs(var_0.x)));
    let var_2 = Struct_1(vec2<i32>(arg_3, -2929i), 0u << (firstTrailingBit(global1.a.c.b) % 32u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.b, 636f, arg_0.c.c))))), global1.a.c.a.x);
    let var_3 = vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.c.a.x, ~abs(arg_3)), -_wgslsmith_mod_vec2_i32(-arg_0.c.a, u_input.a.yy)), -2147483647i);
    var_1 = ~(vec3<u32>(abs(_wgslsmith_add_u32(var_2.b, 13012u)), min(~var_1.x, 4294967295u), arg_0.c.b) | _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b, 4294967295u, 0u), vec3<u32>(var_0.x, global1.a.c.b, 1u), firstLeadingBit(vec3<u32>(105227u, 0u, global1.b.b))), vec3<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.b, var_1.x), vec3<u32>(var_1.x, 0u, var_1.x)), 79441u)));
    return Struct_3(global1.a, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-24250i, var_3.x) & vec2<i32>(arg_3, 47154i), ~vec2<i32>(2147483647i, 28594i)) | vec2<i32>(global1.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 13192i), u_input.a.yz)), 22268u, (~10832i << (_wgslsmith_mod_u32(0u, var_1.x) % 32u)) > 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.b.d)), var_2.d), -85606i));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    let var_0 = func_2(global1.a, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, _wgslsmith_f_op_f32(abs(global1.b.d)), _wgslsmith_f_op_f32(select(-729f, global1.b.d, -42181i >= u_input.b)), arg_1) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.c.d, 345f, arg_0.d, global1.b.d)))) * vec4<f32>(_wgslsmith_f_op_f32(-133f - -696f), -521f, _wgslsmith_f_op_f32(global1.b.d * -194f), _wgslsmith_div_f32(arg_1, -805f)))), -1i);
    let var_1 = Struct_3(func_2(Struct_2(select(var_0.a.a, func_2(global1.a, arg_0.c, vec4<f32>(1060f, arg_1, global1.a.b, 2115f), arg_0.a.x).a.a, any(vec3<bool>(true, arg_0.c, true))), 286f, Struct_1(global1.b.a | global1.b.a, ~global1.b.b, arg_0.c | true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -global1.b.e)), global1.b.c, vec4<f32>(global1.a.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.d))), 420f, global1.b.d), arg_0.e).a, arg_0);
    let var_2 = -1i | -var_1.a.c.e;
    let var_3 = _wgslsmith_add_i32(0i, reverseBits(2147483647i));
    global1 = func_2(var_0.a, !global1.a.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1252f, -779f, var_1.b.d, 1770f)))), vec4<f32>(var_1.b.d, 1088f, -426f, var_0.a.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b, 1092f, 1485f, var_1.b.d), vec4<f32>(arg_1, -341f, var_1.b.d, var_0.a.b)))), vec4<f32>(var_0.b.d, _wgslsmith_f_op_f32(var_0.a.b * -981f), _wgslsmith_f_op_f32(step(var_1.a.b, arg_0.d)), 1976f)), func_2(global1.a, select(true, any(vec3<bool>(var_1.a.c.c, var_1.b.c, var_0.b.c)), false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(903f, -450f, 2082f, global1.b.d), vec4<f32>(847f, -129f, var_0.a.b, var_0.b.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 686f, -1625f, -855f) - vec4<f32>(1975f, 219f, arg_0.d, arg_1)))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.b.a, arg_0.a), var_2)).a.a.x)), -10539i);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-588f, 2243f, _wgslsmith_f_op_f32(1898f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-327f, 1679f, global1.a.b, -1123f))) + _wgslsmith_f_op_vec4_f32(func_1(global1.a.c, _wgslsmith_f_op_f32(-global1.a.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1045f, global1.a.c.d)))) * _wgslsmith_f_op_vec4_f32(func_1(global1.b, _wgslsmith_f_op_f32(sign(global1.b.d)))).ywz))));
    global0 = _wgslsmith_mod_i32(global1.a.c.a.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(global1.b.a.x), max(-39804i, -43840i)) & firstTrailingBit(global1.a.c.a.x), _wgslsmith_sub_i32(-global1.a.c.e | global1.a.c.e, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(44741i, 2147483647i, u_input.b, -33604i)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, var_0.x)))), var_0.x);
    let var_3 = var_1.x;
    let var_4 = ~(-13634i ^ _wgslsmith_dot_vec4_i32(u_input.a << ((vec4<u32>(1696u, global1.b.b, 0u, 0u) >> (vec4<u32>(53605u, 4294967295u, global1.b.b, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), max(u_input.a, u_input.a >> (vec4<u32>(global1.a.c.b, global1.a.c.b, global1.a.c.b, 4294967295u) % vec4<u32>(32u)))));
    var var_5 = global1.a.c.b & _wgslsmith_mod_u32(6413u, ~9991u);
    let x = u_input.a;
    s_output = StorageBuffer(28806u);
}

