struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-1344f, 732f), vec2<f32>(958f, -194f), vec2<f32>(387f, 1000f), vec2<f32>(-648f, 181f), vec2<f32>(-894f, -1348f), vec2<f32>(114f, -403f), vec2<f32>(1019f, 994f), vec2<f32>(762f, -314f), vec2<f32>(-311f, -1127f), vec2<f32>(-1100f, -1504f), vec2<f32>(834f, -707f), vec2<f32>(-402f, 687f), vec2<f32>(-253f, -2407f), vec2<f32>(-459f, -312f), vec2<f32>(358f, -1200f), vec2<f32>(-347f, 432f), vec2<f32>(-695f, -1180f), vec2<f32>(-1359f, 1851f), vec2<f32>(-1331f, 2941f), vec2<f32>(-1000f, -867f), vec2<f32>(-752f, -567f), vec2<f32>(-342f, -420f), vec2<f32>(-282f, 404f), vec2<f32>(-1846f, -1624f), vec2<f32>(-129f, -259f), vec2<f32>(130f, -513f), vec2<f32>(355f, -1979f), vec2<f32>(568f, -684f));

var<private> global2: array<Struct_1, 31>;

var<private> global3: i32;

var<private> global4: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-264f, 150f, 1011f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_3(Struct_1(true, 285f, ~_wgslsmith_add_i32(u_input.b, -2147483647i), global0[_wgslsmith_index_u32(~countOneBits(u_input.a >> (u_input.a % 32u)), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -419f), 949f)) * _wgslsmith_f_op_f32(2113f * _wgslsmith_div_f32(-763f, -143f)))), ~vec3<i32>(reverseBits(-10995i), -19968i, ~(i32(-1i) * -1i)), reverseBits(firstLeadingBit(-1i)), global2[_wgslsmith_index_u32(82597u, 31u)]);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(822f, var_0.d.e)))) + -366f) * _wgslsmith_f_op_f32(-var_0.d.b)), 802f, !(var_0.a.b == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.a.e) * var_0.a.e))));
    var_1 = _wgslsmith_div_f32(-287f, var_0.d.e);
    let var_2 = Struct_2(min(var_0.b.yz, vec2<i32>(0i, _wgslsmith_mult_i32(-2147483647i, 0i))) ^ firstTrailingBit(min(firstLeadingBit(var_0.b.xy), var_0.b.xz ^ vec2<i32>(-1i, u_input.b))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_clamp_i32(var_0.d.c, u_input.b, var_0.a.c), select(var_0.b.x, 0i, var_0.a.a)), var_0.b, vec3<i32>(-11168i, u_input.b, -u_input.b)), Struct_1(true, -414f, 2147483647i, abs(global0[_wgslsmith_index_u32(arg_0, 2u)] | ~var_0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -abs(var_0.c));
    var_1 = var_0.d.e;
    return any(select(!vec3<bool>(arg_0 != 27387u, var_2.c.a, select(var_2.c.a, true, true)), select(!vec3<bool>(var_2.c.a, true, var_2.c.a), select(select(vec3<bool>(false, false, var_0.d.a), vec3<bool>(false, false, false), false), !vec3<bool>(true, var_0.a.a, var_0.a.a), vec3<bool>(false, false, var_0.d.a)), select(vec3<bool>(var_2.c.a, var_0.a.a, var_2.c.a), select(vec3<bool>(var_0.d.a, var_2.c.a, var_2.c.a), vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.a, var_2.c.a)), all(vec2<bool>(var_0.a.a, var_2.c.a)))), var_2.c.a));
}

