struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-1864f), Struct_1(931f), Struct_1(-103f), Struct_1(-475f), Struct_1(183f), Struct_1(948f));

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(476f), Struct_2(Struct_1(-394f), vec4<bool>(false, true, false, true), Struct_1(1513f), -680f, -128f), vec2<i32>(24271i, 0i), vec2<f32>(1000f, -758f), Struct_2(Struct_1(-1017f), vec4<bool>(true, false, true, true), Struct_1(-1378f), -768f, 1023f)), Struct_3(Struct_1(-1245f), Struct_2(Struct_1(1000f), vec4<bool>(false, true, true, false), Struct_1(-1525f), -420f, -398f), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(-659f, -110f), Struct_2(Struct_1(468f), vec4<bool>(false, true, true, true), Struct_1(-1874f), 997f, -1476f)), Struct_3(Struct_1(216f), Struct_2(Struct_1(334f), vec4<bool>(true, false, true, false), Struct_1(599f), -1165f, -932f), vec2<i32>(1i, 8843i), vec2<f32>(-1000f, -1000f), Struct_2(Struct_1(-1237f), vec4<bool>(true, true, false, false), Struct_1(976f), 534f, -149f)), Struct_3(Struct_1(-1624f), Struct_2(Struct_1(452f), vec4<bool>(true, true, true, true), Struct_1(711f), -1294f, 114f), vec2<i32>(1i, -16368i), vec2<f32>(679f, -493f), Struct_2(Struct_1(-139f), vec4<bool>(true, false, true, true), Struct_1(1135f), -1811f, 1632f)), Struct_3(Struct_1(-558f), Struct_2(Struct_1(-219f), vec4<bool>(true, false, false, true), Struct_1(-1000f), 128f, 1263f), vec2<i32>(i32(-2147483648), -34072i), vec2<f32>(856f, 422f), Struct_2(Struct_1(841f), vec4<bool>(true, true, false, false), Struct_1(-529f), 442f, -1000f)), Struct_3(Struct_1(-159f), Struct_2(Struct_1(954f), vec4<bool>(false, true, true, true), Struct_1(314f), 168f, 2025f), vec2<i32>(5803i, -15753i), vec2<f32>(-1003f, 1048f), Struct_2(Struct_1(-290f), vec4<bool>(false, true, true, true), Struct_1(814f), 1000f, 470f)), Struct_3(Struct_1(1020f), Struct_2(Struct_1(-2065f), vec4<bool>(false, true, false, false), Struct_1(212f), -1000f, 1179f), vec2<i32>(38440i, 2076i), vec2<f32>(-1000f, 196f), Struct_2(Struct_1(259f), vec4<bool>(false, false, false, true), Struct_1(-1000f), 1210f, -968f)), Struct_3(Struct_1(439f), Struct_2(Struct_1(-321f), vec4<bool>(true, true, false, false), Struct_1(-945f), -1056f, -677f), vec2<i32>(-1i, -83520i), vec2<f32>(1057f, 600f), Struct_2(Struct_1(-268f), vec4<bool>(true, true, true, true), Struct_1(-591f), -132f, -708f)), Struct_3(Struct_1(-1052f), Struct_2(Struct_1(-572f), vec4<bool>(true, true, true, true), Struct_1(-1000f), 1806f, -2553f), vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-1357f, 323f), Struct_2(Struct_1(841f), vec4<bool>(false, true, true, false), Struct_1(-263f), 557f, -790f)), Struct_3(Struct_1(-181f), Struct_2(Struct_1(1000f), vec4<bool>(true, true, false, true), Struct_1(-478f), 1310f, -1153f), vec2<i32>(-2061i, 0i), vec2<f32>(1548f, 768f), Struct_2(Struct_1(448f), vec4<bool>(true, false, true, false), Struct_1(-1375f), 538f, -1303f)), Struct_3(Struct_1(-193f), Struct_2(Struct_1(1593f), vec4<bool>(true, true, true, false), Struct_1(-1162f), -904f, 1391f), vec2<i32>(1i, -10948i), vec2<f32>(613f, 104f), Struct_2(Struct_1(-353f), vec4<bool>(true, true, false, false), Struct_1(-142f), 1000f, -600f)), Struct_3(Struct_1(1638f), Struct_2(Struct_1(-327f), vec4<bool>(true, true, true, true), Struct_1(1421f), 2001f, 1000f), vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(1000f, 1329f), Struct_2(Struct_1(-176f), vec4<bool>(false, false, false, false), Struct_1(196f), -844f, -3017f)), Struct_3(Struct_1(-1119f), Struct_2(Struct_1(-2497f), vec4<bool>(false, true, true, true), Struct_1(1766f), 478f, 263f), vec2<i32>(-63651i, 27082i), vec2<f32>(196f, 1762f), Struct_2(Struct_1(-344f), vec4<bool>(true, true, false, false), Struct_1(-2820f), -750f, 1644f)), Struct_3(Struct_1(472f), Struct_2(Struct_1(-1250f), vec4<bool>(true, false, false, true), Struct_1(1316f), 1406f, -436f), vec2<i32>(-18587i, 1i), vec2<f32>(513f, -1387f), Struct_2(Struct_1(1561f), vec4<bool>(false, true, true, false), Struct_1(1038f), -2053f, 620f)), Struct_3(Struct_1(-185f), Struct_2(Struct_1(-965f), vec4<bool>(false, true, false, false), Struct_1(1000f), -692f, 668f), vec2<i32>(7791i, 20975i), vec2<f32>(-245f, 984f), Struct_2(Struct_1(-852f), vec4<bool>(false, false, true, false), Struct_1(-1715f), -1000f, 1133f)), Struct_3(Struct_1(-745f), Struct_2(Struct_1(-528f), vec4<bool>(true, false, true, false), Struct_1(1091f), -334f, 1026f), vec2<i32>(0i, 1i), vec2<f32>(472f, -2169f), Struct_2(Struct_1(1842f), vec4<bool>(false, false, true, false), Struct_1(288f), -1372f, 983f)), Struct_3(Struct_1(-1830f), Struct_2(Struct_1(-382f), vec4<bool>(true, false, true, true), Struct_1(1607f), 831f, 756f), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-549f, -795f), Struct_2(Struct_1(1106f), vec4<bool>(false, true, true, true), Struct_1(-557f), -1135f, -301f)), Struct_3(Struct_1(173f), Struct_2(Struct_1(119f), vec4<bool>(false, true, true, true), Struct_1(1735f), 176f, -1000f), vec2<i32>(-25592i, 1i), vec2<f32>(249f, 639f), Struct_2(Struct_1(-996f), vec4<bool>(true, false, false, true), Struct_1(-1926f), -177f, -881f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = !arg_0.b.b;
    return _wgslsmith_div_f32(arg_0.b.a.a, _wgslsmith_f_op_f32(min(arg_0.b.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.a), -2105f)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, arg_1.a, -2059f) - vec3<f32>(-741f, arg_0, 307f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, arg_1.a, arg_1.a)) - vec3<f32>(894f, arg_1.a, arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -1224f, -1150f) + vec3<f32>(-1170f, -525f, 1496f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(941f, arg_0, arg_1.a) * vec3<f32>(-589f, -1863f, arg_1.a)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, arg_1.a, arg_0))) - _wgslsmith_div_vec3_f32(vec3<f32>(133f, -1593f, arg_0), vec3<f32>(-1325f, -767f, 1153f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1089f, _wgslsmith_f_op_f32(ceil(704f)), _wgslsmith_f_op_f32(-arg_1.a)))), !arg_2.ywx))));
    var var_1 = !vec4<bool>(56486u > u_input.a.x, false, !(!(arg_2.x | global1.x)), false);
    global0 = array<Struct_1, 6>();
    let var_2 = -(~vec4<i32>(-u_input.b, firstLeadingBit(u_input.b), u_input.b, -2147483647i & u_input.b)) | (_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, -6040i, 33961i), vec4<i32>(-2147483647i, u_input.b, -36552i, 29634i))), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> ((vec4<u32>(u_input.a.x, 0u, 41137u, 1u) << (vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, u_input.a.x, select(~4024u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 63714u, 8289u, 43184u)), true), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), select(vec4<u32>(u_input.a.x, 36356u, u_input.a.x, 4294967295u), vec4<u32>(46795u, u_input.a.x, u_input.a.x, 0u), arg_2))) % vec4<u32>(32u)));
    global1 = var_1.zz;
    return global1.x;
}

