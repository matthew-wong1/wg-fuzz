struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(25135u, vec3<bool>(false, true, false), 0i, vec3<bool>(true, true, false), vec3<f32>(101f, 171f, 143f)), Struct_5(102296u, vec3<bool>(false, true, true), 0i, vec3<bool>(true, true, false), vec3<f32>(-107f, 1000f, -823f)), Struct_5(0u, vec3<bool>(true, true, true), -35199i, vec3<bool>(false, true, false), vec3<f32>(-349f, 436f, 952f)), Struct_5(10526u, vec3<bool>(true, true, true), 8452i, vec3<bool>(true, true, false), vec3<f32>(-489f, -1088f, 1140f)), Struct_5(0u, vec3<bool>(true, false, false), 0i, vec3<bool>(false, true, true), vec3<f32>(837f, -757f, -1000f)), Struct_5(0u, vec3<bool>(true, true, false), -8000i, vec3<bool>(true, false, true), vec3<f32>(1487f, 171f, 1173f)), Struct_5(4294967295u, vec3<bool>(false, false, false), i32(-2147483648), vec3<bool>(false, true, false), vec3<f32>(-241f, -217f, 941f)), Struct_5(29106u, vec3<bool>(false, true, false), 0i, vec3<bool>(false, true, true), vec3<f32>(436f, 470f, -290f)), Struct_5(28036u, vec3<bool>(true, false, false), 2147483647i, vec3<bool>(true, true, false), vec3<f32>(-355f, 816f, 2406f)), Struct_5(55103u, vec3<bool>(false, true, false), 20743i, vec3<bool>(false, false, true), vec3<f32>(1102f, 236f, -193f)), Struct_5(29009u, vec3<bool>(true, true, false), -1i, vec3<bool>(true, true, true), vec3<f32>(-1415f, -761f, 255f)), Struct_5(68526u, vec3<bool>(false, true, true), 62261i, vec3<bool>(true, false, true), vec3<f32>(1852f, 546f, -1061f)), Struct_5(32979u, vec3<bool>(false, true, false), 48959i, vec3<bool>(false, true, false), vec3<f32>(-464f, -483f, 1001f)), Struct_5(50321u, vec3<bool>(true, false, false), -8016i, vec3<bool>(true, false, false), vec3<f32>(-766f, -1613f, -1005f)), Struct_5(39954u, vec3<bool>(false, false, true), -1i, vec3<bool>(false, false, true), vec3<f32>(-787f, 248f, 676f)), Struct_5(15307u, vec3<bool>(true, false, true), -1i, vec3<bool>(true, false, true), vec3<f32>(-110f, -810f, -216f)), Struct_5(43958u, vec3<bool>(true, false, true), -8277i, vec3<bool>(true, true, true), vec3<f32>(982f, -300f, -544f)), Struct_5(24282u, vec3<bool>(false, false, true), 0i, vec3<bool>(true, true, false), vec3<f32>(792f, -393f, -1126f)), Struct_5(26679u, vec3<bool>(false, false, true), 19196i, vec3<bool>(true, false, true), vec3<f32>(-1000f, 477f, -781f)), Struct_5(4294967295u, vec3<bool>(false, true, true), i32(-2147483648), vec3<bool>(false, true, true), vec3<f32>(-1107f, -673f, -532f)), Struct_5(0u, vec3<bool>(true, false, true), -44030i, vec3<bool>(false, false, true), vec3<f32>(699f, -1420f, -725f)), Struct_5(29755u, vec3<bool>(false, false, false), -9718i, vec3<bool>(false, false, true), vec3<f32>(1542f, 960f, 211f)), Struct_5(1u, vec3<bool>(true, false, true), 7853i, vec3<bool>(true, false, false), vec3<f32>(-279f, 1000f, -421f)), Struct_5(2221u, vec3<bool>(true, false, false), -1i, vec3<bool>(false, true, false), vec3<f32>(677f, -183f, 1000f)), Struct_5(0u, vec3<bool>(false, false, true), 2147483647i, vec3<bool>(false, true, true), vec3<f32>(-1431f, 1000f, -1801f)), Struct_5(49523u, vec3<bool>(true, true, false), 1i, vec3<bool>(true, false, false), vec3<f32>(223f, 1403f, -1278f)), Struct_5(4294967295u, vec3<bool>(false, true, true), 39963i, vec3<bool>(true, true, true), vec3<f32>(1109f, 1000f, 1604f)), Struct_5(1u, vec3<bool>(true, false, false), 0i, vec3<bool>(false, false, false), vec3<f32>(-625f, 2263f, 794f)));

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: vec2<u32> = vec2<u32>(24973u, 93921u);

