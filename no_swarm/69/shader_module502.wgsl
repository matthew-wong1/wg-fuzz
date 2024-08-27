struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, false, true, false, false, true);

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(0u, 4294967295u, 4754u), vec3<u32>(27551u, 40450u, 1u), vec3<u32>(42484u, 25608u, 3385u), vec3<u32>(1u, 1u, 18689u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(5152u, 0u, 4294967295u), vec3<u32>(1u, 0u, 28223u));

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 51886u, 6236u, 0u, 10489u, 1u, 28565u, 0u, 0u, 0u, 40907u, 6022u, 1u, 4294967295u, 10293u, 1u, 4294967295u, 4294967295u, 50406u, 1u, 45105u, 32477u);

var<private> global3: f32 = -376f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1440f)) + _wgslsmith_f_op_f32(abs(-1419f))), 950f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f + -1452f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<u32> {
    return ~vec4<u32>(~(arg_1.b.x << (arg_1.b.x % 32u)), 19490u, 8370u, 5272u);
}

fn func_2() -> f32 {
    global1 = array<vec3<u32>, 7>();
    let var_0 = abs(u_input.d);
    var var_1 = _wgslsmith_sub_vec4_u32(func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(max(vec4<u32>(20460u, 0u, u_input.b, 0u), vec4<u32>(u_input.b, 36609u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18178u, 22u)], 22u)], 22u)], u_input.b)), vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], u_input.b)))), Struct_1(!global0[_wgslsmith_index_u32(55335u, 7u)], vec3<u32>(75449u, 13170u, 1u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(0u, 36437u, global2[_wgslsmith_index_u32(4294967295u, 22u)])) % vec3<u32>(32u)), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(103818u, 7u)], false), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(281f * -803f))), !vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27810u, 22u)], 7u)], false, global0[_wgslsmith_index_u32(4294967295u, 7u)])), true, true, true)), func_4(-294f, Struct_1(all(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37962u, 22u)], 7u)], false)), ~(~vec3<u32>(1949u, 74630u, u_input.b)), !vec3<bool>(global0[_wgslsmith_index_u32(15580u, 7u)], true, false), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-804f - 1418f))), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11685u, 22u)], 7u)], false, false), true)), global0[_wgslsmith_index_u32(~abs(1u), 7u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], u_input.b, 1u, 0u), vec4<u32>(4631u, 0u, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)])), 7u)], true)));
    let var_2 = 4457i;
    global1 = array<vec3<u32>, 7>();
    return -103f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_1(select(true, false, arg_0.a), countOneBits(select(arg_0.b, max(vec3<u32>(1u, u_input.b, 0u), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.b.x), 7u)]), !select(arg_0.c, vec3<bool>(arg_0.a, true, global0[_wgslsmith_index_u32(arg_1.x, 7u)]), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b.x, 22u)], 7u)]))), vec3<bool>(1u >= abs(select(59413u, 4294967295u, arg_0.a)), true, select(true, any(select(vec4<bool>(true, false, true, arg_0.a), vec4<bool>(global0[_wgslsmith_index_u32(32201u, 7u)], true, true, false), global0[_wgslsmith_index_u32(arg_1.x, 7u)])), !arg_0.a)), _wgslsmith_f_op_f32(func_2()));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-919f, _wgslsmith_f_op_f32(func_3(vec4<u32>(0u | arg_2.x, _wgslsmith_dot_vec2_u32(var_0.b.zy, arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 105831u, arg_2.x, 0u), vec4<u32>(global2[_wgslsmith_index_u32(arg_1.x, 22u)], var_0.b.x, var_0.b.x, 40927u)), _wgslsmith_dot_vec4_u32(vec4<u32>(30064u, global2[_wgslsmith_index_u32(0u, 22u)], 1u, u_input.b), vec4<u32>(1u, 1u, 0u, global2[_wgslsmith_index_u32(14871u, 22u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + var_0.d)) * -1209f), 304f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d, -936f, var_0.d, var_0.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-417f, var_0.d, 1412f, 1364f), vec4<f32>(var_0.d, -1001f, var_0.d, 698f), false)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2210f), var_0.d, _wgslsmith_f_op_f32(sign(-1819f)), 1135f))), _wgslsmith_add_i32(1i >> (arg_2.x % 32u), _wgslsmith_mult_i32(1i, abs(u_input.d))) == 0i));
    let var_2 = ~1u;
    var var_3 = Struct_1(any(vec3<bool>(var_0.c.x, true, any(var_0.c))), vec3<u32>(u_input.b, ~_wgslsmith_sub_u32(var_0.b.x | 1230u, ~var_2), 1u), !select(vec3<bool>(global0[_wgslsmith_index_u32(~9528u, 7u)], true, true), !select(arg_0.c, vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 22u)], 7u)], true), var_0.c), !vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b.x, 22u)], 7u)], true)), -876f);
    let var_4 = var_3.b;
    return vec4<u32>(_wgslsmith_div_u32(~var_3.b.x, 1u >> (~func_4(var_1.x, arg_0, vec4<bool>(false, var_3.a, false, arg_0.c.x)).x % 32u)), ~(~(~(~u_input.b))), ~0u, select(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], var_3.b.x), 1u, !all(vec2<bool>(var_0.c.x, arg_0.c.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(true, _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 22056u, 70371u), vec3<u32>(global2[_wgslsmith_index_u32(51414u, 22u)], 17068u, global2[_wgslsmith_index_u32(78127u, 22u)]))), 22u)], 7u)], _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_0.x, 87524u, 1u)), select(~vec3<u32>(global2[_wgslsmith_index_u32(arg_1.b.x, 22u)], 4294967295u, arg_1.b.x), ~vec3<u32>(arg_0.x, u_input.b, global2[_wgslsmith_index_u32(50626u, 22u)]), !arg_1.c)), ~vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(17902u, 22u)], 0u) << (vec3<u32>(~arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)] % 32u), 22u)], 22u)], 15978u) % vec3<u32>(32u))), vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, 0i)) < u_input.c, !all(vec2<bool>(true, true)), all(vec2<bool>(arg_1.d < 824f, arg_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1155f));
    global2 = array<u32, 22>();
    global3 = _wgslsmith_f_op_f32(-arg_1.d);
    global1 = array<vec3<u32>, 7>();
    var var_1 = -1i ^ u_input.a;
    return ~((_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(78614u, 22u)], global2[_wgslsmith_index_u32(var_0.b.x, 22u)]), reverseBits(arg_1.b)) & func_1(var_0, _wgslsmith_div_vec2_u32(arg_1.b.yx, arg_0.wz), ~vec2<u32>(1u, 42855u)).yzz) ^ vec3<u32>(_wgslsmith_clamp_u32(countOneBits(1u), arg_0.x, arg_0.x << (0u % 32u)), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(45976u, 30184u)), 22u)], select(_wgslsmith_div_u32(arg_0.x, 73232u), arg_0.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 7>();
    var var_0 = Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(min(1u, u_input.b), ~u_input.b), 71201u), 7u)], func_5(func_1(Struct_1(true, vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 22u)], u_input.b), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)]), 207f), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), Struct_1(global0[_wgslsmith_index_u32(~4294967295u, 7u)], select(vec3<u32>(9510u, 7327u, 3976u), global1[_wgslsmith_index_u32(0u, 7u)], vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, false)), vec3<bool>(false, global0[_wgslsmith_index_u32(64958u, 7u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 7u)]), _wgslsmith_f_op_f32(-1112f + 1460f))) ^ global1[_wgslsmith_index_u32(~0u, 7u)], vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34382u, 22u)], 7u)])), global0[_wgslsmith_index_u32(12078u << (u_input.b % 32u), 7u)])), true, false), _wgslsmith_f_op_f32(f32(-1f) * -1197f));
    var var_1 = Struct_1(~u_input.a < 47201i, _wgslsmith_sub_vec3_u32(vec3<u32>(20993u, firstLeadingBit(u_input.b) & global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(106523u, 22u)], 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26593u, 22u)] | global2[_wgslsmith_index_u32(1u, 22u)], 22u)]), ~vec3<u32>(var_0.b.x, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 1u, u_input.b, 15255u), vec4<u32>(27046u, u_input.b, u_input.b, global2[_wgslsmith_index_u32(26621u, 22u)])))), !var_0.c, var_0.d);
    global1 = array<vec3<u32>, 7>();
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(u_input.d ^ u_input.a), -_wgslsmith_add_i32(u_input.a, u_input.c)) << (vec2<u32>(3393u, global2[_wgslsmith_index_u32(~var_1.b.x & 0u, 22u)]) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, -8065i), (vec2<i32>(u_input.d, 7646i) ^ vec2<i32>(u_input.d, u_input.d)) ^ select(vec2<i32>(-2147483647i, -30460i), vec2<i32>(u_input.a, 30644i), global0[_wgslsmith_index_u32(4294967295u, 7u)])));
    let var_3 = -31293i <= _wgslsmith_sub_i32(u_input.a, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, -46862i), u_input.d), select(-1i, u_input.d & u_input.a, !var_0.a)));
}