fn func_1() -> vec3<bool> {
    global1 = select(!(!vec2<bool>(true || global1.x, true)), vec2<bool>(select(!any(vec2<bool>(global1.x, false)), true, global1.x), func_3(_wgslsmith_f_op_f32(-1931f + _wgslsmith_f_op_f32(1257f - 1545f)), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_2(global0[_wgslsmith_index_u32(37150u, 6u)], vec4<bool>(false, false, global1.x, global1.x), global0[_wgslsmith_index_u32(62963u, 6u)], -1265f, -2035f), vec2<i32>(0i, u_input.b), vec2<f32>(1290f, -153f), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<bool>(false, true, global1.x, global1.x), Struct_1(-957f), 162f, 259f)), 1u))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, true, global1.x)))), !select(select(vec2<bool>(global1.x, false), !vec2<bool>(global1.x, false), true), vec2<bool>(!global1.x, global1.x || true), _wgslsmith_f_op_f32(sign(-1246f)) == _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 18u)], u_input.a.x))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(241f, -787f))))), !select(!(!vec4<bool>(global1.x, true, false, global1.x)), vec4<bool>(global1.x, true, true, select(true, global1.x, true)), _wgslsmith_f_op_f32(step(-1289f, -2363f)) <= _wgslsmith_div_f32(-1575f, 216f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-428f - -1459f) + 1993f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + -476f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(553f)), -242f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f - 1158f) + -442f), any(vec3<bool>(global1.x, global1.x, true))))), 1f);
    let var_1 = Struct_2(var_0.a, select(vec4<bool>(u_input.b > u_input.b, all(!var_0.b.yxw), any(!var_0.b), true), vec4<bool>(false, true, any(vec4<bool>(false, false, false, global1.x)), false), !select(select(vec4<bool>(false, global1.x, global1.x, var_0.b.x), vec4<bool>(true, false, true, false), false), !vec4<bool>(var_0.b.x, false, true, var_0.b.x), !var_0.b.x)), Struct_1(_wgslsmith_f_op_f32(abs(-2119f))), var_0.d, -647f);
    let var_2 = Struct_3(var_0.a, var_1, select(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 2147483647i), countOneBits(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-25165i, -1i), vec2<i32>(27676i, u_input.b), vec2<i32>(0i, u_input.b)), vec2<i32>(u_input.b, u_input.b))), !vec2<bool>(u_input.b > u_input.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.c.a)), var_0.c.a)), var_1.d)), var_1);
    let var_3 = 0i;
    return select(!(!(!(!var_0.b.wyx))), !(!(!var_1.b.xxx)), !var_2.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), global1.x), !vec2<bool>(global1.x, global1.x), (i32(-1i) * -31691i) > u_input.b), !(!(!vec2<bool>(global1.x, true))), u_input.a.x <= ~u_input.a.x), vec2<bool>(true, true), !global1.x);
    global2 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~u_input.a.x, max(75227u, 20218u)) ^ vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, 54643u) & u_input.a.x, 1u, abs(u_input.a.x ^ u_input.a.x)), vec4<u32>(11461u, u_input.a.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32409u, 3639u), u_input.a.zx), ~42012u), u_input.a.x));
    let var_1 = select(select(vec3<bool>(_wgslsmith_mult_i32(u_input.b, u_input.b) < _wgslsmith_sub_i32(0i, u_input.b), global1.x, false), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, false), true), !(!(!vec3<bool>(true, false, global1.x)))), func_1(), (u_input.b | firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(81876i, u_input.b, 65439i)))) < -u_input.b);
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.x, 6041u), 6u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1660f + -1004f))), !select(select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(true, false, global1.x, var_1.x), vec4<bool>(global1.x, false, global1.x, false)), vec4<bool>(true, true, global1.x, var_1.x), true), Struct_1(-732f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(719f - 675f))) - _wgslsmith_f_op_f32(-927f * _wgslsmith_div_f32(1580f, -634f))), 162f), vec2<i32>(u_input.b, 1i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), 451f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -241f)), select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !(!vec4<bool>(true, var_1.x, false, var_1.x)), _wgslsmith_f_op_f32(floor(-426f)) >= 1000f), Struct_1(-1842f), -1113f, _wgslsmith_f_op_f32(floor(1f))));
    let var_3 = abs(var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(870f, -615f, -1274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))), var_2.c, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, -16864i, -2147483647i, var_2.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, var_3.x, 24319i, -26767i), vec4<i32>(var_3.x, var_2.c.x, 36451i, u_input.b))) << ((vec4<u32>(72301u, 61241u, 0u, 12642u) << (max(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), vec4<u32>(50236u, var_0.x, u_input.a.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), max(abs(vec4<i32>(-32950i, u_input.b, -2147483647i, u_input.b)), -max(vec4<i32>(-1i, -1i, var_3.x, u_input.b), vec4<i32>(u_input.b, var_3.x, 1i, 2147483647i)))), vec4<i32>(_wgslsmith_clamp_i32(var_2.c.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, var_2.c.x), _wgslsmith_sub_i32(35657i, var_3.x)), -var_2.c.x >> (~1u % 32u)), firstLeadingBit(-reverseBits(var_3.x)), -_wgslsmith_sub_i32(~(-2147483647i), abs(u_input.b)), u_input.b));
}

