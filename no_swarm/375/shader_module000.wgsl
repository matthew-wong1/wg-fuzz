struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(434f, -2163f), vec2<f32>(840f, 460f), vec2<f32>(-635f, -1000f), vec2<f32>(1189f, -2560f), vec2<f32>(572f, -2010f), vec2<f32>(1658f, 1000f), vec2<f32>(-419f, -304f), vec2<f32>(-1000f, -1255f), vec2<f32>(-2023f, 1545f), vec2<f32>(402f, 2142f), vec2<f32>(-2423f, -1363f), vec2<f32>(-384f, 1165f), vec2<f32>(-421f, -1472f), vec2<f32>(-1000f, 152f), vec2<f32>(1000f, -1263f), vec2<f32>(-983f, 223f), vec2<f32>(-164f, 1193f), vec2<f32>(-560f, 287f), vec2<f32>(277f, 635f), vec2<f32>(988f, 1257f), vec2<f32>(1637f, -550f), vec2<f32>(-221f, 511f), vec2<f32>(-730f, 449f), vec2<f32>(859f, 1147f));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<f32, 1> = array<f32, 1>(1910f);

var<private> global3: bool;

var<private> global4: array<i32, 18> = array<i32, 18>(5331i, 13987i, 2147483647i, -9188i, -20282i, -1i, 12245i, -1i, i32(-2147483648), -13736i, -15327i, 1i, 47638i, -45555i, 2147483647i, -49585i, 2147483647i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec4<f32> {
    global1 = array<Struct_1, 3>();
    var var_0 = ~1u;
    global2 = array<f32, 1>();
    global4 = array<i32, 18>();
    var var_1 = vec3<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], -1321f), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b, 1u)], 1000f)), arg_0.x))))), _wgslsmith_f_op_f32(floor(arg_1.x)), 1066f);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, _wgslsmith_f_op_f32(floor(-1000f)), global2[_wgslsmith_index_u32(1u, 1u)], arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, arg_1.x, var_1.x, 445f)))))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = !vec4<bool>(select(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, firstTrailingBit(30547u) <= abs(1u)), (_wgslsmith_f_op_f32(sign(-434f)) == -634f) | true, !any(vec4<bool>(true, true, true, true)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(select(vec2<bool>(true, true), var_0.yw, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], 1268f, global2[_wgslsmith_index_u32(arg_0, 1u)]) * vec3<f32>(1756f, global2[_wgslsmith_index_u32(7711u, 1u)], -311f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(var_0.x, var_0.x), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], -1986f))))))));
    var var_2 = !var_0.zy;
    global0 = array<vec2<f32>, 24>();
    let var_3 = -2147483647i;
    return _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~arg_0, 1u)]));
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = any(vec3<bool>(true, firstTrailingBit(_wgslsmith_div_i32(0i, arg_0.c.x)) != -57514i, false));
    global2 = array<f32, 1>();
    var var_0 = vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a, ~(~u_input.a)), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c.x, 11698u), min(u_input.b, u_input.a)) | abs(4294967295u & u_input.a), ~select(_wgslsmith_clamp_u32(37996u, u_input.b, 10195u), _wgslsmith_mult_u32(1u, u_input.b), all(arg_0.d))) & vec4<u32>(~reverseBits(u_input.b | u_input.b), countOneBits(~u_input.c.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 1u)), vec4<u32>(u_input.c.x, 1u, min(0u, u_input.a), 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33751u), vec2<u32>(u_input.c.x, u_input.c.x)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(319f, -396f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 1u)] * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 1u)] * global2[_wgslsmith_index_u32(4294967295u, 1u)])))) * global2[_wgslsmith_index_u32(var_0.x, 1u)]);
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(max(1u ^ _wgslsmith_sub_u32(u_input.b, u_input.c.x), ~4406u)))));
    let var_1 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 18u)] <= global4[_wgslsmith_index_u32(7985u, 18u)], false, any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 1u)] <= -741f, u_input.b > u_input.a, false), true)), vec4<bool>(true, true, true, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), func_3(global1[_wgslsmith_index_u32(u_input.b, 3u)]));
    global0 = array<vec2<f32>, 24>();
    let var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(global4[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 18u)], 1i, global4[_wgslsmith_index_u32(u_input.c.x, 18u)] >> (~4294967295u % 32u)), reverseBits(-vec3<i32>(~22807i, global4[_wgslsmith_index_u32(u_input.b, 18u)], global4[_wgslsmith_index_u32(~1u, 18u)])));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.c.x, 1u), 50808u), 1u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 1u)])), 1i != global4[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1331f), any(var_1.xy))), global2[_wgslsmith_index_u32(countOneBits(~(0u >> (u_input.c.x % 32u))), 1u)], true))));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(f32(-1f) * -1510f)), -1702f));
    global3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1208f, _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-288f, var_3)) - _wgslsmith_f_op_f32(f32(-1f) * -159f)), !var_1.x))), firstLeadingBit(abs(~abs(vec4<u32>(1u, 4071u, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(40994u, 24u)])))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(1177u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 1u)] - -1078f)))));
}

