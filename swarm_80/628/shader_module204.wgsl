struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_0.a;
    var_0 = -942f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(309f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)), 4833u);
    let var_2 = _wgslsmith_add_i32(u_input.a >> (arg_0.b % 32u), -u_input.b.x >> (~4294967295u % 32u)) | ~2147483647i;
    return 2228f;
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(209f, 0u), vec2<bool>(true, true), vec4<bool>(arg_0, arg_0, false, true), vec3<u32>(3598u, 60590u, 20954u)))))) + -1778f), _wgslsmith_mult_u32(0u, ~1u));
    var var_1 = Struct_2(u_input.c.wx, countOneBits(reverseBits(min(firstLeadingBit(u_input.c), vec4<i32>(u_input.c.x, u_input.b.x, -2147483647i, u_input.c.x) | u_input.c))), ~var_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1, true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1561f)) + -220f), 282f, true)), -677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 384f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) * -702f)), arg_0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_f32(-927f, var_1.x), min(146065u, 4294967295u)), vec2<bool>(true, false), select(vec4<bool>(arg_1, arg_1, false, arg_1), select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), vec4<bool>(true, arg_1, true, arg_1)), ~(~vec3<u32>(0u, 4294967295u, 4294967295u))))) - 425f);
    var_0 = var_1.x;
    return Struct_1(var_1.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), min(max(vec2<u32>(1u, 4294967295u), vec2<u32>(102606u, 20821u)), abs(vec2<u32>(4294967295u, 23310u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c.x, -u_input.c.x), u_input.a, 97788i), select(u_input.b.x, -25180i, true), _wgslsmith_dot_vec3_i32(-u_input.b, _wgslsmith_mult_vec3_i32(u_input.b, ~(vec3<i32>(1i, 91980i, u_input.a) | vec3<i32>(-1270i, 3184i, u_input.a)))));
    var var_1 = max(max(-u_input.b.x ^ ~(~u_input.c.x), 12814i), u_input.c.x);
    var_1 = ~abs(_wgslsmith_dot_vec3_i32(u_input.c.wxw, u_input.c.zxy) | firstTrailingBit(55852i)) << (~_wgslsmith_sub_u32(~1u, 1u) % 32u);
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(902f * 1316f), _wgslsmith_f_op_f32(1405f + -1748f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 220f))))), all(vec3<bool>(true, all(vec3<bool>(false, true, false)), !select(false, true, true))));
    var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b & var_2.b, 43494u, 30436u, reverseBits(var_2.b)), ~(~vec4<u32>(64307u, var_2.b, 15426u, var_2.b))), abs(abs(4294967295u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(46798u, _wgslsmith_add_u32(~var_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 34766u), vec3<u32>(35882u, var_2.b, 0u)))), 36778u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1746f * -1344f), -513f, _wgslsmith_f_op_f32(var_2.a * var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, 1115f))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a * var_2.a), -497f, 348f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-832f, 274f, var_2.a) - vec3<f32>(900f, var_2.a, 879f)))))));
}

