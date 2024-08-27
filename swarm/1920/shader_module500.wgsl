struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_5(Struct_3(Struct_1(u_input.c, u_input.e.x, 4294967295u), arg_1.yy, !vec3<bool>(true, !arg_1.x, true), Struct_2(0i, Struct_1(1i, 20888u, 0u), abs(firstTrailingBit(u_input.b.xwy)), 5281u, Struct_1(abs(u_input.b.x), 4294967295u, 33342u)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -1091f))), _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, 48601u)), vec2<u32>(u_input.a.x, u_input.e.x))), _wgslsmith_mod_i32(-46245i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.c), u_input.b.zz)), u_input.c << (4294967295u % 32u));
    let var_1 = var_0;
    var var_2 = var_0.a.d.d;
    var_2 = firstTrailingBit(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.d.b.c, var_1.b), vec2<u32>(u_input.a.x, 4294967295u)))));
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(abs(21367u), ~1u, 1546u), ~u_input.e.xxy), vec3<u32>(var_1.a.a.c, u_input.e.x, ~8191u), _wgslsmith_add_vec3_u32(vec3<u32>(28753u, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.e.zz), _wgslsmith_div_u32(0u, 29924u)), u_input.a.xwz)), u_input.a.wzx);
    return true;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(Struct_1(2147483647i, u_input.a.x, 1u), select(vec2<u32>(select(u_input.e.x, u_input.e.x, true), abs(countOneBits(4294967295u))), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, -1264f, 432f, -961f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), true)), Struct_1(firstTrailingBit(-18345i) ^ u_input.d, u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.a.wy, ~(vec2<u32>(34468u, u_input.e.x) >> (u_input.e.zw % vec2<u32>(32u))))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(586f - _wgslsmith_f_op_f32(f32(-1f) * -186f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x)) + vec2<f32>(415f, _wgslsmith_f_op_f32(-1354f + -2052f)));
    var var_4 = Struct_1(u_input.d, 47278u, var_0.c.b);
    return var_4.b << (max(64725u, var_0.a.c) % 32u);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = arg_0.x;
    var_0 = 22770u;
    var_0 = arg_0.x;
    var var_1 = vec2<bool>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x >> (10085u % 32u), func_2(), 1u), ~4294967295u) <= 110293u, true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-957f)), _wgslsmith_div_f32(-357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1276f - _wgslsmith_div_f32(-1108f, -1610f)) + 101f)), 701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f * -979f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1229f)), _wgslsmith_f_op_f32(f32(-1f) * -799f)))));
    return min(7548u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = Struct_3(Struct_1(u_input.b.x, func_1(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.e.zyy), select(vec3<u32>(var_0.x, 1u, 34766u), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), false))), 1u), vec2<bool>((var_0.x > 30064u) == true, _wgslsmith_dot_vec3_i32(~u_input.b.xwy, ~u_input.b.xxz) <= 1i), select(!vec3<bool>(select(false, true, false), any(vec4<bool>(false, false, true, true)), false), vec3<bool>(select(true, func_3(vec4<f32>(164f, -1810f, -621f, -1676f), vec4<bool>(true, false, false, true)), true), true, false), !(_wgslsmith_f_op_f32(ceil(-316f)) < -1581f)), Struct_2(2147483647i, Struct_1(-1i, _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(var_0.x, var_0.x, 25230u, 0u)), 1u), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.b.yzx, vec3<i32>(u_input.b.x, 0i, 41817i)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xxx, u_input.b.zyz), u_input.b.x, -17901i)), func_1(var_0.zwz), Struct_1(-u_input.b.x, 60979u, ~abs(4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(228f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3021f, 859f)), _wgslsmith_f_op_f32(f32(-1f) * -357f)))));
    var var_2 = var_1.e;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1717f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.e * var_1.e))))) + _wgslsmith_f_op_f32(-var_1.e));
    var var_3 = Struct_5(Struct_3(Struct_1(max(-var_1.a.a, _wgslsmith_div_i32(var_1.d.b.a, u_input.d)), _wgslsmith_mult_u32(var_1.d.e.c, 20873u), ~1u >> (~4294967295u % 32u)), select(var_1.b, var_1.c.yy, select(var_1.c.yy, select(vec2<bool>(true, false), var_1.b, true), select(var_1.b, vec2<bool>(true, true), true))), vec3<bool>(var_1.c.x, var_1.b.x, var_1.b.x), Struct_2(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), var_1.a, reverseBits(-vec3<i32>(var_1.d.e.a, var_1.d.c.x, u_input.d)), _wgslsmith_mod_u32(1u, var_0.x), var_1.a), _wgslsmith_f_op_f32(-var_1.e)), _wgslsmith_clamp_u32((abs(var_0.x) ^ 70430u) >> (u_input.e.x % 32u), ~(~0u) ^ _wgslsmith_mult_u32(var_0.x & 21648u, 41299u), ~var_0.x), 13840i, -13892i);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), 4294967295u >= var_3.a.d.e.c)) + 2197f);
    var var_4 = Struct_3(var_1.d.b, vec2<bool>(!(-183f == _wgslsmith_f_op_f32(round(var_3.a.e))), var_1.b.x), !vec3<bool>(func_3(vec4<f32>(var_3.a.e, 404f, -1172f, var_3.a.e), select(vec4<bool>(true, false, var_1.c.x, var_1.b.x), vec4<bool>(var_3.a.b.x, var_3.a.b.x, true, var_1.b.x), var_1.c.x)), var_1.b.x, all(!vec3<bool>(true, var_3.a.b.x, var_3.a.c.x))), var_1.d, -114f);
    var_3 = Struct_5(Struct_3(Struct_1(1i, var_4.a.c, 20540u), select(vec2<bool>(var_3.a.b.x, false), var_4.c.xx, var_3.a.b), var_1.c, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.e)) + 377f)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, 4294967295u, 4294967295u, _wgslsmith_mult_u32(47762u, 15198u))), var_3.c, firstLeadingBit(var_1.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.a.a.b, countOneBits(4294967295u)), var_4.e);
}

