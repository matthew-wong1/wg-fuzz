struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<bool>, 19>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 48576u), vec2<u32>(4294967295u, 63574u), vec2<u32>(1u, 63124u), vec2<u32>(40018u, 72162u), vec2<u32>(3409u, 87733u), vec2<u32>(4294967295u, 1u), vec2<u32>(48006u, 19913u), vec2<u32>(4294967295u, 1u), vec2<u32>(79841u, 13792u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 5124u), vec2<u32>(118u, 4294967295u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = arg_1.b.e;
    global1 = array<vec4<bool>, 19>();
    global3 = array<vec2<u32>, 13>();
    let var_1 = !global0.x;
    global3 = array<vec2<u32>, 13>();
    return _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_1.b.e, u_input.e.x) | vec3<u32>(arg_1.b.e, 4294967295u, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(69334u, arg_1.b.e, arg_1.b.e), vec3<u32>(arg_1.b.e, arg_1.b.e, 4294967295u)))), abs(abs(vec3<u32>(9202u, 4294967295u, u_input.e.x))) | vec3<u32>(arg_1.b.e, 88412u, _wgslsmith_dot_vec3_u32(vec3<u32>(18644u, arg_1.b.e, u_input.c), vec3<u32>(arg_1.b.e, u_input.c, 1u)))) | vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.e, ~u_input.e)), u_input.c, 0u);
}

