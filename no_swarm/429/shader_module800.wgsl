struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -26636i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    global0 = 0i;
    global0 = u_input.b;
    global0 = ~(u_input.b << ((23408u & arg_3.a) % 32u));
    let var_0 = max(~_wgslsmith_add_vec4_u32(~(u_input.a >> (vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~max(vec4<u32>(u_input.a.x, 30281u, 31825u, 28030u), vec4<u32>(u_input.a.x, 1u, arg_0.a, arg_3.a))), vec4<u32>(1u, arg_3.a, 1u, _wgslsmith_mult_u32(arg_3.a, arg_3.a)) >> (abs(u_input.a) % vec4<u32>(32u)));
    let var_1 = Struct_3(4294967295u ^ var_0.x);
    return all(!arg_1.a.a);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), !vec3<bool>(func_3(Struct_3(u_input.a.x), Struct_2(Struct_1(vec3<bool>(true, false, false))), vec4<bool>(true, false, true, true), Struct_3(4294967295u)), false, true), !vec3<bool>(true, true, func_3(Struct_3(u_input.a.x), Struct_2(Struct_1(vec3<bool>(false, false, false))), vec4<bool>(true, true, false, false), Struct_3(u_input.a.x)))));
    var_0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-804f)));
    var var_2 = vec4<bool>(!(!var_0.a.x), true, false, !(!all(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.a.x))));
    let var_3 = u_input.b;
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(334f)), 754f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-611f))), -1098f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-584f * -480f), _wgslsmith_f_op_f32(437f + -1051f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, 1075f, 298f, 347f)))), vec4<f32>(1f, 1f, 1f, 1f), true)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-323f + 421f) * 619f), _wgslsmith_f_op_f32(f32(-1f) * -1546f), -445f, -1375f)) - vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2427f) - 1973f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-780f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1557f) + -829f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2()).x, var_0.x), 1191f, -1516f));
    global0 = u_input.b;
    var var_1 = Struct_2(arg_1);
    var var_2 = var_1.a;
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-973f, -871f, _wgslsmith_f_op_f32(380f - 1258f), _wgslsmith_f_op_f32(1529f - -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1204f, 376f, -326f, -357f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, 2356f, -733f, -1000f)))))));
    global0 = 1i;
    global0 = _wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(-2147483647i, -6624i));
    global0 = firstLeadingBit(-36641i);
    global0 = 2147483647i;
    var var_1 = func_1(u_input.a.x, Struct_1(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_2(Struct_1(vec3<bool>(all(vec4<bool>(false, true, true, false)), !func_3(Struct_3(var_1.a), Struct_2(Struct_1(vec3<bool>(true, true, false))), vec4<bool>(false, false, false, false), Struct_3(1u)), all(vec2<bool>(false, false)) && all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1338f, abs(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(15053i, 52931i, u_input.b, -37188i), vec4<i32>(u_input.b, -49603i, 6940i, -1i), vec4<i32>(-7167i, 18168i, u_input.b, 7308i)))), var_0.x);
}

