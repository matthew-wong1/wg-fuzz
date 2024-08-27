struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(35045i, 1092i, 17893i), vec3<i32>(2147483647i, -15386i, 7820i), vec3<i32>(3225i, -1i, 2147483647i), vec3<i32>(24796i, -71547i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -22682i, i32(-2147483648)), vec3<i32>(-1i, 0i, 3270i), vec3<i32>(-13224i, 45350i, 2147483647i), vec3<i32>(0i, 8394i, -5315i), vec3<i32>(-20869i, 40817i, -26245i), vec3<i32>(-39850i, 0i, 9214i), vec3<i32>(-4888i, i32(-2147483648), i32(-2147483648)), vec3<i32>(27654i, 0i, -13828i), vec3<i32>(47804i, -1i, 1i), vec3<i32>(-555i, 49083i, -15719i), vec3<i32>(13999i, -696i, -17008i), vec3<i32>(-38987i, 2147483647i, 2147483647i), vec3<i32>(-4325i, -15874i, 15816i), vec3<i32>(-6686i, 12971i, -29523i), vec3<i32>(-17004i, i32(-2147483648), 20147i), vec3<i32>(-33384i, i32(-2147483648), i32(-2147483648)), vec3<i32>(14705i, -38044i, i32(-2147483648)), vec3<i32>(-33037i, -17279i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(2688i, 43390i, 12264i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-701i, 0i, 1i), vec3<i32>(1i, 0i, 43470i), vec3<i32>(i32(-2147483648), -18594i, 0i), vec3<i32>(-32627i, -1i, 1i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 49898i, -22740i));

var<private> global3: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(vec2<u32>(0u, 0u), vec4<f32>(-832f, -811f, -2016f, -1000f), vec2<bool>(true, true), Struct_1(0u, false, vec3<u32>(70387u, 29525u, 13002u), i32(-2147483648)), -502f), true), Struct_3(Struct_2(vec2<u32>(26871u, 45227u), vec4<f32>(412f, 317f, 1515f, -646f), vec2<bool>(false, true), Struct_1(4294967295u, false, vec3<u32>(37118u, 86055u, 4294967295u), 28206i), -401f), true), Struct_3(Struct_2(vec2<u32>(1u, 1u), vec4<f32>(-1000f, 1003f, -275f, 2165f), vec2<bool>(true, false), Struct_1(0u, true, vec3<u32>(4294967295u, 28023u, 31646u), -23951i), -116f), false), Struct_3(Struct_2(vec2<u32>(4294967295u, 25624u), vec4<f32>(1668f, 979f, -1443f, -346f), vec2<bool>(false, true), Struct_1(1u, false, vec3<u32>(4294967295u, 55013u, 0u), -10640i), 784f), false), Struct_3(Struct_2(vec2<u32>(0u, 47843u), vec4<f32>(-629f, 1213f, -1554f, 987f), vec2<bool>(false, true), Struct_1(66188u, true, vec3<u32>(25801u, 4294967295u, 97343u), 21926i), -318f), false), Struct_3(Struct_2(vec2<u32>(60922u, 40731u), vec4<f32>(1000f, -989f, 939f, -1088f), vec2<bool>(true, false), Struct_1(27278u, false, vec3<u32>(44511u, 41124u, 1u), -26396i), 635f), true), Struct_3(Struct_2(vec2<u32>(10485u, 16665u), vec4<f32>(-1735f, 1064f, 1000f, 736f), vec2<bool>(false, true), Struct_1(65361u, false, vec3<u32>(4294967295u, 63234u, 4294967295u), i32(-2147483648)), -657f), true), Struct_3(Struct_2(vec2<u32>(7089u, 4294967295u), vec4<f32>(-2327f, -1946f, 641f, 722f), vec2<bool>(false, false), Struct_1(39308u, true, vec3<u32>(34208u, 19804u, 0u), 2147483647i), 1134f), true), Struct_3(Struct_2(vec2<u32>(0u, 0u), vec4<f32>(-1081f, 1487f, 514f, -434f), vec2<bool>(true, true), Struct_1(4294967295u, true, vec3<u32>(4294967295u, 4294967295u, 53883u), 1i), -1302f), false), Struct_3(Struct_2(vec2<u32>(0u, 1u), vec4<f32>(-1244f, 413f, 465f, -1464f), vec2<bool>(false, true), Struct_1(0u, true, vec3<u32>(1u, 43800u, 19334u), -47778i), -1419f), true), Struct_3(Struct_2(vec2<u32>(0u, 12781u), vec4<f32>(-1000f, 1000f, -125f, -481f), vec2<bool>(true, false), Struct_1(66405u, true, vec3<u32>(1u, 4294967295u, 108191u), -23934i), 301f), false), Struct_3(Struct_2(vec2<u32>(62715u, 91889u), vec4<f32>(1611f, -1081f, 1040f, -477f), vec2<bool>(false, false), Struct_1(8076u, true, vec3<u32>(26559u, 0u, 22089u), -1i), 416f), false), Struct_3(Struct_2(vec2<u32>(13702u, 3016u), vec4<f32>(3067f, -682f, 615f, 1000f), vec2<bool>(false, false), Struct_1(41858u, false, vec3<u32>(4294967295u, 1u, 71822u), -34990i), -956f), true), Struct_3(Struct_2(vec2<u32>(1u, 82181u), vec4<f32>(-550f, 1652f, -1101f, 1386f), vec2<bool>(false, false), Struct_1(4294967295u, false, vec3<u32>(4294967295u, 55153u, 25190u), 2147483647i), 579f), true), Struct_3(Struct_2(vec2<u32>(1874u, 55606u), vec4<f32>(-1511f, 145f, -381f, 1000f), vec2<bool>(true, true), Struct_1(32436u, true, vec3<u32>(0u, 4294967295u, 13422u), i32(-2147483648)), -853f), false), Struct_3(Struct_2(vec2<u32>(72362u, 48394u), vec4<f32>(799f, -379f, -1089f, -829f), vec2<bool>(true, true), Struct_1(0u, false, vec3<u32>(72033u, 19385u, 13431u), 5066i), -842f), true), Struct_3(Struct_2(vec2<u32>(1u, 4294967295u), vec4<f32>(387f, 159f, -1646f, 893f), vec2<bool>(false, false), Struct_1(16226u, true, vec3<u32>(23873u, 0u, 4294967295u), 2147483647i), 466f), true), Struct_3(Struct_2(vec2<u32>(122349u, 2115u), vec4<f32>(1000f, 254f, 868f, -883f), vec2<bool>(true, true), Struct_1(17254u, true, vec3<u32>(4294967295u, 36387u, 41348u), 17755i), -665f), true), Struct_3(Struct_2(vec2<u32>(80000u, 1u), vec4<f32>(462f, 2658f, 643f, -188f), vec2<bool>(true, true), Struct_1(0u, false, vec3<u32>(92384u, 60142u, 30358u), 47519i), 679f), true), Struct_3(Struct_2(vec2<u32>(84947u, 0u), vec4<f32>(1000f, 1947f, -949f, 1000f), vec2<bool>(false, false), Struct_1(1u, false, vec3<u32>(59184u, 4294967295u, 9883u), 28946i), 335f), false), Struct_3(Struct_2(vec2<u32>(47762u, 45569u), vec4<f32>(459f, -1006f, -544f, 890f), vec2<bool>(true, true), Struct_1(26990u, false, vec3<u32>(18734u, 4294967295u, 6736u), 0i), 446f), false), Struct_3(Struct_2(vec2<u32>(19566u, 0u), vec4<f32>(663f, 320f, -712f, 762f), vec2<bool>(true, true), Struct_1(77778u, false, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 87299i), -949f), false), Struct_3(Struct_2(vec2<u32>(33058u, 0u), vec4<f32>(1719f, 1144f, -1033f, -1467f), vec2<bool>(true, true), Struct_1(1u, true, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 2147483647i), -1000f), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(~1u, _wgslsmith_div_f32(_wgslsmith_div_f32(-176f, 794f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-416f)), -1545f)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(710f * -333f), 1f)), vec3<u32>(arg_0.a, ~(~_wgslsmith_sub_u32(0u, arg_0.c.x)), ~u_input.b.x & arg_0.c.x), 1i);
    global0 = array<Struct_2, 29>();
    var var_1 = ~u_input.b;
    var_1 = u_input.b;
    let var_2 = u_input.d.x;
    return ~firstTrailingBit(var_1.zy);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let var_1 = ~(~firstTrailingBit(func_2(var_0.a.d)) >> (var_0.a.a % vec2<u32>(32u)));
    global1 = !var_0.b;
    global1 = !(min(-_wgslsmith_mult_i32(9126i, var_0.a.d.d), _wgslsmith_mod_i32(_wgslsmith_mod_i32(4489i, var_0.a.d.d), 14656i)) == _wgslsmith_sub_i32(1i, u_input.e));
    global1 = u_input.c.x <= var_0.a.d.a;
    return u_input.b;
}

