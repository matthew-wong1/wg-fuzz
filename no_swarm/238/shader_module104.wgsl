struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1059f)))));
    let var_1 = -802f >= var_0.a;
    var var_2 = 0u;
    let var_3 = var_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    return (_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, countOneBits(u_input.c.x))) <= _wgslsmith_mult_u32(u_input.a.x, ~4294967295u)) && !(u_input.b < 61170i);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> bool {
    global0 = 418f;
    var var_0 = true;
    let var_1 = arg_1.b;
    return arg_0;
}

fn func_3() -> bool {
    var var_0 = -1i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(1254f)));
    var var_2 = Struct_3(!vec3<bool>(u_input.c.x > (u_input.c.x & u_input.c.x), func_2(true, Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(753f), var_1, Struct_1(498f), true)), 7693u < u_input.a.x), true), Struct_2(var_1, var_1, var_1, true));
    var_2 = Struct_3(!var_2.a, var_2.b);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.b.b.a))))) * -506f));
    return _wgslsmith_f_op_f32(f32(-1f) * -282f) > var_2.b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-174f, -363f) - _wgslsmith_f_op_f32(f32(-1f) * -1037f)), -226f, 951f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -1000f), -1432f, any(vec2<bool>(false, true))))), vec4<f32>(-1270f, _wgslsmith_f_op_f32(f32(-1f) * -1877f), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f)))))));
    let var_1 = Struct_1(var_0.x);
    global0 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = select(!(!vec3<bool>(any(vec3<bool>(true, false, false)), true, false)), vec3<bool>(!(!func_1()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))) < -280f, func_2(_wgslsmith_add_i32(u_input.b, u_input.b) == abs(0i), Struct_3(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), Struct_2(Struct_1(var_1.a), Struct_1(299f), Struct_1(206f), false)), all(vec3<bool>(true, true, true)))), true);
    var var_3 = var_1;
    var var_4 = Struct_4(Struct_3(vec3<bool>(false, true, func_3()), Struct_2(var_1, var_1, var_1, var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) - var_0.xz), 1u);
    var_2 = var_4.a.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1792f, -703f, 747f, var_4.a.b.c.a) + vec4<f32>(-716f, var_4.a.b.a.a, -159f, 204f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -203f, -347f, var_0.x) + vec4<f32>(-309f, -667f, 423f, var_1.a))))));
    var var_5 = select(!select(select(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_4.a.b.d, var_4.a.b.d, var_2.x, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, true, true, false), var_2.x), !vec4<bool>(var_2.x, var_4.a.b.d, false, false)), vec4<bool>(any(vec2<bool>(var_2.x, true)), true, false, true), vec4<bool>(!var_4.a.b.d, func_3(), false, var_2.x == true)), vec4<bool>(true, var_2.x, !all(vec4<bool>(false, var_4.a.b.d, true, false)), true), !vec4<bool>(true, var_4.a.a.x, true, select(func_3(), var_2.x, var_2.x || var_4.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1842f, var_4.a.b.a.a, 607f), var_0.zyz)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1347f, -851f) * var_0.wyw)))), -2051f, abs(max(-u_input.b, _wgslsmith_clamp_i32(1i, 9613i, u_input.b) >> (35781u % 32u))), abs(-firstTrailingBit(u_input.b)));
}

