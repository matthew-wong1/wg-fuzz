struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(93829u, 1u, vec3<f32>(-1108f, 621f, -419f), vec4<f32>(-457f, 1665f, -141f, 155f), vec4<u32>(75216u, 2649u, 70722u, 1u));

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: bool;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global2 = any(select(!global1[_wgslsmith_index_u32(firstTrailingBit(arg_3.e.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(16067u, global0.a, arg_2.e.x), arg_2.e.yxx) % 32u), 30u)], select(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], select(select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(80292u, 30u)]), vec2<bool>(true, true), false), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(max(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, arg_2.a), arg_3.b)), 30u)]));
    global3 = _wgslsmith_f_op_vec3_f32(-global0.d.xxx);
    global0 = Struct_1(reverseBits(countOneBits(abs(_wgslsmith_div_u32(1u, 1u)))), global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(1849f * global3.x), _wgslsmith_f_op_f32(arg_2.d.x * 780f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.d.x, arg_2.d.x, -258f)))) * vec3<f32>(1369f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(round(149f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_3.d.x + -1616f))), global3.x, -813f, _wgslsmith_f_op_f32(-1567f + _wgslsmith_f_op_f32(-arg_3.d.x)))), arg_3.e);
    let var_0 = vec4<i32>(u_input.d, countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), -vec2<i32>(u_input.a.x, 2230i)))), 3951i, 13904i);
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(global0.e.x, ~(~arg_3.a), ~(~u_input.b.x)), ~_wgslsmith_sub_u32(arg_2.a, u_input.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(arg_2.d.zyw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(675f, 1714f, -508f), global0.d.zyx, false)), all(global1[_wgslsmith_index_u32(arg_3.e.x, 30u)]))))))), arg_2.d, firstLeadingBit(min(vec4<u32>(u_input.c.x, global0.e.x, ~46449u, 4294967295u >> (0u % 32u)), vec4<u32>(~arg_3.e.x, ~42708u, 4294967295u, 33943u))));
    return global0.e;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.x, -1823f, true)) - global3.x) + arg_0.x))) + _wgslsmith_f_op_f32(exp2(arg_0.x)));
    var var_1 = Struct_2(Struct_1(17183u, (max(15378u, global0.e.x) ^ (u_input.c.x ^ 4294967295u)) ^ u_input.b.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(254f, 276f, false)), _wgslsmith_f_op_f32(arg_1.a.d.x - -131f), arg_1.a.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(122f - 1692f), 1528f, _wgslsmith_f_op_f32(-3324f - global3.x))), _wgslsmith_div_vec4_u32(func_3(_wgslsmith_f_op_f32(min(arg_1.a.d.x, 451f)), arg_1.b, Struct_1(34329u, arg_1.c, vec3<f32>(-728f, -413f, -470f), global0.d, vec4<u32>(4294967295u, 26301u, u_input.b.x, arg_1.d.x)), arg_1.a), ~countOneBits(global0.e))), ~countOneBits(u_input.d), ~func_3(-986f, max(arg_2, _wgslsmith_add_i32(arg_1.e, arg_1.e)), arg_1.a, Struct_1(1u, 43738u, arg_0.yyx, vec4<f32>(-445f, global3.x, 1575f, -610f), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.a.a, 1u, 1u), arg_1.a.e))).x, ~(global0.e << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c.x, global0.b, 0u), vec4<u32>(22986u, 0u, 4294967295u, arg_1.d.x) >> (vec4<u32>(73181u, u_input.b.x, global0.a, 32927u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_2);
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.e.x, _wgslsmith_sub_u32(abs(func_3(var_1.a.c.x, arg_2, var_1.a, Struct_1(1u, 31156u, vec3<f32>(var_0, arg_3, var_1.a.d.x), vec4<f32>(625f, -978f, var_1.a.d.x, -108f), vec4<u32>(global0.e.x, global0.a, 0u, 2253u))).x), var_1.d.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.c.zx, arg_1.a.e.yw), _wgslsmith_add_vec2_u32(global0.e.wz, ~vec2<u32>(var_1.d.x, u_input.c.x)))), vec3<u32>(arg_1.a.a, 0u, var_1.d.x));
    global1 = array<vec2<bool>, 30>();
    let var_3 = Struct_2(Struct_1(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(63234u, var_2.x), 1u), arg_1.a.d.zxy, vec4<f32>(var_1.a.c.x, 548f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - 968f))), -325f), vec4<u32>(global0.e.x, _wgslsmith_mod_u32(~4294967295u, var_2.x), max(var_1.a.e.x, ~0u), _wgslsmith_sub_u32(var_2.x, var_2.x) & (arg_1.a.b & var_2.x))), 0i, ~10128u, reverseBits(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(global0.e, arg_1.a.e), ~_wgslsmith_div_vec4_u32(vec4<u32>(7356u, arg_1.d.x, u_input.b.x, var_2.x), vec4<u32>(var_2.x, 2738u, var_1.a.a, 4294967295u)))), ~((-var_1.b & 0i) ^ _wgslsmith_dot_vec2_i32(u_input.a ^ vec2<i32>(u_input.d, u_input.d), select(u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 30u)]))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global3.x))), 249f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.c.x))) - arg_1.a.c.x) * 1000f)));
}