var<private> global3: f32;

var<private> global4: array<u32, 25> = array<u32, 25>(4897u, 4294967295u, 52216u, 4294967295u, 1u, 2936u, 36620u, 85744u, 0u, 27299u, 0u, 1u, 56316u, 129815u, 4294967295u, 29282u, 32664u, 4294967295u, 62625u, 4294967295u, 25389u, 0u, 4294967295u, 0u, 53186u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<i32> {
    global1 = array<vec4<bool>, 30>();
    var var_0 = max(vec2<i32>(1i, 1i), select(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(60010i, 5218i), vec2<i32>(0i, 68647i))), vec2<i32>(1i, ~2147483647i), arg_1.a) ^ max(firstLeadingBit(~vec2<i32>(0i, -8778i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(7928i, 3761i), vec2<i32>(-21136i, -2506i), vec2<i32>(-1i, -17819i))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1837f)), arg_0.x))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))) - arg_0.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f + var_1.x) * _wgslsmith_f_op_f32(-arg_0.x))), -975f));
    global1 = array<vec4<bool>, 30>();
    return countOneBits(~(vec3<i32>(-1i) * -(vec3<i32>(1i, -2147483647i, var_0.x) & vec3<i32>(-1i, var_0.x, var_0.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    global1 = array<vec4<bool>, 30>();
    global4 = array<u32, 25>();
    let var_0 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(~3798u, 25u)], ~(~global2.x), min(arg_1.b.x << (0u % 32u), countOneBits(1u)), ~countOneBits(19701u)), u_input.a), select(!(!vec3<bool>(arg_2.a, true, arg_1.a.e)), vec3<bool>(any(vec2<bool>(false, true)) || (arg_2.a & arg_2.a), !(-577f == arg_1.a.c.x), _wgslsmith_div_i32(arg_0, -1i) <= arg_0), vec3<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(false, true)))), arg_0, select(select(!(!vec3<bool>(false, arg_1.a.e, false)), !select(vec3<bool>(arg_2.a, arg_1.a.e, true), vec3<bool>(true, arg_1.a.e, true), vec3<bool>(arg_2.a, false, true)), false), !select(vec3<bool>(false, true, false), select(vec3<bool>(arg_1.a.e, true, arg_2.a), vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(false, false, false)), true), arg_1.a.e), vec3<f32>(arg_1.a.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.c.x), -589f)))), -889f));
    global2 = vec2<u32>(~(_wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(1u, 25u)], firstTrailingBit(0u)) ^ global4[_wgslsmith_index_u32(~arg_2.b & 48011u, 25u)]), _wgslsmith_sub_u32(abs(var_0.a), 1u));
    var var_1 = arg_2;
    return -899f;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_5, 28>();
    global4 = array<u32, 25>();
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(2147483647i, Struct_4(Struct_3(_wgslsmith_div_f32(-1706f, -1234f), func_3(vec3<f32>(-133f, 1000f, 1000f), Struct_2(true, global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<f32>(698f, -600f)), vec2<f32>(408f, 680f), 23160i, false), ~vec3<u32>(u_input.b, 0u, 27915u)), Struct_2(76235u == ~global2.x, ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(step(-878f, 964f))) - 100f)));
    var var_0 = select((~u_input.a.xwz >> (max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(12050u, global2.x, global2.x)), vec3<u32>(u_input.c.x, 0u, global2.x)) % vec3<u32>(32u))) >> (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.b, _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(u_input.a.x, 25u)], 3012u)), select(u_input.a.xwz, u_input.c, false)), true);
    let var_1 = countOneBits(0u);
    return Struct_3(-467f, vec3<i32>(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 48362i, -15359i), vec4<i32>(-1i, -2147483647i, -45806i, -12412i))), 0i, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1411f, 751f, 1000f) * vec3<f32>(454f, -977f, 948f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 574f, 1000f), vec3<f32>(-1007f, 1339f, 2176f))), Struct_2(true, ~u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(550f, 773f) + vec2<f32>(-209f, -474f)))).x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_i32(4399i, 1060i), Struct_4(Struct_3(868f, vec3<i32>(5006i, 23282i, 27571i), vec2<f32>(-1701f, 701f), -1i, false), u_input.a.www), Struct_2(false, 7493u)))), _wgslsmith_f_op_f32(-437f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-967f)), _wgslsmith_f_op_f32(step(613f, 1314f))))), ~_wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_add_i32(1i, 1i)), !(((global2.x > global2.x) && true) & !all(vec3<bool>(true, true, true))));
}

