struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-849f, -435f, -1000f, -919f), vec4<f32>(1200f, -2934f, 1673f, 429f), vec4<f32>(433f, -545f, -1504f, 699f), vec4<f32>(-1116f, -891f, 1000f, 452f), vec4<f32>(-1567f, -969f, -2093f, 498f), vec4<f32>(-1499f, -502f, -1377f, -240f), vec4<f32>(2877f, -875f, 359f, -875f), vec4<f32>(1000f, 1419f, -502f, -886f), vec4<f32>(-777f, -1000f, -344f, 1150f), vec4<f32>(422f, -526f, -499f, 3215f), vec4<f32>(-1000f, 967f, 1199f, 693f), vec4<f32>(1670f, 733f, 1245f, 1907f), vec4<f32>(-1178f, 733f, 1745f, 413f), vec4<f32>(-810f, -1351f, 350f, -1234f), vec4<f32>(2811f, 1214f, -710f, 2320f), vec4<f32>(760f, 415f, -1032f, 514f));

var<private> global2: Struct_1;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<i32> {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), 1f, -637f, _wgslsmith_f_op_f32(-arg_0.a.b.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1988f, arg_0.a.a.x, -1358f, -846f), vec4<f32>(global2.c.x, global0.b.a.b.x, arg_0.a.c.x, 597f))), global1[_wgslsmith_index_u32(~4294967295u, 16u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.c.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2.b.zzy)), vec3<f32>(global2.c.x, global0.c.b.x, global2.b.x))))));
    global1 = array<vec4<f32>, 16>();
    global1 = array<vec4<f32>, 16>();
    var var_0 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), global0.d < global0.d), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), false), vec3<bool>(arg_0.a.c.x < _wgslsmith_f_op_f32(-global2.b.x), true, any(vec2<bool>(true, true))), true), select(vec3<bool>(false, select(0u == u_input.a.x, all(vec4<bool>(true, true, true, false)), false), true), vec3<bool>(true, _wgslsmith_f_op_f32(step(global0.c.b.x, arg_0.a.a.x)) > -102f, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), true));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.a.a) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.x, global0.c.c.x))), vec2<f32>(global0.c.b.x, global2.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.b.x, arg_0.a.c.x, 840f, _wgslsmith_f_op_f32(-arg_0.a.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1688f, -1000f, arg_0.a.b.x) * _wgslsmith_f_op_vec3_f32(sign(global0.b.a.c))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-657f, 1380f, arg_0.a.b.x), vec3<f32>(arg_0.a.c.x, -1000f, 1941f), false)), global2.b.ywz)), !vec3<bool>(var_0.x, false, false)))), ~firstLeadingBit(-vec3<i32>(arg_0.b.x, -24620i, 0i) << (~arg_1.yyw % vec3<u32>(32u))));
    return vec2<i32>(_wgslsmith_div_i32(-(-2147483647i >> (1u % 32u)), ~arg_0.b.x), min(~(-2147483647i), ~arg_0.b.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_5 {
    let var_0 = arg_0.yxz;
    global1 = array<vec4<f32>, 16>();
    let var_1 = Struct_2(_wgslsmith_mod_u32(global0.a, _wgslsmith_div_u32(select(arg_2.a << (u_input.a.x % 32u), ~global0.a, all(arg_0)), 4294967295u)), true, func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.a.b.x, global0.c.c.x) + vec2<f32>(437f, 648f)), global0.c.b, vec3<f32>(global0.c.b.x, global2.b.x, 1694f)), -vec3<i32>(-2147483647i, global0.b.b.x, 47399i) << (~vec3<u32>(51135u, 50377u, 2438u) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(~global3.x, ~arg_2.a, _wgslsmith_clamp_u32(global3.x, 1u, 34916u)), ~(8892u & u_input.a.x), reverseBits(~4294967295u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1374f), -2339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b.x * -488f)))));
    var var_3 = global0.b.b.x;
    return Struct_5(var_1.a, Struct_3(Struct_1(global2.c.yx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_2.b, vec4<f32>(global0.d, -1000f, global2.c.x, var_2.b.x), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1306f, -984f, -870f, 1922f) + var_2.b), var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.c - global2.b.xwz)))), reverseBits(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.c.x, arg_2.c.x, 37663i), _wgslsmith_add_vec3_i32(global0.b.b, vec3<i32>(arg_2.c.x, -18892i, 2147483647i))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global0.c.b, global2.b), vec4<f32>(var_2.a.x, global0.b.a.a.x, global2.b.x, -1297f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, 1492f, var_2.a.x, 157f))), vec3<f32>(-424f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.c.x, -291f), _wgslsmith_f_op_f32(trunc(832f)))), -825f)), global0.d);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>) -> f32 {
    global1 = array<vec4<f32>, 16>();
    var var_0 = Struct_2(~global3.x, false, arg_0.b.b.xz);
    global2 = arg_0.c;
    let var_1 = reverseBits(max(var_0.c.x ^ ~firstTrailingBit(-1i), _wgslsmith_mult_i32(arg_0.b.b.x, ~(-7864i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(var_0.b, false, false, false), var_0.b, Struct_2(23819u, false, var_0.c)).d * _wgslsmith_div_f32(-579f, -1621f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.c.x)), arg_0.b.a.a.x))), -855f)));
    return _wgslsmith_f_op_f32(ceil(1639f));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_5 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1296f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1475f))) - global0.d), any(vec4<bool>(true, true, true, true)));
    var var_1 = vec3<bool>(true, var_0.x & all(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, true, false, false))), !(!all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))));
    var var_2 = Struct_5(~countOneBits(~_wgslsmith_add_u32(4294967295u, 0u)), func_2(select(select(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, true, true)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, false, var_0.x)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_0.x, var_0.x, var_1.x), false), true), true, Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global0.a), vec2<u32>(arg_2, u_input.a.x) | vec2<u32>(20751u, arg_2)), !var_0.x, func_2(vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x, Struct_2(global3.x, false, global0.b.b.xx)).b.b.zz)).b, func_2(select(vec4<bool>(true, var_0.x, any(vec4<bool>(var_0.x, var_1.x, var_1.x, false)), true), vec4<bool>(false | var_0.x, false, !var_0.x, !var_1.x), vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, true, var_0.x)), select(true, true, true), true, var_0.x)), false, Struct_2(arg_1.x, all(var_1.zz), abs(global0.b.b.yz))).b.a, _wgslsmith_f_op_f32(f32(-1f) * -550f));
    let var_3 = 0i;
    let var_4 = _wgslsmith_f_op_f32(floor(-2566f));
    return func_2(!vec4<bool>(var_1.x, var_1.x, _wgslsmith_dot_vec3_i32(global0.b.b, global0.b.b) < var_2.b.b.x, var_0.x), false, Struct_2(~1787u, var_0.x & (var_1.x && false), var_2.b.b.yz));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_5 {
    global0 = Struct_5(_wgslsmith_dot_vec3_u32(global3.yzx | ~vec3<u32>(arg_0, 53898u, global0.a), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), global3.ywz)), global0.b, global0.c, global2.c.x);
    global3 = vec4<u32>(1u, ~(1u >> (0u % 32u)), ~global0.a, 0u);
    global1 = array<vec4<f32>, 16>();
    var var_0 = global0.b.b.x;
    let var_1 = ~1i;
    return func_5(Struct_1(vec2<f32>(global0.c.c.x, _wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, false, true, true), false, Struct_2(u_input.a.x, true, vec2<i32>(-36068i, 7629i))), ~u_input.a.yy))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(26788u, 16u)], vec4<f32>(2069f, -360f, 452f, global2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, 1878f, global0.b.a.b.x, -143f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.b))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, 979f, arg_1.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, arg_1.c.x, arg_1.a.x))))), max(u_input.a.xy, abs(countOneBits(_wgslsmith_clamp_vec2_u32(global3.xy, vec2<u32>(arg_0, arg_0), vec2<u32>(21277u, global3.x))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 16>();
    var var_0 = global0.b.b.zx;
    global3 = vec4<u32>(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29039u, 18129u), u_input.a)) & ~_wgslsmith_sub_u32(_wgslsmith_div_u32(17887u, u_input.a.x), 9357u), ~u_input.a.x, ~_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xz, global3.xz), ~1u), ~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(59503u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), min(vec4<u32>(global3.x, u_input.a.x, global3.x, global0.a), vec4<u32>(0u, global0.a, u_input.a.x, 65999u))));
    let var_1 = func_1(~(~u_input.a.x | ~(~0u)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.c.zx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, -279f, global0.d, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.a.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.a.x, global0.c.c.x))))));
    var var_2 = _wgslsmith_dot_vec3_i32(global0.b.b, countOneBits(_wgslsmith_add_vec3_i32(~global0.b.b, ~vec3<i32>(-1i, -45749i, 18478i)))) | -countOneBits(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, global0.a ^ _wgslsmith_div_u32(~4294967295u, u_input.a.x)), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -1573f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 2069f, 914f, 535f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.b.wzw + vec3<f32>(-1000f, global0.d, global2.b.x)) * _wgslsmith_div_vec3_f32(global2.c, vec3<f32>(global2.c.x, 976f, global2.a.x)))), min(global3.yy, vec2<u32>(var_1.a, ~global0.a)), var_1.a).c.b);
}

