struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, 2147483647i, -45618i, 30213i, 6622i, -79721i, 6071i, 0i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32) -> vec4<u32> {
    global0 = array<i32, 9>();
    let var_0 = true;
    return ~vec4<u32>(~firstTrailingBit(~u_input.d), _wgslsmith_mult_u32(u_input.d, 39191u), reverseBits(u_input.d), arg_0.a.c.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = u_input.d;
    let var_1 = Struct_3(Struct_1(arg_1.a, max(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 6838u, u_input.d, 1u), ~vec4<u32>(arg_1.c.x, u_input.d, 57873u, 59816u)), _wgslsmith_mod_vec4_u32(min(arg_1.b, vec4<u32>(21278u, 1u, arg_1.b.x, arg_1.b.x)), _wgslsmith_div_vec4_u32(arg_1.b, vec4<u32>(u_input.d, 61997u, 1u, var_0)))), reverseBits(arg_1.b.wx) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0)))), 565f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1073f + -1315f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1388f, 792f)))), false), Struct_1(-2058i, vec4<u32>(~4294967295u & u_input.d, _wgslsmith_mod_u32(~arg_1.c.x, 26156u), ~u_input.d, 1u), arg_1.b.zx, arg_1.d, any(select(vec4<bool>(arg_1.e, false, arg_1.e, true), vec4<bool>(arg_1.e, arg_1.e, arg_1.e, false), vec4<bool>(arg_1.e, arg_1.e, arg_1.e, arg_1.e))) & !(!arg_1.e)), Struct_2(vec2<i32>(-1i, 0i), _wgslsmith_f_op_f32(ceil(arg_0)), firstTrailingBit(abs(_wgslsmith_mod_i32(u_input.b, global0[_wgslsmith_index_u32(var_0, 9u)]))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_1.c.x, 9u)]) >> (arg_1.b.wxw % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]))), arg_1.b, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, u_input.d), arg_1.c | vec2<u32>(4294967295u, 27509u)), vec4<f32>(arg_0, arg_1.d.x, _wgslsmith_f_op_f32(max(976f, arg_0)), _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(floor(303f)) != _wgslsmith_f_op_f32(-arg_1.d.x)), arg_1));
    var var_2 = Struct_5(abs(-vec4<i32>(_wgslsmith_add_i32(var_1.a.a, 0i), global0[_wgslsmith_index_u32(4294967295u, 9u)], 1i, abs(global0[_wgslsmith_index_u32(var_1.a.b.x, 9u)]))), 0u, true, all(vec2<bool>(var_1.a.e, all(vec4<bool>(false, true, var_1.c.e.e, arg_1.e)))) | (true & any(!vec3<bool>(var_1.b.e, false, false))), var_1.c.d);
    return vec4<bool>(true, var_2.d, any(select(vec4<bool>(arg_1.e, var_1.c.d.e, var_2.e.e, true), vec4<bool>(any(vec4<bool>(true, true, false, var_2.d)), arg_1.e, false, true), !(!vec4<bool>(var_1.a.e, false, true, false)))), (var_2.e.c.x ^ 4294967295u) > _wgslsmith_dot_vec4_u32(~vec4<u32>(51197u, 4294967295u, 20451u, arg_1.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_1.a.c.x, var_2.e.b.x, 4294967295u), vec4<u32>(4294967295u, arg_1.b.x, var_2.b, var_2.e.b.x)) << (vec4<u32>(u_input.d, 27150u, 4294967295u, 0u) % vec4<u32>(32u))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<u32>(4294967295u, ~u_input.d);
    var var_1 = !func_3(449f, Struct_1(~(-2147483647i), vec4<u32>(u_input.d, 1u ^ var_0.x, u_input.d, 0u), vec2<u32>(1u, 4427u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(23052u, 15055u), vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)), vec4<f32>(-912f, 1000f, _wgslsmith_f_op_f32(min(-389f, 694f)), -1000f), arg_0));
    let var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1351f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(559f)))), _wgslsmith_f_op_f32(-1242f * 805f), _wgslsmith_f_op_f32(-312f - -452f) >= _wgslsmith_f_op_f32(trunc(-472f))))), Struct_1(u_input.b, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.d), vec3<u32>(4294967295u, 1u, 68512u)), 48075u, ~u_input.d, select(u_input.d, var_0.x, arg_0)), vec2<u32>(u_input.d << (firstLeadingBit(33993u) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(24360u, 49961u, u_input.d, u_input.d), vec4<u32>(1u, var_0.x, 30680u, 27682u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, 914f, -211f, 1000f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -189f, 855f, -1158f)))) + vec4<f32>(551f, 2144f, -136f, _wgslsmith_f_op_f32(-355f - -419f))), any(select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), true))));
    let var_3 = vec4<f32>(2797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-322f)) + -565f))), _wgslsmith_f_op_f32(step(-935f, 140f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-623f))) - 452f))));
    global0 = array<i32, 9>();
    return Struct_1(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, 3211i, global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)])), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c), min(u_input.b, u_input.c), ~(-2147483647i), abs(2147483647i))), vec4<u32>(_wgslsmith_clamp_u32(118783u, u_input.d, u_input.d), ~(~u_input.d) >> (_wgslsmith_div_u32(abs(26668u), 1u) % 32u), ~firstTrailingBit(_wgslsmith_mod_u32(u_input.d, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x << (0u % 32u), var_0.x), select(_wgslsmith_add_vec2_u32(vec2<u32>(50780u, 15983u), vec2<u32>(u_input.d, 41030u)), ~vec2<u32>(u_input.d, var_0.x), all(var_2)))), vec2<u32>(~0u, func_1(Struct_3(Struct_1(0i, vec4<u32>(0u, 27341u, 36137u, 4294967295u), vec2<u32>(u_input.d, u_input.d), var_3, arg_0), Struct_1(30431i, vec4<u32>(var_0.x, 6383u, u_input.d, 97731u), vec2<u32>(var_0.x, 0u), var_3, arg_0), Struct_2(vec2<i32>(2147483647i, u_input.a), var_3.x, global0[_wgslsmith_index_u32(u_input.d, 9u)], Struct_1(6258i, vec4<u32>(u_input.d, var_0.x, var_0.x, 49609u), vec2<u32>(u_input.d, u_input.d), vec4<f32>(-2049f, var_3.x, var_3.x, var_3.x), arg_0), Struct_1(-2147483647i, vec4<u32>(32954u, 30572u, 29804u, var_0.x), vec2<u32>(26267u, var_0.x), vec4<f32>(423f, var_3.x, 447f, var_3.x), true))), var_3.wwx, _wgslsmith_f_op_f32(var_3.x - -2421f)).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x), _wgslsmith_f_op_f32(var_3.x - var_3.x), _wgslsmith_f_op_f32(-var_3.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2023f, var_3.x, var_3.x, 598f), var_3) * var_3)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(var_3.x - 967f), _wgslsmith_f_op_f32(1978f * -1000f), -219f)))), !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 164f;
    global0 = array<i32, 9>();
    var var_1 = Struct_2(~vec2<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(u_input.d, 9u)] & global0[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -550f)))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(35069u, 9u)], -11700i), vec2<i32>(20226i, -30074i)), u_input.b) ^ ~countOneBits(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], -1i)), Struct_1(1i << ((~1u << (u_input.d % 32u)) % 32u), max(vec4<u32>(u_input.d, u_input.d ^ 17698u, ~u_input.d, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, 66712u), func_1(Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 9u)], vec4<u32>(u_input.d, u_input.d, 4294967295u, 31031u), vec2<u32>(4294967295u, u_input.d), vec4<f32>(var_0, 1000f, 149f, -1159f), false), Struct_1(global0[_wgslsmith_index_u32(4159u, 9u)], vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec2<u32>(0u, 1u), vec4<f32>(var_0, var_0, -1424f, 1819f), true), Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(65646u, 9u)], 1i), 1050f, global0[_wgslsmith_index_u32(u_input.d, 9u)], Struct_1(u_input.a, vec4<u32>(u_input.d, u_input.d, 93565u, 4294967295u), vec2<u32>(u_input.d, u_input.d), vec4<f32>(210f, var_0, 754f, 435f), true), Struct_1(u_input.b, vec4<u32>(4294967295u, u_input.d, u_input.d, 0u), vec2<u32>(u_input.d, 12341u), vec4<f32>(var_0, -1734f, 1529f, var_0), true))), vec3<f32>(var_0, var_0, var_0), 605f), firstTrailingBit(vec4<u32>(u_input.d, 55785u, 13577u, 21255u)))), ~(~vec2<u32>(60960u, u_input.d) >> (abs(vec2<u32>(29000u, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1048f, 147f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, var_0, 442f)))), !(global0[_wgslsmith_index_u32(0u, 9u)] != -2147483647i) || true), func_2(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    global0 = array<i32, 9>();
    var_1 = Struct_2(var_1.a, var_0, -55610i, Struct_1(-21214i, abs(var_1.d.b), select(~vec2<u32>(u_input.d, 65693u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_1.e.c.x, 4294967295u), var_1.e.b.wzz), _wgslsmith_add_u32(u_input.d, 4294967295u)), func_3(405f, func_2(var_1.e.e)).yz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.e.d)), !var_1.d.e), func_2(false));
    var_1 = Struct_2(~var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(336f))))), -u_input.b, Struct_1(var_1.e.a, var_1.e.b, vec2<u32>(var_1.e.b.x, u_input.d), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.e.d.x), _wgslsmith_div_f32(var_1.b, var_0))), -300f, var_0, var_0), var_1.e.e), var_1.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.b)), var_0), _wgslsmith_f_op_f32(-422f - var_0)));
    var_1 = Struct_2(-select(vec2<i32>(~global0[_wgslsmith_index_u32(var_1.d.c.x, 9u)], ~global0[_wgslsmith_index_u32(u_input.d, 9u)]), select(vec2<i32>(u_input.b, 0i), vec2<i32>(var_1.e.a, 1i), var_1.e.e) << (func_1(Struct_3(Struct_1(u_input.a, vec4<u32>(75786u, 19981u, var_1.d.b.x, 0u), var_1.e.b.zx, vec4<f32>(1094f, var_0, -369f, var_1.d.d.x), false), var_1.d, Struct_2(vec2<i32>(-13628i, 13943i), var_1.b, u_input.a, Struct_1(u_input.b, var_1.d.b, vec2<u32>(22425u, u_input.d), vec4<f32>(var_2.x, var_0, 116f, var_1.e.d.x), true), var_1.d)), var_1.d.d.zxz, var_1.d.d.x).zx % vec2<u32>(32u)), select(!vec2<bool>(var_1.e.e, var_1.d.e), func_3(-327f, Struct_1(20850i, vec4<u32>(46095u, 3752u, u_input.d, 0u), vec2<u32>(var_1.d.b.x, 78252u), vec4<f32>(367f, var_2.x, 1287f, 1018f), var_1.e.e)).yz, true)), -269f, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-41053i, abs(-1i), global0[_wgslsmith_index_u32(1u << (var_1.e.b.x % 32u), 9u)]), _wgslsmith_add_i32(-1i, -2147483647i)), Struct_1(~firstTrailingBit(var_1.e.a) << (95711u % 32u), countOneBits(~func_2(false).b), ((var_1.e.c >> (vec2<u32>(12474u, 16556u) % vec2<u32>(32u))) << (abs(var_1.e.c) % vec2<u32>(32u))) & vec2<u32>(47873u, 1u), var_1.d.d, var_1.e.e), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(31452u, abs(1u) ^ var_1.e.b.x, ~u_input.d, ~(~0u))));
}

