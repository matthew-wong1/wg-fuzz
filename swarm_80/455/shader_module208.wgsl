struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<vec4<bool>, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(566f, -1550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - _wgslsmith_div_f32(arg_0.x, 373f)))), arg_0.x, vec2<u32>(1u, 1u));
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    return firstLeadingBit(u_input.a) < ~u_input.a;
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = vec3<u32>(1u, ~_wgslsmith_mult_u32(arg_0, ~0u), 0u);
    global0 = array<vec4<bool>, 31>();
    let var_1 = -u_input.a;
    var var_2 = ~(-21115i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-689f, _wgslsmith_f_op_f32(f32(-1f) * -749f), func_3(vec3<f32>(-475f, 1814f, 864f)))), _wgslsmith_f_op_f32(round(-159f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), -1177f), _wgslsmith_add_vec2_u32(var_0.yy, ~var_0.yx));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x + var_3.b))))))), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(f32(-1f) * -2271f)), 767f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_3.a.x)) * _wgslsmith_f_op_f32(1f * -1300f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1350f, -1715f, 1000f)))), -1070f, vec2<u32>(~(~arg_2.x), 44313u) ^ ~(~(~arg_2)));
    var var_2 = 1i;
    var var_3 = vec2<bool>(false, any(vec4<bool>(!arg_1, true, false, false)));
    let var_4 = 5048i;
    return ~(-countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 6376i), vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-35641i, var_4)) | ~vec2<i32>(9596i, var_4)));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = ~select((~vec2<i32>(32902i, u_input.a) | vec2<i32>(-38399i, u_input.a)) | vec2<i32>(-41663i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -12087i), vec4<i32>(-62815i, u_input.a, u_input.a, -18047i))), ~abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, 82673i))), any(global0[_wgslsmith_index_u32(~(~arg_0.c.x), 31u)]));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(1u)), !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))) != arg_0.a.x), ~abs(vec2<u32>(~101187u, ~4294967295u)));
    var var_1 = arg_0;
    let var_2 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) * vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), var_1.a.x, ~vec2<u32>(37033u, arg_0.c.x));
    return ~abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(38080u, var_1.c.x), firstLeadingBit(var_1.c)));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -(~_wgslsmith_add_i32(-u_input.a, firstLeadingBit(u_input.a)));
    let var_1 = select(4294967295u, func_1(arg_3).x, arg_2) | max(51530u, arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.x))));
    var var_3 = vec4<bool>(!any(select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(false, false, arg_2, false), vec4<bool>(true, false, arg_2, true))), _wgslsmith_f_op_f32(max(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(-arg_3.b)))) < _wgslsmith_f_op_f32(f32(-1f) * -873f), !(!(true & (false && arg_2))), true);
    let var_4 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, var_1, ~0u, _wgslsmith_sub_u32(~17342u, 1u)), max(select(~vec4<u32>(arg_0, arg_1.x, arg_0, var_1), vec4<u32>(4294967295u, 130734u, arg_0, 29977u) ^ vec4<u32>(4294967295u, arg_3.c.x, arg_0, 0u), var_3.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 68934u, 19591u) | vec4<u32>(26367u, arg_1.x, 4294967295u, 1u), ~vec4<u32>(22826u, arg_1.x, arg_1.x, 67192u), abs(vec4<u32>(25037u, var_1, 61855u, var_1)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, true, false)), true));
    global0 = array<vec4<bool>, 31>();
    let var_1 = firstLeadingBit(reverseBits(~4294967295u));
    var var_2 = func_5(~abs(8110u), vec3<u32>(~(4294967295u | var_1) << (var_1 % 32u), ~var_1, ~(0u << (~var_1 % 32u))), all(vec3<bool>(!var_0.x, all(vec2<bool>(false, var_0.x)), !(false | var_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(451f, -465f, 946f) - vec3<f32>(-880f, -753f, 1182f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 1000f, 1361f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1554f, 533f, 795f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1688f))), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 707f, 1303f)), _wgslsmith_f_op_f32(f32(-1f) * -954f), vec2<u32>(var_1, 76297u) >> (vec2<u32>(95306u, var_1) % vec2<u32>(32u))))));
    global0 = array<vec4<bool>, 31>();
    var var_3 = vec3<bool>(true, all(vec3<bool>(false, var_0.x, all(select(global0[_wgslsmith_index_u32(var_2.c.x, 31u)], global0[_wgslsmith_index_u32(23697u, 31u)], vec4<bool>(false, var_0.x, true, var_0.x))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.c.x, var_1, firstTrailingBit(47061u) << (var_2.c.x % 32u), var_2.c.x), i32(-1i) * -37467i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(502f, var_2.b), var_2.a.xx), _wgslsmith_f_op_vec2_f32(-var_2.a.yz), var_3.x)))), ~vec4<u32>(~(~var_1), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1, 4062u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 54701u, 18752u), vec3<u32>(var_2.c.x, 1u, 1u))), 1u, min(var_2.c.x, var_2.c.x)));
}

