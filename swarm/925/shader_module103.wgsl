struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75752u;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1422f + arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(905f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1000f, -1402f) * vec3<f32>(arg_2, arg_2, arg_2))))));
    global1 = abs(arg_0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -134f))), arg_2, -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, var_0.x, 2108f)))), ~(~(~(arg_3 << (u_input.a % 32u)))));
    let var_2 = min(~reverseBits(select(vec4<u32>(var_1.b, 0u, u_input.a, 1u), vec4<u32>(arg_3, 33728u, u_input.c, var_1.b), !vec4<bool>(false, arg_1, false, arg_1))), ~select(select(vec4<u32>(u_input.a, var_1.b, arg_3, var_1.b), vec4<u32>(var_1.b, arg_3, 44543u, arg_3), vec4<bool>(arg_1, arg_1, arg_1, arg_1)) & (vec4<u32>(46312u, 16067u, 49133u, arg_3) ^ vec4<u32>(arg_3, 48485u, u_input.a, 0u)), vec4<u32>(~61024u, firstTrailingBit(21986u), 17912u | arg_3, 44978u), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1), !vec4<bool>(false, true, arg_1, true))));
    let var_3 = Struct_3(any(select(vec2<bool>(-31215i > arg_0.x, all(vec4<bool>(arg_1, arg_1, arg_1, false))), !vec2<bool>(arg_1, arg_1), !(!vec2<bool>(arg_1, true)))), -countOneBits(-u_input.d.x) << (~abs(arg_3) % 32u), var_1, arg_1, 1655f);
    return ~((_wgslsmith_mult_i32(21062i, -var_3.b) >> (~(~4294967295u) % 32u)) << (12037u % 32u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = min(_wgslsmith_add_i32(-1i >> (~arg_0 % 32u), _wgslsmith_add_i32(u_input.d.x & 9973i, func_3(u_input.d.zx, true, 1560f, 28844u))) >> ((firstTrailingBit(min(u_input.c, 61665u)) >> (_wgslsmith_sub_u32(max(36664u, u_input.a), 27156u) % 32u)) % 32u), 58709i);
    let var_0 = u_input.d.x;
    var var_1 = 53023i;
    let var_2 = reverseBits(abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_0, arg_0), vec2<u32>(4701u, u_input.a)), vec2<u32>(u_input.a, 1u ^ u_input.a))));
    var_1 = _wgslsmith_div_i32(u_input.d.x, u_input.d.x);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(986f * -446f), 333f, -386f), ~arg_0);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_3(select(select(arg_1.x, true, (-12097i >> (u_input.a % 32u)) <= 1i), arg_1.x, u_input.a <= ~23219u), 23120i, func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), firstLeadingBit(vec2<u32>(4294967295u, u_input.c)))), true, 676f);
    global0 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, -179f, -1407f, _wgslsmith_f_op_f32(f32(-1f) * -824f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-460f, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * -197f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(trunc(var_1.c.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(min(822f, arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), all(vec4<bool>(arg_1.x, false, true, false)))), 1264f))));
    var_0 = 1068f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(f32(-1f) * -758f)), 160f), -2222f)), arg_0);
}

fn func_4(arg_0: f32) -> Struct_2 {
    return Struct_2(~_wgslsmith_clamp_i32(-(~(-1i)), _wgslsmith_div_i32(~42096i, 19421i), ~_wgslsmith_mult_i32(20206i, u_input.d.x)), _wgslsmith_div_u32(~4294967295u, _wgslsmith_add_u32(~(~u_input.c), 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 4294967295u), ~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, u_input.c))), _wgslsmith_mult_i32(-73836i, u_input.d.x), func_2(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(func_1(-264f, vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(878f, 411f) + vec2<f32>(791f, 611f))))), 410f));
    var var_1 = _wgslsmith_f_op_f32(-var_0.e.a.x);
    let var_2 = true;
    global0 = 0u;
    var_1 = _wgslsmith_f_op_f32(-var_0.e.a.x);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.a.x, var_0.e.a.x, -688f, -743f), vec4<f32>(var_0.e.a.x, var_0.e.a.x, 1000f, 2196f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a.x, var_0.e.a.x, -486f, var_0.e.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a.x, 794f, 1412f, -925f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.a.x, -1148f, -813f, var_0.e.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -888f, var_0.e.a.x, 445f), vec4<f32>(var_0.e.a.x, var_0.e.a.x, 508f, 395f))))))), any(select(!select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), var_2), select(vec2<bool>(false, var_2), !vec2<bool>(false, var_2), select(vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2))), select(vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), vec2<bool>(var_2, var_2)), true))));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(max(var_3.a.x, 1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.e.a.xx - var_3.a.ww), _wgslsmith_f_op_vec2_f32(min(var_3.a.zw, var_0.e.a.xy)), ~50425u > func_4(var_0.e.a.x).e.b)))), vec2<bool>(var_2, !all(!vec2<bool>(var_2, false)))));
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_3.a))), var_2);
    var_1 = 1574f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f + -193f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-936f + 270f))))), (_wgslsmith_sub_u32(firstTrailingBit(100642u), max(0u, 23361u)) << (var_0.b % 32u)) | 9398u);
}