fn func_3(arg_0: vec4<u32>) -> StorageBuffer {
    global3 = array<Struct_3, 23>();
    var var_0 = Struct_2(arg_0.xw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec2<bool>(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), Struct_1(abs(16421u), any(vec3<bool>(any(vec4<bool>(true, false, true, false)), false, 8963i >= u_input.e)), arg_0.yww, -u_input.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -164f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f))), -1494f, all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(select(~var_0.d.c.x, 4294967295u, select(var_0.d.b, true, true)), _wgslsmith_mult_u32(var_0.a.x, 1u | u_input.b.x), var_0.a.x, 28618u), ~vec4<u32>(4294967295u, arg_0.x, u_input.c.x, 1u) & (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.x, 161099u, 1u), arg_0) & ~u_input.b)), !(all(vec4<bool>(false, var_0.c.x, true, var_0.d.b)) & false), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~select(vec3<u32>(var_0.d.a, var_0.a.x, 33084u), var_0.d.c, vec3<bool>(false, var_0.c.x, var_0.d.b)), vec3<u32>(min(20398u, u_input.b.x), ~4294967295u, reverseBits(var_0.a.x))), arg_0.xzy), -1i);
    var var_2 = var_0.d.d;
    var_1 = var_0.d;
    return StorageBuffer(~vec2<i32>(_wgslsmith_mult_i32(var_0.d.d, 20964i) ^ select(-2147483647i, u_input.d.x, var_1.b), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, 17985i), u_input.d), -2147483647i >> (var_0.a.x % 32u))), ~(~(~62392u)) | _wgslsmith_mod_u32(~var_1.c.x >> (~14036u % 32u), _wgslsmith_dot_vec2_u32(var_0.d.c.xy, var_1.c.xx) << (1u % 32u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_1.c.x, 22838u) & var_1.a, 1u, 1436u), ~firstTrailingBit(firstTrailingBit(vec3<u32>(arg_0.x, 5432u, var_1.a)))), var_1.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.e)), var_0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1544f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -1006f) - 818f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-947f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-872f, -483f))))));
    let x = u_input.a;
    s_output = func_3(~countOneBits(select(vec4<u32>(u_input.b.x, 0u, u_input.a.x, 85830u), u_input.b, vec4<bool>(true, false, false, false))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, func_1(1133f, u_input.d), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), vec4<u32>(u_input.a.x, ~u_input.c.x, u_input.a.x, 1u)));
}