fn func_1() -> u32 {
    let var_0 = global0.b;
    let var_1 = Struct_1(1u, u_input.c.x & global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) + vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_2(vec4<f32>(-608f, 432f, -302f, global0.d.x), Struct_2(Struct_1(global0.e.x, 4294967295u, global0.d.zzz, global0.d, global0.e), u_input.a.x, 49098u, global0.e, -65676i), u_input.a.x, -1211f)), -352f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(global0.d.x, 290f, global0.d.x, global0.d.x), Struct_2(Struct_1(1u, 1u, vec3<f32>(-108f, global0.c.x, global0.c.x), vec4<f32>(1426f, global0.d.x, -124f, 217f), global0.e), u_input.a.x, 4294967295u, vec4<u32>(1u, u_input.c.x, u_input.b.x, global0.a), -5200i), u_input.a.x, global0.d.x)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(global3.x, -687f))), vec3<f32>(-679f, global3.x, -1505f), vec3<bool>(true, any(vec2<bool>(true, false)), true)))), _wgslsmith_f_op_vec4_f32(sign(global0.d)), global0.e);
    global3 = vec3<f32>(-793f, 231f, 1000f);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(global3.x * global0.c.x), _wgslsmith_f_op_f32(-global3.x))))) + _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, 630f, global0.d.x)), global0.c, true)))));
    global1 = array<vec2<bool>, 30>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.e.x, _wgslsmith_clamp_u32(global0.e.x, 1u, _wgslsmith_sub_u32(35074u, 15197u) | _wgslsmith_div_u32(func_1(), ~global0.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(global0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 796f, global3.x)), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global0.d.x, global0.c.x) * vec3<f32>(global0.c.x, global3.x, global3.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.d.xxw - global0.d.xyy), vec3<f32>(-240f, global0.c.x, global3.x), vec3<bool>(true, true, true))), ~u_input.c.x > ~u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), global3.x, -250f, -816f))), global0.e);
    let var_0 = Struct_1(0u, _wgslsmith_mod_u32(global0.e.x, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, true)) - _wgslsmith_f_op_f32(f32(-1f) * -167f))), _wgslsmith_f_op_f32(-1000f - 731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(min(269f, 1241f))) - _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(select(-111f, 881f, true)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(func_2(global0.d, Struct_2(Struct_1(12145u, global0.a, vec3<f32>(global0.d.x, global3.x, global3.x), global0.d, vec4<u32>(u_input.b.x, 1u, global0.a, u_input.c.x)), u_input.a.x, global0.e.x, vec4<u32>(25216u, u_input.c.x, global0.a, 2759u), 0i), u_input.a.x, global0.c.x))))), ~(~(~vec4<u32>(4294967295u, 47196u, u_input.b.x, 38311u)) << ((~global0.e >> (global0.e % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = Struct_1(u_input.c.x, var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.c.x, _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.d.yxz, var_0.d.xxw, vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(228f, 542f, global0.c.x))))) - vec3<f32>(-561f, _wgslsmith_f_op_f32(1f + var_0.d.x), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(global3.x, global0.d.x)))))), _wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(-693f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(701f, 417f, global0.c.x, 933f), Struct_2(Struct_1(0u, u_input.c.x, var_0.d.zwy, vec4<f32>(var_0.c.x, global0.d.x, var_0.d.x, -1219f), vec4<u32>(37534u, global0.a, 0u, global0.a)), 0i, global0.b, var_0.e, u_input.d), u_input.d, global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-918f))))), _wgslsmith_div_vec4_u32(vec4<u32>(max(u_input.c.x & 78298u, u_input.c.x), global0.a, u_input.b.x, ~firstTrailingBit(29551u)), global0.e));
    global0 = Struct_1(~firstLeadingBit(~_wgslsmith_add_u32(1u, 9753u)), u_input.b.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d.zzy, _wgslsmith_f_op_vec3_f32(var_1.d.zwx - var_1.d.xyy), any(vec4<bool>(false, true, false, true)))), var_1.d.yyw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.wwx) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, var_0.c.x, global0.d.x), vec3<f32>(global0.c.x, 644f, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(select(var_1.d, _wgslsmith_f_op_vec4_f32(-var_1.d), vec4<bool>(false || select(false, true, false), true, !all(vec2<bool>(false, false)), true))), ~(~max(_wgslsmith_mult_vec4_u32(var_0.e, vec4<u32>(1u, 45524u, var_1.e.x, u_input.c.x)), vec4<u32>(4294967295u, global0.a, var_1.b, 4294967295u))));
    var var_2 = Struct_2(Struct_1(~(~u_input.b.x), countOneBits(~_wgslsmith_add_u32(var_1.e.x, var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f * var_0.c.x) - _wgslsmith_f_op_f32(exp2(global3.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.d.x, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.x, var_1.c.x)) + _wgslsmith_f_op_f32(ceil(-1000f))), -989f, _wgslsmith_f_op_f32(ceil(var_0.c.x))), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x >> (35386u % 32u), 10742u & var_1.b), u_input.c.x, var_0.e.x, ~1u)), _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(u_input.d, -30286i, u_input.d, u_input.d))), vec4<i32>(_wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10839i, 4893i, u_input.a.x, 11416i), vec4<i32>(u_input.a.x, 1i, 46565i, u_input.a.x))), -u_input.d, -2147483647i, u_input.a.x)), firstLeadingBit(select(53413u, var_0.a, true) & ~(~global0.a)), vec4<u32>(~1u | ~var_1.e.x, ~1u, _wgslsmith_dot_vec4_u32(global0.e, countOneBits(var_0.e)) | _wgslsmith_div_u32(abs(var_0.e.x), 0u), func_3(-471f, u_input.a.x, Struct_1(_wgslsmith_div_u32(7722u, 4294967295u), func_1(), _wgslsmith_f_op_vec3_f32(step(var_1.d.wzz, vec3<f32>(var_0.d.x, 1067f, -2268f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, global0.d.x, 1425f, 446f), var_1.d, vec4<bool>(false, false, false, true))), _wgslsmith_sub_vec4_u32(var_0.e, global0.e)), Struct_1(1u, u_input.c.x, var_1.d.wxz, vec4<f32>(1092f, 724f, var_0.c.x, -1068f), vec4<u32>(4294967295u, global0.a, var_0.a, 1u))).x), i32(-1i) * -u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.x + -1554f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-546f, var_1.d.x, global3.x, global3.x), vec4<f32>(1252f, var_2.a.d.x, -265f, global3.x))) * _wgslsmith_f_op_vec4_f32(-var_2.a.d)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.d)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.c.x, 1981f), _wgslsmith_f_op_f32(round(var_0.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(940f - global0.c.x))), 1740f, var_1.d.x))), _wgslsmith_f_op_f32(-1177f * _wgslsmith_f_op_f32(-var_2.a.c.x)), ~_wgslsmith_dot_vec4_u32(select(~global0.e, _wgslsmith_add_vec4_u32(var_2.a.e, vec4<u32>(var_0.a, global0.a, 55676u, 1u)), vec4<bool>(true, true, true, true)), var_0.e));
}

