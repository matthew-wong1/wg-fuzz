struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(13670i, vec3<f32>(276f, 104f, -1294f), vec4<u32>(0u, 0u, 0u, 0u)), Struct_1(16228i, vec3<f32>(-626f, 1067f, -928f), vec4<u32>(4294967295u, 4294967295u, 55730u, 32047u)), Struct_1(2147483647i, vec3<f32>(503f, 679f, -1868f), vec4<u32>(0u, 37437u, 11847u, 0u)), Struct_1(-19100i, vec3<f32>(-563f, 255f, -899f), vec4<u32>(66290u, 1938u, 2504u, 31496u)), Struct_1(-43000i, vec3<f32>(-1126f, 156f, -585f), vec4<u32>(95272u, 27132u, 4294967295u, 55937u)), Struct_1(1i, vec3<f32>(557f, -1310f, 2593f), vec4<u32>(20898u, 24481u, 44051u, 26304u)), Struct_1(i32(-2147483648), vec3<f32>(-1784f, -1000f, 349f), vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_1(2147483647i, vec3<f32>(-660f, 1590f, 444f), vec4<u32>(1u, 82576u, 0u, 9174u)), Struct_1(0i, vec3<f32>(-1813f, -985f, 1905f), vec4<u32>(0u, 0u, 9958u, 68281u)), Struct_1(-36961i, vec3<f32>(1000f, 858f, 946f), vec4<u32>(1u, 38361u, 1445u, 93973u)), Struct_1(1i, vec3<f32>(1823f, 1000f, -860f), vec4<u32>(4294967295u, 22189u, 88656u, 4294967295u)), Struct_1(-4135i, vec3<f32>(-1151f, -2338f, -1378f), vec4<u32>(34371u, 0u, 4294967295u, 1u)), Struct_1(2147483647i, vec3<f32>(-918f, -1000f, -1000f), vec4<u32>(4294967295u, 0u, 1u, 63106u)), Struct_1(-52746i, vec3<f32>(1000f, 315f, 969f), vec4<u32>(4294967295u, 4294967295u, 66642u, 1u)), Struct_1(0i, vec3<f32>(-938f, 919f, 1338f), vec4<u32>(25041u, 38142u, 38977u, 0u)), Struct_1(1i, vec3<f32>(244f, -286f, 335f), vec4<u32>(17700u, 69841u, 34121u, 4294967295u)), Struct_1(28197i, vec3<f32>(-1075f, 962f, 1627f), vec4<u32>(4294967295u, 19774u, 78256u, 1u)), Struct_1(13424i, vec3<f32>(2356f, 186f, 1310f), vec4<u32>(42152u, 29192u, 53254u, 43717u)), Struct_1(-31118i, vec3<f32>(354f, -283f, -1328f), vec4<u32>(100845u, 333u, 59860u, 12929u)), Struct_1(i32(-2147483648), vec3<f32>(955f, -435f, 1102f), vec4<u32>(0u, 19623u, 7921u, 4294967295u)), Struct_1(-59161i, vec3<f32>(-2195f, 1610f, 1766f), vec4<u32>(23071u, 1u, 28919u, 0u)), Struct_1(-1i, vec3<f32>(-745f, 1025f, -1448f), vec4<u32>(1u, 1u, 8703u, 1849u)), Struct_1(12199i, vec3<f32>(-1440f, -922f, 813f), vec4<u32>(1u, 22901u, 1u, 90481u)), Struct_1(-1i, vec3<f32>(-1298f, 1546f, -284f), vec4<u32>(47954u, 29634u, 0u, 3330u)), Struct_1(-1i, vec3<f32>(-1357f, 100f, 1948f), vec4<u32>(30742u, 47059u, 79069u, 4294967295u)), Struct_1(-1i, vec3<f32>(-335f, -1416f, -261f), vec4<u32>(93951u, 60702u, 4294967295u, 19860u)), Struct_1(1i, vec3<f32>(1680f, -601f, -259f), vec4<u32>(1u, 1u, 46133u, 1u)), Struct_1(-1i, vec3<f32>(-1158f, 198f, -417f), vec4<u32>(4294967295u, 57165u, 1u, 3556u)), Struct_1(-8995i, vec3<f32>(-1200f, 1224f, -291f), vec4<u32>(70464u, 0u, 0u, 1u)), Struct_1(14916i, vec3<f32>(375f, -992f, 1442f), vec4<u32>(73145u, 1u, 60454u, 1u)), Struct_1(1i, vec3<f32>(1435f, 101f, 1580f), vec4<u32>(4294967295u, 52646u, 4294967295u, 5461u)));

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-1000f, 148f), vec2<f32>(600f, -1337f), vec2<f32>(-970f, 1000f), vec2<f32>(1335f, -640f), vec2<f32>(931f, 141f), vec2<f32>(-116f, -471f), vec2<f32>(783f, -1516f), vec2<f32>(1000f, -1000f), vec2<f32>(-1301f, 936f), vec2<f32>(1000f, 1103f), vec2<f32>(-972f, -1436f), vec2<f32>(800f, 1073f), vec2<f32>(-712f, -216f), vec2<f32>(-503f, -106f), vec2<f32>(-272f, -189f), vec2<f32>(453f, 620f), vec2<f32>(301f, 1444f), vec2<f32>(-627f, 1428f), vec2<f32>(-1229f, -761f), vec2<f32>(623f, 1698f), vec2<f32>(-1966f, 1000f), vec2<f32>(149f, -296f), vec2<f32>(796f, 572f), vec2<f32>(-767f, -1000f), vec2<f32>(883f, -528f), vec2<f32>(-349f, -1000f), vec2<f32>(1000f, -730f), vec2<f32>(-1511f, 293f), vec2<f32>(-1153f, 1335f), vec2<f32>(-1237f, 261f), vec2<f32>(1398f, 308f));

