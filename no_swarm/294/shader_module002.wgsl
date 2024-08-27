struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(4294967295u), vec2<i32>(1i, 13931i)), Struct_2(Struct_1(0u), vec2<i32>(2147483647i, 30055i)), Struct_2(Struct_1(4294967295u), vec2<i32>(14577i, 1i)), Struct_2(Struct_1(4294967295u), vec2<i32>(2147483647i, 0i)), Struct_2(Struct_1(67960u), vec2<i32>(1i, 0i)), Struct_2(Struct_1(26980u), vec2<i32>(-21853i, -1i)), Struct_2(Struct_1(1u), vec2<i32>(-44980i, i32(-2147483648))), Struct_2(Struct_1(17275u), vec2<i32>(1i, 8509i)), Struct_2(Struct_1(75168u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(Struct_1(63424u), vec2<i32>(-21272i, -44487i)), Struct_2(Struct_1(4294967295u), vec2<i32>(0i, 1i)), Struct_2(Struct_1(19147u), vec2<i32>(9469i, i32(-2147483648))), Struct_2(Struct_1(4294967295u), vec2<i32>(0i, -45106i)), Struct_2(Struct_1(0u), vec2<i32>(55207i, 0i)), Struct_2(Struct_1(1u), vec2<i32>(i32(-2147483648), 0i)), Struct_2(Struct_1(27641u), vec2<i32>(-21984i, -16719i)), Struct_2(Struct_1(4294967295u), vec2<i32>(i32(-2147483648), 459i)), Struct_2(Struct_1(33100u), vec2<i32>(-1001i, -1i)), Struct_2(Struct_1(4294967295u), vec2<i32>(i32(-2147483648), -23102i)), Struct_2(Struct_1(4294967295u), vec2<i32>(2147483647i, 0i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~arg_0.a);
    var var_1 = arg_0;
    let var_2 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(1i, -1i, 16451i, 11996i)), vec4<i32>(-2147483647i, 0i, 26370i, 16465i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_div_i32(0i, -16708i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(-2147483647i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2438i, -11234i), vec2<i32>(1i, -1i)) << (1u % 32u)), firstLeadingBit(~vec2<i32>(1i, 1i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-141f, -146f, 1854f, 871f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 1000f, 931f, -732f) - vec4<f32>(128f, -396f, 1534f, -765f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, 255f, 781f, 345f)), any(vec4<bool>(false, false, false, false)))))))));
    var_0 = Struct_1(~arg_0.a);
    return ~(_wgslsmith_sub_u32(~firstLeadingBit(1u), u_input.c.x) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(19395u, 0u), u_input.c.xz, vec2<u32>(70038u, var_0.a)), u_input.c.xy), ~arg_0.a | var_0.a) % 32u));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 27659i, ~(-(~arg_1.b.x))), vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 2147483647i), vec4<i32>(arg_1.b.x, 2147483647i, 0i, -8119i)), _wgslsmith_mod_i32(countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, -49606i), vec2<i32>(-19913i, 30176i)))), _wgslsmith_mod_i32(5458i, min(arg_1.b.x, arg_1.b.x ^ 39888i)), -abs(_wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x)), abs(~arg_1.b.x)));
    var var_1 = _wgslsmith_div_u32(~0u, arg_1.a.a);
    var var_2 = Struct_1(reverseBits(firstTrailingBit(u_input.a)));
    var_0 = arg_1.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(325f, arg_0))), -754f), _wgslsmith_f_op_f32(1952f - 1420f), _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -953f)) * _wgslsmith_f_op_f32(trunc(arg_0)))), 786f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 1284f, 675f), vec4<f32>(-756f, arg_0, -763f, arg_0)) * vec4<f32>(-1000f, arg_0, 2277f, 666f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, arg_0, -996f, arg_0))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, -1398f, arg_0, arg_0)))))));
    return ~_wgslsmith_add_vec3_u32(u_input.c, ~(vec3<u32>(37572u, var_2.a, 0u) | vec3<u32>(var_2.a, arg_1.a.a, var_2.a)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(min(~4294967295u, u_input.a));
    global0 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_dot_vec4_u32(arg_1, arg_1);
    return func_4(_wgslsmith_f_op_f32(f32(-1f) * -740f), Struct_2(Struct_1(func_3(Struct_1(var_0.a)) >> (var_1 % 32u)), vec2<i32>(~reverseBits(25181i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-15004i, -42266i, -2147483647i)), max(vec3<i32>(1i, 2147483647i, 2276i), vec3<i32>(-30119i, 1i, -25003i))))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(32199u, 2987u), firstLeadingBit(vec2<u32>(arg_2.a, 16048u))))), 20u)];
    global0 = array<Struct_2, 20>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~func_2(arg_0, vec4<u32>(17611u, 4294967295u, 17032u, var_0.a.a)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), u_input.c))), vec2<i32>(var_0.b.x, -2147483647i));
    var var_2 = vec4<i32>(0i, 1i, abs(abs(var_1.b.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, var_1.b.x), ~(-_wgslsmith_add_i32(28975i, 1i))));
    var_0 = Struct_2(arg_2, vec2<i32>(-1i) * -(select(vec2<i32>(var_0.b.x, -47134i), var_2.yy, vec2<bool>(true, false)) | vec2<i32>(var_1.b.x, var_1.b.x)));
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-557f + _wgslsmith_f_op_f32(f32(-1f) * -906f)))), arg_1).x);
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-930f, _wgslsmith_f_op_f32(f32(-1f) * -1514f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1449f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(724f, -373f)))))), arg_1.a).a;
    var var_1 = 12049u;
    var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f * _wgslsmith_f_op_f32(f32(-1f) * -1321f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1505f, -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-989f * -281f), 1025f)), true)), _wgslsmith_f_op_f32(-896f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f), 1f)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-888f, _wgslsmith_f_op_f32(-101f - -506f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-799f * -622f), -1245f), func_1(1369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * -1264f) - 532f), Struct_1(_wgslsmith_div_u32(1u, 1u))).a).a).a;
    return Struct_1(firstTrailingBit(1u));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    let var_0 = select(select(vec4<bool>(!any(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(true, true, false, !(arg_3.b.x <= arg_3.b.x)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), !select(vec4<bool>(true, true, any(vec2<bool>(true, false)), 4334u == u_input.c.x), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), !(!vec4<bool>(true, true, false, select(true, true, false))));
    var var_1 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1361f, _wgslsmith_div_f32(295f, 235f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(636f)))))), -224f, Struct_1(max(func_1(2125f, _wgslsmith_f_op_f32(abs(1396f)), arg_2).a.a, _wgslsmith_mod_u32(max(arg_2.a, arg_3.a.a), arg_3.a.a))));
    var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1234f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-245f, -999f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -258f), arg_3.b.x < arg_3.b.x))) * _wgslsmith_f_op_f32(select(1640f, 567f, false))), -319f, var_1.a);
    let var_2 = Struct_1(min(29206u, ~arg_0.x));
    return func_1(_wgslsmith_f_op_f32(f32(-1f) * -1057f), 1f, Struct_1(~_wgslsmith_mult_u32(1u, 1176u & u_input.a))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<Struct_2, 20>();
    var var_1 = func_6(vec4<u32>(~u_input.a, ~u_input.a, ~u_input.c.x, 0u), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.b) >> (~63817u % 32u), _wgslsmith_clamp_u32(u_input.b | u_input.b, ~4294967295u, min(u_input.b, u_input.c.x))), func_5(u_input.c.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 640f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1352f)) + _wgslsmith_f_op_f32(round(179f))), Struct_1(~u_input.b))), Struct_2(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1397f, -1561f))), -1228f, Struct_1(u_input.c.x)).a, vec2<i32>(-1i, -20409i)));
    var_1 = func_6(~vec4<u32>(var_1.a, u_input.b, func_1(-1489f, -1573f, func_5(var_1.a, Struct_2(Struct_1(var_1.a), vec2<i32>(-91119i, 1i)))).a.a, _wgslsmith_sub_u32(~11381u, 0u)), u_input.a, Struct_1(4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(8958u, 1u), 20u)]);
    var var_2 = Struct_2(Struct_1(~(~4294967295u)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, select(37156i, -1885i, var_0)), vec2<i32>(1i, 1i)), vec2<i32>(-1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1627f)), 723f, -248f, _wgslsmith_f_op_f32(-1229f * -497f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(386f, -1166f, 1874f, -178f), vec4<f32>(-1261f, 1029f, 192f, 247f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(331f, -131f, -386f, -1139f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1017f, 687f, 143f), vec4<f32>(-468f, -300f, 144f, -876f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, -103f, 957f, 379f) * vec4<f32>(-306f, 768f, 198f, -1093f)), true))))), ~abs(~(~vec4<u32>(u_input.b, var_1.a, 36475u, 29429u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), vec2<f32>(-1000f, -983f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-978f, -1444f), vec2<f32>(-125f, 1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(523f, 1147f)))))))), 29694u);
}

