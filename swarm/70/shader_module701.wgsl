struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec2<i32>(-32598i, 26054i), -12973i, Struct_2(Struct_1(-1095f, false, vec4<i32>(-1542i, -4791i, -51281i, 0i)), -1i), Struct_1(-1719f, true, vec4<i32>(0i, 1i, -16234i, 71882i)));

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 62358u, 87225u, 4294967295u, 1u, 4294967295u, 4294967295u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(10205u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], global1[_wgslsmith_index_u32(41230u, 8u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37503u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(46311u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2573u, 8u)], 8u)])), _wgslsmith_mult_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17646u, 8u)], 8u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4704u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), vec3<u32>(951u, 10602u, 23482u)))) & min(max(~vec2<u32>(0u, 43539u), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 22209u)), vec2<u32>(33870u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(75829u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2605u, 8u)], 8u)] & 9158u, global1[_wgslsmith_index_u32(1u >> (0u % 32u), 8u)]), 8u)]));
    global0 = Struct_3(true, u_input.c, ~abs(firstLeadingBit(u_input.c.x)) >> (~1u % 32u), Struct_2(global0.d.a, u_input.b), arg_1);
    var var_1 = ~0u;
    global0 = Struct_3(all(select(vec3<bool>(true, false, any(vec4<bool>(true, global0.e.b, global0.a, false))), select(select(vec3<bool>(arg_1.b, false, true), vec3<bool>(arg_1.b, arg_1.b, global0.e.b), false), !vec3<bool>(false, global0.a, false), !vec3<bool>(global0.a, arg_1.b, arg_1.b)), vec3<bool>(true, true, true))), min(vec2<i32>(u_input.b, _wgslsmith_add_i32(-2147483647i, arg_1.c.x) & (arg_1.c.x << (global1[_wgslsmith_index_u32(29088u, 8u)] % 32u))), arg_1.c.wy), -54102i, global0.d, global0.d.a);
    global0 = Struct_3(all(!(!vec4<bool>(false, arg_1.b, global0.d.a.b, false))), -_wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.c), -abs(global0.d.a.c.xz)), i32(-1i) * -u_input.b, Struct_2(Struct_1(1f, false && all(vec4<bool>(false, false, true, arg_1.b)), firstTrailingBit(vec4<i32>(-13239i, -2147483647i, global0.d.b, u_input.c.x))), ~global0.e.c.x), Struct_1(arg_0.x, all(vec2<bool>(any(vec2<bool>(arg_1.b, false)), !global0.a)), global0.d.a.c));
    return ~(1u >> (global1[_wgslsmith_index_u32(~var_0.x, 8u)] % 32u));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) + _wgslsmith_f_op_f32(f32(-1f) * -278f))), true, vec4<i32>(-1i, -arg_1.x, arg_1.x, u_input.a) ^ vec4<i32>(-1i, arg_1.x ^ select(-1i, u_input.b, global0.d.a.b), global0.d.b, _wgslsmith_mod_i32(min(1i, 39778i), global0.d.b)));
    var var_1 = u_input.a < 0i;
    var var_2 = true == any(vec2<bool>(false, all(!vec2<bool>(global0.d.a.b, false))));
    var var_3 = min(~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(29925u, global1[_wgslsmith_index_u32(4294967295u, 8u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40878u, 8u)], 8u)], 8u)], 32644u)), _wgslsmith_mult_u32(0u, 4294967295u), countOneBits(~0u)), vec3<u32>(global1[_wgslsmith_index_u32(7589u, 8u)], ~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.e.a, global0.d.a.a) + vec3<f32>(192f, arg_0, arg_0)), global0.d.a), global1[_wgslsmith_index_u32(min(~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)]), global1[_wgslsmith_index_u32(0u, 8u)]), 8u)]));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-610f, arg_0, 1556f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.e.a, arg_0) + vec3<f32>(arg_0, var_0.a, -821f))))) + vec3<f32>(global0.e.a, 208f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2069f, 320f) + _wgslsmith_f_op_f32(406f - var_0.a))))));
    return Struct_3(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global0.e.b, true, true), vec4<bool>(var_0.b, true, true, var_0.b), false), select(global0.e.b, var_0.b, global0.d.a.b))), max(-firstLeadingBit(u_input.c) | firstLeadingBit(max(global0.b, vec2<i32>(var_0.c.x, -1i))), vec2<i32>(var_0.c.x, ~0i)), -44880i, global0.d, Struct_1(var_0.a, true, var_0.c));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_2(1246f, vec4<i32>(7678i, -1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x << (global1[_wgslsmith_index_u32(1u, 8u)] % 32u)), i32(-1i) * -global0.b.x), -20670i >> (arg_0 % 32u)));
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.a) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-747f * 281f)))) * _wgslsmith_f_op_f32(-global0.e.a)), _wgslsmith_mod_vec4_i32(global0.e.c, ~select(abs(vec4<i32>(global0.e.c.x, 0i, global0.e.c.x, u_input.a)), -vec4<i32>(var_0.d.a.c.x, global0.d.b, u_input.b, global0.c), any(vec2<bool>(global0.a, true)))));
    var var_1 = true;
    var var_2 = global0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a.a, global0.e.a, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e.a, global0.d.a.a, 641f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2031f, 662f, var_0.d.a.a), vec3<f32>(global0.d.a.a, var_2.a.a, -1355f), var_2.a.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1524f, var_0.d.a.a, 2120f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.a, var_2.a.a, var_2.a.a)))))), vec3<f32>(var_2.a.a, var_2.a.a, -195f)));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1195f, _wgslsmith_f_op_f32(f32(-1f) * -1347f)))), ~vec4<i32>(~0i, _wgslsmith_mod_i32(1i, countOneBits(u_input.a)), _wgslsmith_sub_i32(countOneBits(arg_3), ~(-28073i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(40314i, -56022i, arg_0.a.c.x), vec3<i32>(-1i, u_input.b, arg_3)), vec3<i32>(1i, -2008i, 2147483647i) | arg_0.a.c.yzy)));
    let var_1 = func_2(285f, -global0.e.c).d.a;
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + 442f)) + func_2(_wgslsmith_f_op_f32(-arg_0.a.a), firstTrailingBit(var_0.e.c)).d.a.a) + _wgslsmith_f_op_f32(-arg_0.a.a)), -(_wgslsmith_div_vec4_i32(~var_1.c, vec4<i32>(-8088i, -1i, 0i, arg_0.b) ^ vec4<i32>(var_0.b.x, -1i, 0i, global0.e.c.x)) << ((arg_1 >> (vec4<u32>(global1[_wgslsmith_index_u32(61983u, 8u)], 1u, 17335u, 172403u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = -1180f;
    var var_3 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.e.a)), var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_div_f32(-1000f, global0.e.a)), 674f), global0.d.a.b)), select(-(~var_1.c), arg_0.a.c, vec4<bool>(var_0.a, global0.a, false, all(select(vec2<bool>(global0.d.a.b, true), vec2<bool>(var_1.b, true), vec2<bool>(true, arg_0.a.b)))))).d;
    return Struct_4(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.a.a), _wgslsmith_div_f32(992f, 367f)))), vec4<i32>(-arg_0.b, -1i, -14489i ^ var_0.e.c.x, 0i)).d.a, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(var_1.c.yxw, global0.e.c.yxz ^ vec3<i32>(1i, global0.e.c.x, global0.c), var_3.a.c.yyw), vec3<i32>(u_input.c.x, func_2(_wgslsmith_div_f32(1062f, var_1.a), arg_0.a.c).b.x, arg_3)));
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    global1 = array<u32, 8>();
    let var_0 = global0.e.a;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.a)) * _wgslsmith_f_op_f32(-980f * 1000f)), -188f, _wgslsmith_f_op_f32(-329f * global0.d.a.a), global0.d.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.a + global0.d.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(Struct_4(global0.d.a, min(global0.c, 1i)), vec4<u32>(func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3847u, 1u), 8u)], 8u)]), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54640u, 8u)], 8u)]), ~(81776u ^ global1[_wgslsmith_index_u32(3302u, 8u)]), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71460u, 8u)], 8u)], 8u)] >> (4294967295u % 32u))), !global0.e.b, ~(i32(-1i) * -24805i)));
}