var<private> global3: array<vec2<u32>, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = arg_1.zzy;
    return ~u_input.c;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(56609i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1821f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -670f), vec3<f32>(arg_1, 1080f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -103f, 676f)), select(arg_2.a.wyx, vec3<bool>(false, false, arg_2.a.x), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * 293f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(arg_1))))))), ~(~vec4<u32>(10184u, _wgslsmith_mod_u32(21440u, 1u), 6496u, 0u)));
    global1 = array<Struct_1, 31>();
    let var_1 = max(var_0.c.xzz, var_0.c.xxz);
    var var_2 = abs(abs(_wgslsmith_mult_u32(70625u, var_0.c.x) ^ ~4294967295u)) | select(var_0.c.x, _wgslsmith_div_u32(20034u, _wgslsmith_div_u32(var_1.x, 0u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 - 807f), _wgslsmith_div_f32(1224f, 1000f))) > _wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = select(arg_2.a.xyx, arg_2.a.wyw, !(!select(!arg_2.a.wwy, vec3<bool>(arg_2.a.x, false, false), true)));
    return Struct_1(u_input.b, vec3<f32>(1000f, arg_1, _wgslsmith_f_op_f32(-arg_1)), vec4<u32>(3337u, abs(7489u), var_1.x, ~_wgslsmith_add_u32(33252u, 0u)) >> (vec4<u32>(4294967295u >> (func_2(vec3<f32>(var_0.b.x, 1588f, var_0.b.x), vec4<i32>(u_input.a, var_0.a, arg_2.b, 2147483647i)) % 32u), ~(~u_input.c), var_1.x, 87502u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c, 1014f, Struct_4(vec4<bool>(!any(vec3<bool>(true, true, false)), true, u_input.c < u_input.c, any(vec3<bool>(true, true, true))), 62175i));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -401f, -682f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1175f, 1064f, 1524f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1081f, 1000f, -370f, -1645f)))))));
    let var_2 = vec3<u32>(var_0.c.x, ~151u, u_input.c);
    var var_3 = func_1(1u, _wgslsmith_f_op_f32(-var_1.a.x), Struct_4(vec4<bool>(!(u_input.c < var_0.c.x), all(vec4<bool>(false, true, true, false)), false | all(vec4<bool>(false, false, false, false)), true), _wgslsmith_div_i32(30559i, _wgslsmith_div_i32(u_input.b, 2147483647i) >> (8513u % 32u))));
    var var_4 = Struct_2(_wgslsmith_div_vec4_f32(var_1.a, var_1.a));
    var_3 = func_1(_wgslsmith_div_u32(var_2.x & 1u, min(var_2.x, ~firstLeadingBit(var_2.x))), 104f, Struct_4(vec4<bool>(false, false, _wgslsmith_div_i32(-2147483647i, var_0.a) != 2147483647i, false), 1i));
    global0 = _wgslsmith_f_op_f32(trunc(var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.x, vec3<f32>(var_0.b.x, -1946f, 692f), var_0.b.zz);
}

