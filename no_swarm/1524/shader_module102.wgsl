struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(true, Struct_1(true, vec3<bool>(true, true, false), vec3<f32>(1000f, -882f, 1203f), vec4<bool>(true, false, true, false)), Struct_1(false, vec3<bool>(true, true, false), vec3<f32>(1243f, 1491f, -3201f), vec4<bool>(true, true, true, false))), Struct_2(true, Struct_1(false, vec3<bool>(true, false, false), vec3<f32>(367f, 301f, 556f), vec4<bool>(false, false, true, false)), Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(1225f, 2396f, -252f), vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(true, vec3<bool>(false, true, false), vec3<f32>(603f, -1912f, 541f), vec4<bool>(true, false, false, true)), Struct_1(true, vec3<bool>(true, true, true), vec3<f32>(-865f, 918f, -604f), vec4<bool>(false, true, true, true))), Struct_2(true, Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(162f, -240f, 709f), vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(true, true, true), vec3<f32>(-281f, -787f, 1000f), vec4<bool>(false, true, false, false))), Struct_2(true, Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(-1358f, -617f, 1027f), vec4<bool>(true, false, false, true)), Struct_1(false, vec3<bool>(false, false, true), vec3<f32>(-2194f, -238f, 346f), vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(998f, -412f, -1014f), vec4<bool>(true, true, false, true)), Struct_1(false, vec3<bool>(true, false, false), vec3<f32>(205f, -507f, 285f), vec4<bool>(false, false, true, true))), Struct_2(false, Struct_1(false, vec3<bool>(false, true, true), vec3<f32>(-285f, 1612f, -734f), vec4<bool>(false, true, true, true)), Struct_1(true, vec3<bool>(false, false, true), vec3<f32>(-1511f, -898f, 359f), vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(false, vec3<bool>(false, false, true), vec3<f32>(582f, 1948f, 1405f), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(1200f, -879f, -1897f), vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(true, vec3<bool>(true, true, false), vec3<f32>(-1019f, -463f, -641f), vec4<bool>(true, false, true, false)), Struct_1(false, vec3<bool>(true, true, false), vec3<f32>(1484f, -340f, 498f), vec4<bool>(false, true, true, true))), Struct_2(true, Struct_1(false, vec3<bool>(false, true, false), vec3<f32>(-1603f, -1340f, 396f), vec4<bool>(false, true, true, true)), Struct_1(true, vec3<bool>(false, false, true), vec3<f32>(-1172f, 384f, 250f), vec4<bool>(false, true, false, true))), Struct_2(false, Struct_1(false, vec3<bool>(true, false, true), vec3<f32>(415f, 1446f, 1277f), vec4<bool>(false, true, true, true)), Struct_1(true, vec3<bool>(true, false, false), vec3<f32>(-403f, -1668f, -117f), vec4<bool>(true, true, false, true))), Struct_2(true, Struct_1(true, vec3<bool>(true, true, false), vec3<f32>(1285f, -817f, -188f), vec4<bool>(false, false, true, true)), Struct_1(false, vec3<bool>(false, false, false), vec3<f32>(-845f, 1161f, 2067f), vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(true, vec3<bool>(true, false, true), vec3<f32>(1058f, -852f, -222f), vec4<bool>(true, false, true, true)), Struct_1(false, vec3<bool>(false, false, true), vec3<f32>(1533f, 1124f, 595f), vec4<bool>(false, true, false, true))), Struct_2(false, Struct_1(true, vec3<bool>(true, true, false), vec3<f32>(-288f, -246f, 966f), vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(-1131f, -647f, -309f), vec4<bool>(false, false, false, true))), Struct_2(true, Struct_1(true, vec3<bool>(true, true, false), vec3<f32>(-1065f, 758f, 202f), vec4<bool>(false, false, true, true)), Struct_1(true, vec3<bool>(true, false, true), vec3<f32>(-444f, -645f, 178f), vec4<bool>(false, false, true, true))), Struct_2(true, Struct_1(false, vec3<bool>(true, true, true), vec3<f32>(-1000f, -667f, 1099f), vec4<bool>(true, true, true, false)), Struct_1(false, vec3<bool>(true, false, false), vec3<f32>(651f, -1644f, -1078f), vec4<bool>(true, true, true, true))), Struct_2(true, Struct_1(true, vec3<bool>(false, true, false), vec3<f32>(432f, 1138f, -1705f), vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(true, false, true), vec3<f32>(-782f, 625f, 873f), vec4<bool>(false, false, true, true))), Struct_2(true, Struct_1(true, vec3<bool>(true, false, false), vec3<f32>(-774f, -377f, -395f), vec4<bool>(false, true, false, false)), Struct_1(false, vec3<bool>(false, false, true), vec3<f32>(709f, -1377f, 682f), vec4<bool>(false, false, false, true))), Struct_2(true, Struct_1(false, vec3<bool>(true, false, true), vec3<f32>(876f, -1173f, -572f), vec4<bool>(true, true, false, true)), Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(-424f, 501f, -837f), vec4<bool>(false, false, true, false))), Struct_2(false, Struct_1(false, vec3<bool>(false, true, false), vec3<f32>(1183f, 1893f, -1072f), vec4<bool>(true, true, true, false)), Struct_1(false, vec3<bool>(false, true, true), vec3<f32>(403f, 270f, 599f), vec4<bool>(true, true, true, true))), Struct_2(true, Struct_1(true, vec3<bool>(false, false, true), vec3<f32>(-433f, -1216f, -1048f), vec4<bool>(false, false, true, false)), Struct_1(true, vec3<bool>(false, false, false), vec3<f32>(803f, 1000f, 214f), vec4<bool>(true, false, true, false))));

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(32065u, 0u), vec2<u32>(1u, 0u), vec2<u32>(6409u, 66109u), vec2<u32>(37571u, 1u), vec2<u32>(0u, 171u), vec2<u32>(4294967295u, 2597u), vec2<u32>(0u, 4294967295u), vec2<u32>(59880u, 4294967295u), vec2<u32>(27827u, 18761u), vec2<u32>(27505u, 4294967295u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_2(!arg_2.b.a, Struct_1(all(select(arg_2.c.a.c.d, arg_2.b.b.d, arg_2.c.a.c.d)) | (false != !arg_0.x), !(!(!vec3<bool>(true, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.b.c)) + vec3<f32>(_wgslsmith_f_op_f32(-180f * arg_2.c.a.c.c.x), _wgslsmith_f_op_f32(max(-685f, arg_1.x)), -1379f)), !arg_2.b.c.d), Struct_1(arg_0.x, select(select(vec3<bool>(true, false, false), !vec3<bool>(false, arg_2.c.a.b.d.x, true), !arg_2.b.b.b), select(arg_2.c.a.c.b, vec3<bool>(true, arg_0.x, false), !arg_2.c.a.b.b), true), vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f - arg_1.x))), arg_2.c.a.b.d));
    global1 = array<vec2<u32>, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-383f, -235f, arg_2.a) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), 1263f), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c.c.x * arg_1.x) + _wgslsmith_f_op_f32(trunc(arg_1.x))))), arg_2.c.a.c.c));
    var var_2 = firstTrailingBit(-2147483647i);
    var var_3 = firstLeadingBit(~u_input.a);
    return var_0.b.c.x;
}

