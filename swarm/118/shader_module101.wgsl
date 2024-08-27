struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(15803u, 1u), vec2<u32>(688u, 25829u), vec2<u32>(4294967295u, 4077u), vec2<u32>(47309u, 4294967295u), vec2<u32>(34092u, 39859u), vec2<u32>(8908u, 22909u));

var<private> global1: i32 = -30912i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = arg_0.x;
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(-863f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-1000f, arg_0.x, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xzx) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.wxw))))))));
    global1 = _wgslsmith_clamp_i32(1i, ~1i, -35972i) ^ abs(-(u_input.b.x ^ 71505i) | (~u_input.b.x >> (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(arg_0));
    let var_2 = !(~arg_2 >= 0u);
    global0 = array<vec2<u32>, 6>();
    return Struct_1(u_input.a.x, firstTrailingBit(max(firstTrailingBit(select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 33165i), vec2<bool>(false, arg_1.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-58278i, u_input.b.x) ^ vec2<i32>(-57126i, 1i), vec2<i32>(u_input.b.x, 1257i) << (vec2<u32>(4389u, 30846u) % vec2<u32>(32u))))), vec3<bool>(var_2 && (select(arg_2, 4294967295u, var_2) <= arg_2), all(!select(arg_1, arg_1, vec2<bool>(true, var_2))), true));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec2<bool>(select(true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), any(vec3<bool>(true, true, true))), true);
    global1 = _wgslsmith_add_i32(~(_wgslsmith_add_i32(~(-2147483647i), -7370i) | u_input.b.x), countOneBits(u_input.b.x));
    global0 = array<vec2<u32>, 6>();
    global1 = u_input.b.x;
    let var_1 = ~u_input.b.x;
    return func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, _wgslsmith_div_f32(-275f, 642f), -1050f, _wgslsmith_f_op_f32(f32(-1f) * -1022f))))), var_0, 0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    global0 = array<vec2<u32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(-253f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(455f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -794f)));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = array<vec2<u32>, 6>();
    let var_0 = -895f;
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1328f, -611f, -1222f), vec3<f32>(-830f, -162f, 743f), true)))) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(var_0)), var_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0 * arg_0), arg_0, _wgslsmith_div_f32(var_0, -926f))))), ~_wgslsmith_mod_vec2_i32(min(abs(u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-2147483647i, 23259i))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -632f, -410f, 131f) - vec4<f32>(var_0, arg_0, 175f, 1229f)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), u_input.a.x).b), vec3<u32>(arg_1.x, arg_1.x, abs(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.x, 1u), func_1().a))), arg_1.wzx);
    global1 = -firstTrailingBit(~(-8197i));
    return vec3<bool>(!all(func_1().c.xy), any(vec4<bool>(select(false, 4294967295u > var_1.d.x, 0u != u_input.a.x), true, true, !any(vec2<bool>(true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(2147483647i ^ u_input.b.x);
    let var_0 = Struct_1(u_input.a.x, u_input.b, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), Struct_3(true, false, vec4<i32>(-13012i, 2147483647i, 2147483647i, u_input.b.x)), true, vec3<bool>(false, true, false))) + _wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(f32(-1f) * -769f))), abs(u_input.a)));
    let var_1 = 41722u;
    var var_2 = _wgslsmith_f_op_f32(select(-324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(585f, 1030f)))), var_0.c.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1355f, -1000f, -1896f, 1895f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2141f, 521f, 1043f, 1490f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(600f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -247f), -1470f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-454f, 1489f, -2092f, -1402f), vec4<f32>(303f, -183f, -877f, 102f)))))), var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a.wzz));
}