fn func_3() -> vec3<u32> {
    global2 = !select(select(vec2<bool>(false, any(vec3<bool>(global0.x, global2.x, global0.x))), !(!vec2<bool>(global2.x, false)), true), select(!vec2<bool>(global2.x, global2.x), !(!vec2<bool>(false, global2.x)), vec2<bool>(false, global2.x)), vec2<bool>(!(u_input.a.x == -2147483647i), true || global2.x));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(-684f)), 1915f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-332f, 1358f, _wgslsmith_f_op_f32(f32(-1f) * -506f), -1306f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3350f, 967f, 379f, 496f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(994f, 138f, 172f, 837f) - vec4<f32>(-372f, -999f, -103f, -1582f)), !global2.x)), vec4<f32>(_wgslsmith_f_op_f32(-851f + 973f), _wgslsmith_f_op_f32(-1000f + -1802f), -523f, _wgslsmith_f_op_f32(f32(-1f) * -338f))), select(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(4294967295u, 67000u)), 19u)], global1[_wgslsmith_index_u32(~u_input.c, 19u)], vec4<bool>(true, true, any(vec2<bool>(global2.x, true)), false)))), false, 1u);
    global0 = !vec2<bool>(!select(select(var_0.d, var_0.d, global2.x), !global2.x, var_0.d || true), var_0.d);
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-724f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1570f), var_0.b)), -776f, _wgslsmith_f_op_f32(abs(var_0.c.x))), Struct_1(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.c.x)), var_0.c.x))), vec4<f32>(-486f, _wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a)))), all(!select(vec4<bool>(global2.x, false, true, global0.x), vec4<bool>(true, true, global0.x, true), var_0.d)), var_0.e), Struct_4(global1[_wgslsmith_index_u32(func_2(var_0.b, Struct_5(var_0.c.xxw, Struct_1(583f, var_0.b, vec4<f32>(854f, 865f, -318f, 751f), true, 24461u), Struct_4(vec4<bool>(true, true, true, global2.x), Struct_3(var_0.c, true), Struct_2(vec4<f32>(var_0.a, 2073f, var_0.a, 1141f), u_input.a.x)), Struct_3(vec4<f32>(var_0.c.x, var_0.b, 584f, 378f), var_0.d))).x, 19u)], Struct_3(var_0.c, any(vec4<bool>(global0.x, var_0.d, false, global0.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.c))), i32(-1i) * -11211i)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(655f)) - var_0.c.x), 1699f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1824f, var_0.c.x)), _wgslsmith_f_op_f32(max(1039f, _wgslsmith_f_op_f32(154f - var_0.a)))), true));
    global2 = vec2<bool>(true, true | !var_1.c.b.b);
    return select(vec3<u32>(1u, 4294967295u, u_input.e.x), abs(~abs(vec3<u32>(4294967295u, var_0.e, 4294967295u) ^ vec3<u32>(6010u, 8628u, 10613u))), false);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) - arg_1);
    var var_1 = -u_input.b ^ 2147483647i;
    let var_2 = vec2<bool>(true, !global0.x);
    let var_3 = 4294967295u;
    var var_4 = var_3;
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = vec4<bool>(_wgslsmith_add_u32(u_input.c, 4294967295u) >= u_input.e.x, false, all(global1[_wgslsmith_index_u32(u_input.e.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-144f, arg_1)), _wgslsmith_f_op_f32(arg_2 - -700f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))) + 873f));
    let var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(vec3<u32>(19049u, 0u, u_input.c))) << (~func_2(-1000f, Struct_5(vec3<f32>(arg_2, arg_2, 1368f), Struct_1(-874f, arg_1, vec4<f32>(1116f, arg_2, arg_1, arg_1), global2.x, u_input.c), Struct_4(var_0, Struct_3(vec4<f32>(arg_2, arg_1, arg_1, -1437f), global2.x), Struct_2(vec4<f32>(184f, 1292f, arg_1, -586f), u_input.a.x)), Struct_3(vec4<f32>(arg_2, 2059f, 619f, 1046f), false))) % vec3<u32>(32u)), select(func_3(), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x)), true) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, 1u) & vec3<u32>(u_input.e.x, u_input.e.x, u_input.c))), 1854f, u_input.a.x));
    global3 = array<vec2<u32>, 13>();
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-570f, 117f, -245f), vec3<f32>(var_1, 151f, 519f)))))), Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1252f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, -719f, -1810f, -188f)) - vec4<f32>(arg_1, 122f, var_1, arg_1))), false, ~_wgslsmith_mod_u32(~48668u, u_input.e.x)), Struct_4(vec4<bool>(var_0.x, any(select(var_0.wy, vec2<bool>(false, false), global2.x)), arg_0.x, true), Struct_3(vec4<f32>(-1207f, _wgslsmith_f_op_f32(-var_1), -531f, 297f), u_input.a.x >= u_input.b), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, var_1, arg_2, 176f)))), 1i)), Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, -670f, 824f, -904f) - vec4<f32>(324f, var_1, -1000f, -242f)))), select(u_input.e.x == min(20140u, 62772u), !(u_input.e.x < u_input.c), all(!vec4<bool>(var_0.x, true, global0.x, true)))));
    let var_3 = false;
    return var_2.c.c;
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    var var_0 = abs(vec2<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.c), u_input.e.x ^ u_input.c)) ^ firstTrailingBit(~vec2<u32>(1u, 4294967295u)));
    var var_1 = -260i;
    global1 = array<vec4<bool>, 19>();
    return Struct_5(arg_0.a.yzx, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.x, -181f), _wgslsmith_div_f32(671f, arg_0.a.x), global2.x & global0.x)) - -608f), arg_0.a, global0.x, ~firstLeadingBit(_wgslsmith_add_u32(1u, 2032u))), Struct_4(vec4<bool>(!all(vec2<bool>(global2.x, true)), all(vec2<bool>(global2.x, false)), true, any(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(false, global2.x, global2.x)))), Struct_3(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(-arg_0.a)), _wgslsmith_clamp_i32(arg_0.b, -1i, -40316i) >= _wgslsmith_add_i32(0i, u_input.b)), arg_0), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), -401f, _wgslsmith_div_f32(arg_0.a.x, 182f)), !any(vec3<bool>(true, true, true))));
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    let var_0 = 0u >> (1u % 32u);
    global1 = array<vec4<bool>, 19>();
    let var_1 = Struct_1(arg_0.c.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_1(vec3<bool>(global0.x, global2.x, arg_0.b.d), 1271f, _wgslsmith_f_op_f32(func_4(var_0, arg_0.d.a.x, 19345i))).a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.a.x, _wgslsmith_f_op_f32(-arg_0.d.a.x))), _wgslsmith_f_op_f32(func_4(43844u, 1797f, 54588i)), _wgslsmith_f_op_f32(-func_1(vec3<bool>(global0.x, false, false), _wgslsmith_f_op_f32(arg_0.d.a.x + 2263f), -2076f).a.x), arg_0.d.a.x), !global2.x, 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(875f)))), _wgslsmith_div_f32(-1172f, 328f)));
    global1 = array<vec4<bool>, 19>();
    return func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, -838f, var_1.a, -562f)))), ~12321i)).b;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.c;
    let var_1 = arg_1.x;
    var var_2 = true;
    let var_3 = vec4<u32>(func_3().x & var_0, 43242u, var_0, ~countOneBits(_wgslsmith_sub_u32(u_input.c, 0u)) << (~func_2(-1029f, func_5(Struct_2(vec4<f32>(613f, arg_0.b, arg_0.b, 1128f), arg_2.x))).x % 32u));
    let var_4 = !vec2<bool>(true, arg_0.d);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(exp2(arg_0.b))) * -750f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1845f * arg_0.b))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(368f - arg_3.a.x), arg_3.a.x))), _wgslsmith_div_f32(-1305f, 1415f), arg_0.b, _wgslsmith_f_op_f32(523f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)))), !any(select(vec2<bool>(arg_3.b, false), select(var_4, vec2<bool>(false, false), global0.x), select(vec2<bool>(false, false), var_4, vec2<bool>(arg_3.b, false)))), ~u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(~max(4294967295u, max(u_input.c, u_input.e.x)));
    var var_1 = func_7(func_6(func_5(func_1(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x), true), _wgslsmith_f_op_f32(832f * 1389f), _wgslsmith_f_op_f32(2397f + -1514f)))), select(max(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ u_input.a, -u_input.a), vec3<i32>(-1i) * -vec3<i32>(u_input.d, u_input.d, u_input.a.x), false) | _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(15442i, u_input.d, u_input.b))), reverseBits(u_input.a.xx), func_5(func_1(select(!vec3<bool>(global2.x, global2.x, global0.x), vec3<bool>(true, global2.x, true), global0.x), _wgslsmith_f_op_f32(select(-3524f, _wgslsmith_div_f32(268f, -1721f), !global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-381f)))))).c.b);
    let var_2 = vec2<bool>((true || global0.x) || true, any(!select(!vec3<bool>(false, global0.x, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, false, var_1.d)), select(vec3<bool>(global2.x, false, var_1.d), vec3<bool>(global2.x, false, false), vec3<bool>(false, false, global0.x)))));
    let var_3 = 0u;
    var var_4 = func_5(func_1(vec3<bool>(min(var_0, 4294967295u) <= func_2(var_1.b, Struct_5(var_1.c.yzw, Struct_1(729f, var_1.b, vec4<f32>(var_1.b, -513f, 1425f, 422f), global0.x, var_0), Struct_4(global1[_wgslsmith_index_u32(var_3, 19u)], Struct_3(vec4<f32>(var_1.b, var_1.b, var_1.a, -216f), global2.x), Struct_2(vec4<f32>(-1011f, var_1.a, var_1.b, 518f), -1i)), Struct_3(var_1.c, true))).x, true, !(!global2.x)), -2300f, -1444f)).b;
    let var_5 = 625f;
    var var_6 = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, -255f, var_4.b, var_5)) - var_4.c), vec4<f32>(var_5, var_5, var_5, var_4.a), !(!vec4<bool>(global0.x, global2.x, false, true)))), -u_input.b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_6.c.x + var_6.a))), -529f, -31858i, -280f);
}