fn func_2() -> Struct_2 {
    let var_0 = false && func_3(u_input.a);
    let var_1 = !select(var_0, false, all(select(vec3<bool>(false, false, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, true), var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, var_0)))));
    global0 = array<vec2<u32>, 2>();
    var var_2 = global2[_wgslsmith_index_u32(~u_input.a, 31u)];
    return Struct_2(vec2<i32>(_wgslsmith_add_i32(-var_2.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, 48677i))), u_input.b) << (countOneBits(~(~global0[_wgslsmith_index_u32(43592u, 2u)])) % vec2<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(_wgslsmith_div_i32(28231i, u_input.b)), _wgslsmith_sub_i32(-var_2.c, var_2.c), min(-2147483647i, select(-2147483647i, u_input.b, false))), vec3<i32>(i32(-1i) * -31539i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(9408i, var_2.c), vec2<i32>(1i, u_input.b))), ~(4824i >> (var_2.d.x % 32u)))), global2[_wgslsmith_index_u32(var_2.d.x, 31u)], abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(select(-4194i, 1i, var_1), 4581i), _wgslsmith_clamp_i32(1i, var_2.c, 23262i) ^ _wgslsmith_sub_i32(u_input.b, 2147483647i), abs(var_2.c) >> (u_input.a % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-416f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1237f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + func_2().c.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.e) * 2178f))))));
    var var_1 = arg_0.c.a;
    var_1 = true;
    var var_2 = Struct_3(Struct_1(arg_0.c.a, arg_1.x, -(~u_input.b), arg_0.c.d, _wgslsmith_f_op_f32(-arg_0.c.e)), _wgslsmith_add_vec3_i32(arg_0.b, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.b ^ arg_0.b, _wgslsmith_add_vec3_i32(arg_0.b, vec3<i32>(-16189i, arg_0.c.c, -1i))), -2147483647i, u_input.b)), func_2().c.c, global2[_wgslsmith_index_u32(~u_input.a, 31u)]);
    var var_3 = func_2();
    return ~_wgslsmith_mult_i32(var_3.c.c, -max(var_2.b.x, arg_0.b.x));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, u_input.b), ~u_input.b) >> (vec2<u32>(1u, 6798u) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -20405i, select(abs(u_input.b), -80381i, true))), vec4<i32>(u_input.b, ~(-u_input.b), abs(-19346i), func_4(func_2(), _wgslsmith_f_op_vec2_f32(arg_1.xy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), -1i)), max(abs(~(vec3<u32>(0u, u_input.a, 67940u) & vec3<u32>(24194u, arg_0, 82393u))), abs(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 13522u, u_input.a), vec3<u32>(u_input.a, arg_0, 124172u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_0, arg_0), vec3<u32>(43138u, 21207u, u_input.a))))));
    global3 = u_input.b;
    return 13743u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, abs(~(u_input.a ^ u_input.a)), _wgslsmith_clamp_u32(69843u, func_1(13752u ^ u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(774f, 689f, 1000f))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(11727u, 1u, 1u), countOneBits(4294967295u))), abs(func_1(abs(4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(351f, -1000f, 1000f), global4[_wgslsmith_index_u32(u_input.a, 1u)])))), vec4<u32>(~firstLeadingBit(_wgslsmith_mult_u32(85325u, u_input.a)), (_wgslsmith_div_u32(4294967295u, 27130u) | _wgslsmith_add_u32(u_input.a, u_input.a)) << (~1u % 32u), 1u, ~func_1(abs(46215u), _wgslsmith_f_op_vec3_f32(min(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(0u, 1u)])))));
    global4 = array<vec3<f32>, 1>();
    var_0 = firstLeadingBit(~max(firstTrailingBit(vec4<u32>(1613u, var_0.x, u_input.a, var_0.x)), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(5766u, 1575u), vec2<u32>(var_0.x, u_input.a)), 6891u, ~u_input.a)));
    var_0 = ~vec4<u32>(4294967295u, max(~53704u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), var_0.wy) % 32u), var_0.x), _wgslsmith_mod_u32((var_0.x & var_0.x) << (0u % 32u), 41172u), _wgslsmith_dot_vec3_u32(var_0.www, var_0.wxw) | _wgslsmith_dot_vec2_u32(~var_0.wz, var_0.xw));
    let var_1 = -1826f;
    let var_2 = select(!select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), true), vec2<bool>(true, true), true);
    global0 = array<vec2<u32>, 2>();
    let var_3 = global2[_wgslsmith_index_u32(u_input.a, 31u)];
    global0 = array<vec2<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3.e)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(275f, -1018f, true)) - 1346f), 1f)), _wgslsmith_clamp_vec3_u32(~(_wgslsmith_div_vec3_u32(var_0.xyy, var_0.wzy) | ~vec3<u32>(var_0.x, 17999u, 0u)), ~min(vec3<u32>(1u, 1u, 184u), ~vec3<u32>(var_3.d.x, var_3.d.x, 18868u)), vec3<u32>(~_wgslsmith_add_u32(var_0.x, u_input.a), ~1u, ~u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(var_1 * -861f), 1344f, 419f));
}

