struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: Struct_5 = Struct_5(vec4<u32>(81819u, 62368u, 27719u, 70637u), Struct_3(Struct_2(-1590f, vec4<i32>(-40364i, 1i, 1i, 0i)), vec3<u32>(1u, 4294967295u, 11918u), Struct_1(-194f, false, vec2<f32>(171f, 286f), false), Struct_1(-1773f, false, vec2<f32>(1821f, -662f), false), vec2<bool>(true, true)), false, Struct_4(Struct_3(Struct_2(608f, vec4<i32>(56000i, 11910i, 26088i, 4090i)), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(-1000f, true, vec2<f32>(1784f, -1526f), true), Struct_1(-516f, true, vec2<f32>(1374f, 1000f), false), vec2<bool>(true, false)), Struct_2(-1078f, vec4<i32>(16768i, i32(-2147483648), 8290i, 21857i))));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-131f, false, vec2<f32>(-644f, 1483f), true), Struct_1(-1267f, false, vec2<f32>(-201f, 718f), false), Struct_1(503f, false, vec2<f32>(490f, -445f), false), Struct_1(-314f, true, vec2<f32>(-118f, 1181f), true), Struct_1(1393f, false, vec2<f32>(1222f, -1641f), false), Struct_1(-218f, false, vec2<f32>(-657f, -581f), true), Struct_1(223f, false, vec2<f32>(283f, -134f), false), Struct_1(1061f, false, vec2<f32>(-156f, 1000f), true), Struct_1(-2022f, true, vec2<f32>(1905f, -1198f), true), Struct_1(-704f, true, vec2<f32>(1359f, -1707f), false), Struct_1(-1000f, true, vec2<f32>(-1098f, 1000f), true), Struct_1(-1485f, true, vec2<f32>(-1457f, 1000f), false));

var<private> global3: vec4<f32> = vec4<f32>(235f, 264f, 542f, -1076f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.d.a.a.a)), _wgslsmith_f_op_f32(ceil(2533f))))))), vec4<i32>(countOneBits(-1i), 23648i, ~u_input.a, max(_wgslsmith_mult_i32(-9995i ^ global1.b.a.b.x, -11436i), global1.b.a.b.x)));
    var var_2 = Struct_1(-561f, true, vec2<f32>(_wgslsmith_div_f32(global1.d.a.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), -2398f), any(select(arg_0.zzx, !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, global1.b.d.b, global1.c), global1.b.c.b), arg_0.xxz)));
    global2 = array<Struct_1, 12>();
    global1 = Struct_5(_wgslsmith_clamp_vec4_u32(global1.a, global1.a, _wgslsmith_mod_vec4_u32(global1.a, select(global1.a, global1.a, select(vec4<bool>(true, true, false, true), arg_0, arg_0)))), global1.d.a, true, global1.d);
    return reverseBits(~_wgslsmith_mod_u32(global1.b.b.x, abs(global1.d.a.b.x)) | u_input.b.x);
}

fn func_4(arg_0: u32) -> vec4<u32> {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 1186f, global3.x, global1.d.b.a) - vec4<f32>(global1.d.a.d.c.x, 209f, 771f, -1157f))))));
    let var_0 = -958f;
    var var_1 = global1.b;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.a, var_1.c.c.x, var_1.a.a, global3.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(576f, -630f, -1476f, -167f)))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-446f, -1097f), _wgslsmith_f_op_f32(min(global3.x, 213f)), _wgslsmith_f_op_f32(trunc(var_1.d.a)), -451f) + vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * var_1.d.c.x), -902f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) + _wgslsmith_f_op_f32(var_1.c.a + global3.x)), _wgslsmith_f_op_f32(-var_0))));
    let var_2 = var_1.a;
    return select(~global1.a, ~min(firstTrailingBit(abs(global1.a)), ~vec4<u32>(arg_0, 44906u, 51367u, 4294967295u)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) - _wgslsmith_f_op_f32(trunc(var_0))) != global3.x, (4294967295u | var_1.b.x) >= 58605u, select(true, global1.c, all(vec3<bool>(true, var_1.c.b, global1.c))) | true, ~var_2.b.x < abs(var_1.a.b.x & 1i)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_5(~func_4(func_3(vec4<bool>(true, global1.c, true, global1.c))) << (~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(89486u, 53126u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, global1.d.a.b.x, 110702u), vec4<u32>(0u, 4294967295u, 4294967295u, 39699u)) % vec4<u32>(32u)), Struct_3(global1.b.a, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(global1.d.a.b.x, 52384u, global1.a.x)), ~global1.b.b), global2[_wgslsmith_index_u32(max(global1.a.x, max(17338u, 16927u)) << (4294967295u % 32u), 12u)], Struct_1(_wgslsmith_f_op_f32(-global3.x), false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 1660f) + global3.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global1.d.b.a)))), !any(vec2<bool>(false, global1.c))), vec2<bool>(select(true, true, false), !all(vec2<bool>(false, true)))), _wgslsmith_mod_i32(-20143i, _wgslsmith_mod_i32(~2147483647i, u_input.a)) < _wgslsmith_dot_vec2_i32(global1.b.a.b.wy, _wgslsmith_div_vec2_i32(~vec2<i32>(global1.b.a.b.x, u_input.a), vec2<i32>(u_input.a, -7289i))), global1.d);
    let var_1 = -901f;
    global0 = array<Struct_4, 6>();
    global2 = array<Struct_1, 12>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b.a, global1.b.a.a, global1.b.d.c.x, var_0.d.a.d.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.b.d.a, 1075f, -144f) + vec4<f32>(-1000f, var_0.b.a.a, global3.x, global1.d.a.d.a))), vec4<f32>(var_1, -1100f, var_1, _wgslsmith_f_op_f32(max(-582f, global1.b.a.a)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2033f, -1000f, var_0.d.b.a, var_0.d.a.d.a) + vec4<f32>(-1016f, -2043f, global1.b.c.c.x, -1455f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, var_0.b.d.a, var_0.b.d.c.x, -464f))))));
}

