struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<f32>(-419f, 200f, 1034f, 538f), 1i, vec2<bool>(true, true), 1412f)), Struct_2(Struct_1(vec4<f32>(-364f, 980f, 221f, -193f), 8616i, vec2<bool>(true, true), -929f)), Struct_2(Struct_1(vec4<f32>(-1080f, -204f, -705f, -370f), 1i, vec2<bool>(true, false), 334f)), Struct_2(Struct_1(vec4<f32>(1013f, 419f, 1547f, -776f), 39889i, vec2<bool>(true, false), 145f)), Struct_2(Struct_1(vec4<f32>(-1000f, 209f, -1451f, -1110f), -1i, vec2<bool>(false, true), 322f)), Struct_2(Struct_1(vec4<f32>(-1221f, 539f, -618f, -865f), 32885i, vec2<bool>(true, true), -1000f)), Struct_2(Struct_1(vec4<f32>(764f, 709f, -1692f, -993f), 0i, vec2<bool>(false, false), 634f)), Struct_2(Struct_1(vec4<f32>(456f, -176f, -1759f, 1809f), 2147483647i, vec2<bool>(false, true), -1035f)), Struct_2(Struct_1(vec4<f32>(426f, 401f, -277f, 1386f), 1i, vec2<bool>(true, true), -131f)), Struct_2(Struct_1(vec4<f32>(-1941f, 1130f, -1000f, -2660f), i32(-2147483648), vec2<bool>(true, false), -486f)), Struct_2(Struct_1(vec4<f32>(288f, -1000f, 1360f, 609f), i32(-2147483648), vec2<bool>(false, false), 128f)), Struct_2(Struct_1(vec4<f32>(-1238f, -279f, -404f, 1377f), 1i, vec2<bool>(false, false), -796f)), Struct_2(Struct_1(vec4<f32>(-615f, -526f, -795f, -1000f), 2147483647i, vec2<bool>(true, false), 1120f)), Struct_2(Struct_1(vec4<f32>(-615f, 400f, 1063f, 1784f), -1i, vec2<bool>(true, true), 403f)), Struct_2(Struct_1(vec4<f32>(-994f, -1148f, 1759f, -817f), 1i, vec2<bool>(false, true), 274f)), Struct_2(Struct_1(vec4<f32>(254f, 352f, 169f, 366f), -1i, vec2<bool>(false, true), -1077f)), Struct_2(Struct_1(vec4<f32>(1000f, 292f, 131f, -740f), 18255i, vec2<bool>(false, false), 268f)), Struct_2(Struct_1(vec4<f32>(1495f, 1543f, -788f, -317f), -18802i, vec2<bool>(false, false), 1189f)), Struct_2(Struct_1(vec4<f32>(1147f, 351f, -235f, 591f), -7034i, vec2<bool>(false, true), 1686f)), Struct_2(Struct_1(vec4<f32>(-1000f, 593f, 788f, -1455f), -17225i, vec2<bool>(true, false), -940f)), Struct_2(Struct_1(vec4<f32>(-1656f, 2269f, 149f, -309f), i32(-2147483648), vec2<bool>(true, false), -133f)), Struct_2(Struct_1(vec4<f32>(813f, -1247f, 450f, 1000f), 71740i, vec2<bool>(true, true), 436f)), Struct_2(Struct_1(vec4<f32>(-847f, -1516f, -737f, -630f), 46687i, vec2<bool>(false, false), 930f)), Struct_2(Struct_1(vec4<f32>(523f, -1497f, 561f, 974f), 5971i, vec2<bool>(true, false), 948f)), Struct_2(Struct_1(vec4<f32>(-1000f, 2486f, 1000f, 712f), i32(-2147483648), vec2<bool>(false, true), -1955f)));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-224f, 329f, -1554f, -401f), -1i, vec2<bool>(false, false), 108f);

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-46841i, -29513i, -1i), vec3<i32>(0i, 725i, 2147483647i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 17655i), vec3<i32>(1i, -20846i, 2147483647i), vec3<i32>(-23591i, -1i, -16573i), vec3<i32>(2147483647i, -13762i, -18972i), vec3<i32>(2147483647i, i32(-2147483648), 1i));