fn func_2() -> bool {
    global1 = array<vec2<u32>, 11>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f - _wgslsmith_f_op_f32(f32(-1f) * -598f))));
    var var_2 = Struct_2((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec3<f32>(714f, 916f, 1101f), Struct_4(-834f, global0[_wgslsmith_index_u32(96604u, 21u)], Struct_3(Struct_2(true, Struct_1(false, vec3<bool>(true, false, true), vec3<f32>(105f, -305f, -549f), vec4<bool>(true, true, false, true)), Struct_1(true, vec3<bool>(false, true, true), vec3<f32>(1014f, -102f, -860f), vec4<bool>(true, true, false, true)))), false)))) > -116f) && all(vec2<bool>(true, true)), Struct_1(all(vec4<bool>(true, true, true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true), vec3<bool>(all(vec2<bool>(false, false)), true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, -716f, -2203f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(min(185f, 1306f)), _wgslsmith_f_op_f32(-1000f * -289f))), !vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, false)), Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1395f * -109f) + -1332f), -1620f, _wgslsmith_f_op_f32(f32(-1f) * -1219f)), !vec4<bool>(false, any(vec3<bool>(false, true, true)), false, true)));
    let var_3 = firstLeadingBit(firstLeadingBit(vec4<u32>(1u, var_0, u_input.a.x, firstTrailingBit(~74827u))));
    return var_2.c.a;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_2(select(true, all(vec4<bool>(true, true, func_2(), select(true, false, false))), false), Struct_1(any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-880f, -865f, -1728f), vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -109f, _wgslsmith_f_op_f32(1000f * 1186f)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, select(true, u_input.a.x < arg_1.x, 2147483647i < arg_0))), Struct_1(true, select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec3<bool>(false, true, false))), vec3<bool>(true, arg_1.x < arg_1.x, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(176f)), _wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(518f - 2058f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(955f, -775f, -1426f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-534f, -1465f, -1511f))))), select(vec4<bool>(u_input.a.x != u_input.a.x, false, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), !(arg_1.x >= 20544u))));
    let var_1 = vec4<u32>(select(1u, u_input.a.x ^ 17658u, false), arg_1.x, 53265u, ~(~u_input.a.x));
    global0 = array<Struct_2, 21>();
    let var_2 = select(vec3<bool>(var_0.b.d.x, var_0.c.a && (_wgslsmith_sub_i32(-2147483647i, arg_0) < arg_0), var_0.b.a), select(vec3<bool>(false, any(!var_0.c.d), arg_0 < reverseBits(-30134i)), vec3<bool>(false, !all(var_0.b.d), (var_0.c.c.x != var_0.c.c.x) | true), vec3<bool>(true, !any(var_0.c.d.zyx), true)), select(!var_0.b.d.yxz, vec3<bool>(!var_0.a, min(arg_0, 2147483647i) != _wgslsmith_dot_vec2_i32(vec2<i32>(3833i, 1i), vec2<i32>(-2147483647i, arg_0)), false), vec3<bool>(true | var_0.c.d.x, !var_0.c.a, any(!var_0.b.d.yzw))));
    var var_3 = var_0.b.a;
    return !vec2<bool>(var_0.b.d.x, 4294967295u >= _wgslsmith_mult_u32(arg_1.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -396f;
    var var_1 = vec3<bool>(any(select(vec2<bool>(true, select(true, true, false)), func_1(18891i, ~vec2<u32>(21906u, u_input.a.x)), func_1(i32(-1i) * -1i, _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], vec2<u32>(4294967295u, u_input.a.x))))), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(1i), 0i, -2147483647i), abs(abs(vec3<i32>(-2147483647i, -2147483647i, -1i)))), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, 1u))).x, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))) && true);
    var var_2 = Struct_2(func_1(-18265i, ~_wgslsmith_add_vec2_u32(u_input.a.yy, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(24589u, 55623u), 11u)])).x, Struct_1(var_1.x, !vec3<bool>(var_1.x | var_1.x, true, 574f >= var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(985f, var_0, -912f), vec3<f32>(var_0, 191f, -1628f), vec3<bool>(var_1.x, true, var_1.x))) + vec3<f32>(var_0, 1901f, 802f))), vec4<bool>(false, !var_1.x, !(!var_1.x), all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)))), Struct_1(var_1.x, vec3<bool>(true, !any(vec3<bool>(true, false, false)), any(func_1(-52144i, u_input.a.zw))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, var_0) + vec3<f32>(-1043f, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_0, var_0)))))), !select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, true, true, true), !var_1.x)));
    var var_3 = countOneBits(u_input.a.wz);
    var var_4 = _wgslsmith_clamp_u32(43916u, var_3.x, var_3.x);
    var_3 = vec2<u32>(u_input.a.x, 1u);
    let var_5 = Struct_1(var_1.x, select(var_2.b.b, var_2.b.b, !vec3<bool>(var_2.b.a, var_2.c.a, var_1.x)), vec3<f32>(var_2.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -2256f), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c.x) * _wgslsmith_f_op_f32(-var_2.c.c.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, var_0, false)) - _wgslsmith_f_op_f32(-var_2.b.c.x)), true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1267f * _wgslsmith_f_op_f32(abs(-671f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.c.x - var_5.c.x) - var_2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1682f, -1995f))), -3164f), global1[_wgslsmith_index_u32(var_3.x, 11u)], vec4<i32>(~(31408i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, 1i), vec4<i32>(-1i, -46253i, -512i, 0i))), _wgslsmith_sub_i32(max(1i, abs(1i)), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(28083i, firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(1i, 5993i), 1i)), _wgslsmith_div_i32(max(-13957i, _wgslsmith_dot_vec4_i32(vec4<i32>(6649i, -2147483647i, 50580i, 21877i), vec4<i32>(6479i, 2147483647i, -21868i, 36241i))), select(0i, ~2772i, var_2.c.b.x))));
}