fn func_1() -> Struct_2 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    var var_0 = min(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, ~global1.b.a.b.x), abs(select(global1.b.a.b.xx, vec2<i32>(0i, 1i), global1.b.d.d))), global1.b.a.b.zy), _wgslsmith_div_vec2_i32(global1.b.a.b.yx, vec2<i32>(-1i) * -vec2<i32>(81513i, -1i)));
    global3 = vec4<f32>(global1.d.b.a, global3.x, _wgslsmith_f_op_f32(max(global3.x, global3.x)), -238f);
    let var_1 = Struct_4(global1.d.a, Struct_2(_wgslsmith_f_op_f32(-global1.b.c.c.x), vec4<i32>(~global1.b.a.b.x, 34608i, ~global1.d.a.a.b.x, ~global1.d.a.a.b.x)));
    let var_2 = select(select(vec2<bool>(all(var_1.a.e), var_1.a.e.x), select(select(select(vec2<bool>(true, var_1.a.c.d), vec2<bool>(false, false), global1.c), vec2<bool>(var_1.a.e.x, global1.d.a.e.x), any(vec4<bool>(global1.b.c.d, false, false, var_1.a.c.d))), vec2<bool>(true, select(true, false, false)), vec2<bool>(global1.d.a.e.x || false, false)), -810f < _wgslsmith_f_op_f32(-global1.d.b.a)), select(!(!(!vec2<bool>(global1.c, global1.c))), var_1.a.e, false), vec2<bool>(!global1.c | true, !(abs(global1.d.a.b.x) == 4294967295u)));
    return var_1.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = vec2<bool>(global1.b.d.b, true);
    var var_1 = -3224f;
    global0 = array<Struct_4, 6>();
    let var_2 = ~((vec2<i32>(1i, 14471i) | func_1().b.yx) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3422u, 32725u, 1u, 0u), vec4<u32>(global1.b.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 32792u) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.d.a.b.x, 4294967295u), u_input.b.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.a.a, -1046f, 354f, 1316f))), vec4<f32>(1000f, -1221f, arg_1.a, 1341f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1069f, -112f, global1.b.a.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c.a, global1.b.c.c.x, global3.x, -124f) - vec4<f32>(arg_1.a, global3.x, global1.d.a.c.c.x, global3.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1114f, arg_1.a, -1000f, global3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -203f, global1.b.a.a, 278f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a, arg_1.a, global1.d.a.c.c.x, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1793f, global3.x, 2337f, 726f) + vec4<f32>(global1.d.b.a, -122f, global1.d.b.a, -200f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(global3.x, -222f, 1000f, _wgslsmith_f_op_f32(sign(global1.b.a.a)));
    global3 = _wgslsmith_f_op_vec4_f32(func_5(global1.a, func_1()));
    var var_0 = vec3<i32>(abs(-43425i), firstLeadingBit(-(~_wgslsmith_clamp_i32(-11250i, global1.d.b.b.x, global1.d.a.a.b.x))), abs(func_1().b.x) >> (global1.a.x % 32u));
    var_0 = -global1.d.a.a.b.yzz;
    var var_1 = firstTrailingBit(vec3<i32>(u_input.a, _wgslsmith_sub_i32(2744i, -_wgslsmith_mod_i32(var_0.x, var_0.x)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.x, -26641i), vec2<i32>(u_input.a, global1.d.a.a.b.x), vec2<bool>(global1.b.d.b, global1.c)), global1.d.a.a.b.yy | var_0.yz) & -9093i));
    global2 = array<Struct_1, 12>();
    var_0 = global1.d.b.b.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_0.zy));
}