fn func_1() -> Struct_3 {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(abs(firstTrailingBit(14937i)), ~(~0i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(29159i, -43822i, -35233i), -38463i), 1i), ~vec4<i32>(~(-16778i), i32(-1i) * -2147483647i, select(20032i, -1394i, true), _wgslsmith_sub_i32(2219i, -12370i))));
    global0 = array<Struct_5, 28>();
    let var_1 = firstLeadingBit(~2147483647i);
    var var_2 = Struct_4(func_2(), ~u_input.a.wxx);
    var var_3 = Struct_2(true, ~(~_wgslsmith_mult_u32(77935u, u_input.a.x)));
    return Struct_3(_wgslsmith_f_op_f32(func_4(1i, Struct_4(var_2.a, ~min(var_2.b, u_input.a.www)), Struct_2(var_3.a, ~var_2.b.x >> (var_3.b % 32u)))), -(~func_2().b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.c)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.c.x, 1886f), _wgslsmith_f_op_vec2_f32(select(var_2.a.c, vec2<f32>(var_2.a.a, var_2.a.c.x), vec2<bool>(true, var_3.a)))))), var_1 << (95017u % 32u), any(!vec3<bool>(func_2().e, !var_2.a.e, any(vec2<bool>(false, false)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_2 {
    global1 = array<vec4<bool>, 30>();
    let var_0 = Struct_1(max(arg_0.b, func_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c.x, -1308f, arg_0.a))), Struct_2(arg_2.x, 1u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -866f))));
    global1 = array<vec4<bool>, 30>();
    return Struct_2(arg_2.x, 93529u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = reverseBits(abs(-1i));
    let var_2 = func_5(func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-660f, 321f, _wgslsmith_f_op_f32(round(2196f)), -1257f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(409f, 1214f, -562f, 597f), vec4<f32>(1686f, -719f, 690f, -1000f))) + vec4<f32>(-248f, -275f, -164f, -1470f)))), !(!vec3<bool>(true, var_0, any(vec4<bool>(var_0, true, true, var_0)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(153f - 329f) - _wgslsmith_f_op_f32(-240f - 535f)) - _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(sign(-275f)))) + _wgslsmith_f_op_f32(ceil(func_2().a))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(688f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f - 2722f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) * _wgslsmith_div_f32(var_3, 1250f)), true)) + _wgslsmith_f_op_f32(func_4(var_1, Struct_4(Struct_3(-1393f, vec3<i32>(2290i, var_1, var_1), vec2<f32>(var_3, var_3), -39950i, var_2.a), u_input.c), Struct_2(true, 1u >> (1u % 32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_i32(23853i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1, var_1), vec3<i32>(1i, 21219i, var_1))), Struct_4(func_1(), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, global2.x, 1u), vec3<u32>(0u, 4294967295u, global2.x))), func_5(Struct_3(649f, vec3<i32>(var_1, -1i, -2147483647i), vec2<f32>(var_3, 204f), -22459i, var_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, var_3)), select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_2.a, var_0), vec3<bool>(false, true, var_0)))))), ~0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-var_3))));
}