var<private> global3: Struct_3 = Struct_3(vec2<i32>(2147483647i, -9986i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), ~min(select(-2147483647i, global3.a.x, global1.c.x), _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(47637u, 8u)], vec3<i32>(1i, -2147483647i, -2771i))), global1.c, global1.a.x), Struct_1(global1.a, u_input.b.x << (~_wgslsmith_sub_u32(55206u, 4280u) % 32u), global1.c, 1178f), 959f, !all(select(!vec4<bool>(global1.c.x, false, global1.c.x, false), vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), true)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x + global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1306f), _wgslsmith_f_op_f32(round(-145f)), _wgslsmith_f_op_f32(-936f - global1.a.x)), u_input.a, select(select(global1.c, vec2<bool>(global1.c.x, global1.c.x), global1.c.x), vec2<bool>(global1.c.x, false), global1.c.x), 274f)));
    let var_1 = 16500i;
    global2 = array<vec3<i32>, 8>();
    var var_2 = -min(1i, -_wgslsmith_div_i32(-1i, firstLeadingBit(var_0.b.b)));
    global3 = Struct_3(vec2<i32>(u_input.a | -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1), global3.a), global1.b));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-326f, global1.d, -624f, 812f)))))));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = Struct_3(u_input.b.xw);
    let var_1 = -_wgslsmith_add_i32(var_0.a.x, -1i);
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(global1.a.x, global1.a.x, global1.d, -374f))))) + _wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.d, global1.a.x, 2959f, global1.d))), _wgslsmith_f_op_vec4_f32(func_3()), all(global1.c))))), -arg_0, global1.c, global1.d);
    return global3.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_3(-vec2<i32>(reverseBits(1i), 2147483647i));
    var_0 = Struct_3(~abs(-reverseBits(u_input.b.xx)));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, -1000f, global1.d, 122f), global1.a, global1.c.x)), vec4<f32>(global1.d, global1.a.x, -123f, -1362f)), _wgslsmith_f_op_vec4_f32(-global1.a))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global3.a, ~vec2<i32>(30730i, global3.a.x), firstLeadingBit(select(arg_0, vec2<i32>(-2147483647i, global1.b), false))), ~var_0.a), global1.c, -220f);
    let var_1 = ~1u;
    var var_2 = !select(!(!vec4<bool>(global1.c.x, global1.c.x, false, arg_1)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.c.x, true, false, false), true), !select(!vec4<bool>(global1.c.x, false, false, true), !vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x), vec4<bool>(arg_1, false, false, false)));
    return 1322f;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> i32 {
    global0 = array<Struct_2, 25>();
    var var_0 = global1.b;
    let var_1 = arg_0;
    let var_2 = global1.d;
    var var_3 = 38292i;
    return -firstLeadingBit(_wgslsmith_mod_i32(~1i, ~arg_2.a.b));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = 1461f;
    return ~func_5(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(1297f, 1000f, global1.a.x, global1.a.x)), 1i, select(global1.c, vec2<bool>(true, global1.c.x), true), _wgslsmith_f_op_f32(f32(-1f) * -1095f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global1.d, -234f)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, global3.a.x), vec4<i32>(arg_0, arg_0, -2147483647i, -1i)), global1.c, 1504f), _wgslsmith_f_op_f32(func_4(func_2(u_input.b.x), true)), false, Struct_2(Struct_1(vec4<f32>(global1.a.x, 1353f, global1.a.x, 1293f), global3.a.x, global1.c, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d))), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, global1.d, global1.a.x, global1.a.x), global1.a)), global1.b, global1.c, global1.d), Struct_1(vec4<f32>(global1.d, -859f, -151f, -2917f), global1.b, !vec2<bool>(global1.c.x, false), _wgslsmith_f_op_f32(-global1.d)), global1.a.x, true, global0[_wgslsmith_index_u32(35486u, 25u)]));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_3 {
    global2 = array<vec3<i32>, 8>();
    var var_0 = select(select(!vec2<bool>(all(vec4<bool>(true, true, global1.c.x, false)), arg_1.c.x != arg_0.a.c.x), !(!vec2<bool>(true, arg_1.c.x)), !arg_0.a.c), !vec2<bool>(!(!arg_0.a.c.x), global1.c.x), any(global1.c) || !arg_0.a.c.x);
    let var_1 = vec4<bool>(arg_0.a.c.x != select(true, -930f > _wgslsmith_f_op_f32(arg_0.a.d - 167f), true), all(vec3<bool>(false, true, arg_0.a.c.x)), any(!vec3<bool>(all(vec4<bool>(true, global1.c.x, true, false)), true, !var_0.x)), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(arg_3, -1766f), _wgslsmith_f_op_f32(sign(-1060f)), arg_0.a.d, _wgslsmith_div_f32(arg_1.d, arg_3))))) + arg_1.a);
    let var_3 = var_2.xyw;
    return Struct_3(abs(u_input.b.xx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstTrailingBit(1u));
    var_0 = max(_wgslsmith_div_u32(~4294967295u, 68148u), 4294967295u);
    var var_1 = func_6(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(34430u, 1u), 25u)], Struct_1(global1.a, _wgslsmith_clamp_i32(3378i, global3.a.x, func_1(~global3.a.x)), select(select(!vec2<bool>(global1.c.x, global1.c.x), global1.c, vec2<bool>(global1.c.x, global1.c.x)), !select(vec2<bool>(true, true), vec2<bool>(true, global1.c.x), vec2<bool>(global1.c.x, true)), !global1.c), -862f), ~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(1u, 1u, 30992u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(75253u, 0u, 0u), vec3<u32>(1u, 2304u, 0u), vec3<u32>(6430u, 1u, 21892u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x));
    var var_2 = Struct_5(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3()).x, global1.d)), 578f), ~_wgslsmith_mod_i32(global3.a.x, _wgslsmith_mod_i32(global1.b ^ global3.a.x, ~global3.a.x)), vec2<bool>(true, any(select(select(vec4<bool>(global1.c.x, true, global1.c.x, true), vec4<bool>(true, global1.c.x, true, global1.c.x), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, global1.c.x), select(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, false, true), vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x))))), !vec4<bool>(all(select(vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, true, false), true)), true, all(select(vec3<bool>(global1.c.x, false, true), vec3<bool>(true, global1.c.x, global1.c.x), global1.c.x)), false), -742f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.d, 1389f, -1307f, -323f)))))), func_1(reverseBits(global1.b)), vec2<bool>(global1.c.x, all(var_2.d.xyy)), global1.a.x);
    global0 = array<Struct_2, 25>();
    var_1 = Struct_3(vec2<i32>(-1i) * -(~reverseBits(vec2<i32>(-34434i, 1i))));
    let var_4 = select(!select(var_2.d.xxz, select(var_2.d.yxz, !var_2.d.yzz, global1.c.x & global1.c.x), var_2.d.zxw), vec3<bool>(true, global1.c.x, true), var_2.d.zzz);
    var var_5 = _wgslsmith_f_op_f32(max(-162f, _wgslsmith_f_op_f32(-var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x)))), 167f, 614f));
}

