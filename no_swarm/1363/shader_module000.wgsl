struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(Struct_1(vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(true, true)), 1i, vec2<i32>(-36510i, -37131i), false, true), -876f, Struct_4(Struct_3(vec3<bool>(true, false, false)), vec2<i32>(i32(-2147483648), 18077i), vec2<f32>(-1000f, -289f), vec3<bool>(false, false, false)), 1u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, true)), 19353i, vec2<i32>(-19950i, -14487i), false, false), -525f, Struct_4(Struct_3(vec3<bool>(true, false, true)), vec2<i32>(59647i, 32445i), vec2<f32>(784f, -1361f), vec3<bool>(false, true, true)), 35692u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, true)), 15567i, vec2<i32>(-1i, 0i), false, true), -1421f, Struct_4(Struct_3(vec3<bool>(true, true, true)), vec2<i32>(0i, 0i), vec2<f32>(831f, -1096f), vec3<bool>(false, true, true)), 0u), Struct_5(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(false, false)), i32(-2147483648), vec2<i32>(i32(-2147483648), -34802i), true, false), -1000f, Struct_4(Struct_3(vec3<bool>(true, true, true)), vec2<i32>(-59779i, 0i), vec2<f32>(-374f, -477f), vec3<bool>(false, false, false)), 4294967295u), Struct_5(Struct_1(vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(false, false)), i32(-2147483648), vec2<i32>(-1i, -1i), false, false), -275f, Struct_4(Struct_3(vec3<bool>(true, true, false)), vec2<i32>(-20877i, 2147483647i), vec2<f32>(-1276f, 1591f), vec3<bool>(false, true, true)), 4294967295u), Struct_5(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, true)), 1i, vec2<i32>(-66484i, -98i), true, true), 1339f, Struct_4(Struct_3(vec3<bool>(false, true, false)), vec2<i32>(-52704i, 59389i), vec2<f32>(363f, -638f), vec3<bool>(false, false, true)), 1u), Struct_5(Struct_1(vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(false, true)), -15527i, vec2<i32>(-3668i, 0i), true, true), -804f, Struct_4(Struct_3(vec3<bool>(false, true, false)), vec2<i32>(-27298i, 2147483647i), vec2<f32>(-429f, -1551f), vec3<bool>(true, false, false)), 17241u), Struct_5(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, false)), 2147483647i, vec2<i32>(2147483647i, -43291i), true, true), -1559f, Struct_4(Struct_3(vec3<bool>(true, true, true)), vec2<i32>(26139i, i32(-2147483648)), vec2<f32>(-296f, 291f), vec3<bool>(false, true, true)), 4294967295u), Struct_5(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, true)), 2147483647i, vec2<i32>(105681i, 33504i), false, true), -1323f, Struct_4(Struct_3(vec3<bool>(true, true, false)), vec2<i32>(0i, 0i), vec2<f32>(-1255f, -1081f), vec3<bool>(false, true, false)), 59610u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, true)), 2147483647i, vec2<i32>(-1i, 46153i), false, false), 1538f, Struct_4(Struct_3(vec3<bool>(false, false, true)), vec2<i32>(2147483647i, 0i), vec2<f32>(818f, 1041f), vec3<bool>(false, false, true)), 1u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(true, true)), 1i, vec2<i32>(-1i, 8063i), true, true), -646f, Struct_4(Struct_3(vec3<bool>(false, false, true)), vec2<i32>(1i, 7389i), vec2<f32>(-239f, 1913f), vec3<bool>(false, true, true)), 1u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(true, false)), 2147483647i, vec2<i32>(-10331i, 1i), false, true), -263f, Struct_4(Struct_3(vec3<bool>(false, true, true)), vec2<i32>(-17333i, 2147483647i), vec2<f32>(1429f, 193f), vec3<bool>(true, false, true)), 64335u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, true)), -1i, vec2<i32>(i32(-2147483648), 1i), false, true), -966f, Struct_4(Struct_3(vec3<bool>(false, true, false)), vec2<i32>(2147483647i, 1i), vec2<f32>(-1425f, 1057f), vec3<bool>(false, true, false)), 1u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(false, false)), 31611i, vec2<i32>(-2965i, 2424i), false, false), 1000f, Struct_4(Struct_3(vec3<bool>(false, true, true)), vec2<i32>(i32(-2147483648), -5543i), vec2<f32>(-733f, 516f), vec3<bool>(false, false, false)), 15286u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, false)), 1i, vec2<i32>(-1i, 2147483647i), false, false), -882f, Struct_4(Struct_3(vec3<bool>(false, false, false)), vec2<i32>(-56698i, 0i), vec2<f32>(530f, -311f), vec3<bool>(false, true, true)), 69088u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, true)), 45050i, vec2<i32>(63596i, -1i), false, false), -1354f, Struct_4(Struct_3(vec3<bool>(true, true, true)), vec2<i32>(-44042i, 15337i), vec2<f32>(-348f, -2123f), vec3<bool>(true, true, true)), 25697u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, false)), 0i, vec2<i32>(0i, 1i), false, true), -491f, Struct_4(Struct_3(vec3<bool>(true, true, true)), vec2<i32>(27222i, -2757i), vec2<f32>(-1000f, -1292f), vec3<bool>(true, false, true)), 28590u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, false)), i32(-2147483648), vec2<i32>(-12185i, 16339i), false, true), 330f, Struct_4(Struct_3(vec3<bool>(false, false, true)), vec2<i32>(1i, 1i), vec2<f32>(354f, 1040f), vec3<bool>(false, false, false)), 49013u), Struct_5(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(false, false)), 1i, vec2<i32>(-10703i, 15203i), false, false), 1226f, Struct_4(Struct_3(vec3<bool>(true, false, false)), vec2<i32>(1i, -12855i), vec2<f32>(801f, 202f), vec3<bool>(false, true, true)), 1u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(false, true)), i32(-2147483648), vec2<i32>(2147483647i, -1i), true, false), 1841f, Struct_4(Struct_3(vec3<bool>(false, true, true)), vec2<i32>(0i, 41319i), vec2<f32>(1810f, 1282f), vec3<bool>(true, true, true)), 64176u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, true)), -1i, vec2<i32>(18668i, -65211i), true, true), -854f, Struct_4(Struct_3(vec3<bool>(false, true, false)), vec2<i32>(0i, -4782i), vec2<f32>(-606f, 693f), vec3<bool>(false, true, true)), 0u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, false)), -29428i, vec2<i32>(15241i, -1i), true, true), -1000f, Struct_4(Struct_3(vec3<bool>(true, false, false)), vec2<i32>(2147483647i, -37336i), vec2<f32>(1027f, -1946f), vec3<bool>(false, true, false)), 39233u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, true)), i32(-2147483648), vec2<i32>(-12549i, 22035i), true, false), -613f, Struct_4(Struct_3(vec3<bool>(false, false, false)), vec2<i32>(0i, 2147483647i), vec2<f32>(1555f, 257f), vec3<bool>(true, true, false)), 16303u), Struct_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(true, false)), -1i, vec2<i32>(-1600i, -22475i), true, true), 777f, Struct_4(Struct_3(vec3<bool>(false, true, false)), vec2<i32>(18727i, 12963i), vec2<f32>(-583f, -743f), vec3<bool>(false, false, true)), 0u), Struct_5(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(false, true)), 2620i, vec2<i32>(85003i, 26365i), true, true), -177f, Struct_4(Struct_3(vec3<bool>(true, false, true)), vec2<i32>(930i, -15624i), vec2<f32>(-615f, -233f), vec3<bool>(false, false, true)), 77880u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<u32> {
    let var_0 = !vec3<bool>(any(vec4<bool>(!arg_1, arg_1, true, false)), arg_1, !any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), arg_1)));
    let var_1 = Struct_3(var_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f));
    var var_3 = vec2<u32>(0u, _wgslsmith_div_u32(31495u, _wgslsmith_clamp_u32(18888u, u_input.a, arg_0)) << (((u_input.a ^ 65688u) >> (~1u % 32u)) % 32u)) ^ ~min(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(u_input.a, arg_0) % vec2<u32>(32u)));
    var var_4 = vec2<bool>(arg_1, var_0.x);
    return abs(select(vec4<u32>(firstLeadingBit(12119u), ~min(26041u, 1u), _wgslsmith_add_u32(u_input.a, ~arg_0), 0u), vec4<u32>(u_input.a, 0u, 27457u >> (var_3.x % 32u), 418u) >> ((countOneBits(vec4<u32>(1u, 4294967295u, 27956u, arg_0)) | ~vec4<u32>(42159u, 0u, 10173u, u_input.a)) % vec4<u32>(32u)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_1, true), arg_1), vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_4.x, false, false))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    var var_0 = !(!(!(-165f > arg_2.c.x)));
    let var_1 = arg_2.a;
    let var_2 = Struct_1(select(!arg_2.a.a.xy, var_1.a.yz, select(var_1.a.zz, vec2<bool>(true, any(vec3<bool>(arg_3, true, false))), !(!arg_2.a.a.xz))));
    let var_3 = _wgslsmith_mod_i32(firstTrailingBit(abs(~(-arg_0))), i32(-1i) * -countOneBits(arg_0));
    let var_4 = Struct_2(Struct_1(vec2<bool>(all(var_1.a), all(select(var_1.a, arg_2.a.a, false)))), -18520i, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, arg_0, 2147483647i, -2147483647i), vec4<i32>(arg_0, arg_2.b.x, 1i, arg_0)) | -var_3, firstLeadingBit(var_3)), -select(0i, -2147483647i, true)), true, all(select(!vec4<bool>(var_1.a.x, true, true, false), !(!vec4<bool>(var_1.a.x, arg_3, var_2.a.x, true)), true)));
    return u_input.a;
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, func_4(-8686i, min(select(vec4<u32>(36257u, 2456u, 68932u, 4294967295u), max(vec4<u32>(u_input.a, arg_0, arg_0, u_input.a), vec4<u32>(989u, 1u, 0u, 30331u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_0, u_input.a, 1u) ^ vec4<u32>(1u, arg_0, arg_0, arg_0), func_3(34960u, false))), Struct_4(Struct_3(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), ~vec2<i32>(1i, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(768f, 456f)) + vec2<f32>(-1858f, -192f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, true)))), false), abs(u_input.a));
    let var_1 = Struct_4(Struct_3(vec3<bool>(any(vec2<bool>(true, true)), !all(vec4<bool>(false, true, true, true)), true)), ~(-vec2<i32>(1i, 1i)), vec2<f32>(1532f, 1121f), vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1090f * 204f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - _wgslsmith_f_op_f32(select(972f, 1000f, true))), any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, false)) && all(vec4<bool>(true, false, false, true))));
    var var_2 = _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(0u, arg_0, u_input.a)) & ~(~vec3<u32>(1u, 24029u, 9426u)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(11206u, ~var_0.x), _wgslsmith_clamp_u32(11342u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 62444u)), ~u_input.a)), 78488u, _wgslsmith_div_u32(4294967295u, reverseBits(var_0.x))), var_0.xwz);
    var var_3 = Struct_1(select(select(!(!var_1.d.zy), !var_1.d.xy, !(!var_1.a.a.yy)), vec2<bool>(all(!vec4<bool>(var_1.a.a.x, false, true, false)), all(select(vec3<bool>(var_1.d.x, var_1.a.a.x, var_1.d.x), var_1.a.a, vec3<bool>(var_1.a.a.x, true, var_1.a.a.x)))), !var_1.a.a.zz));
    var_2 = var_0.wwz;
    return Struct_5(Struct_1(vec2<bool>(any(select(vec4<bool>(var_3.a.x, false, false, var_3.a.x), vec4<bool>(var_1.a.a.x, var_1.a.a.x, false, var_1.a.a.x), vec4<bool>(true, var_3.a.x, false, true))), any(var_1.a.a.xz))), Struct_2(Struct_1(select(!vec2<bool>(false, var_1.d.x), vec2<bool>(true, true), false)), -2147483647i, var_1.b, !(!var_1.a.a.x) || all(vec3<bool>(true, var_1.d.x, false)), var_3.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1819f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-474f + -1552f)))))), var_1, min((_wgslsmith_div_u32(var_0.x, 4294967295u) & _wgslsmith_mod_u32(var_0.x, 4294967295u)) | countOneBits(130546u), 18871u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(~u_input.a);
    global0 = array<Struct_5, 25>();
    var var_1 = var_0.d.b.x;
    let var_2 = -1554f;
    var var_3 = func_2(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, var_0.e), var_0.e) >> (var_0.e % 32u)).a;
    return func_2(~_wgslsmith_sub_u32(1u, ~4294967295u)).d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1166f, -272f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1133f, 1977f), vec2<f32>(560f, -482f))), vec2<f32>(_wgslsmith_f_op_f32(724f + 1000f), 1f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(618f, -664f), vec2<f32>(931f, -814f)))), vec2<f32>(-116f, _wgslsmith_f_op_f32(round(-1223f)))))));
    global0 = array<Struct_5, 25>();
    let var_1 = func_1();
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 27594i, 13190i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 37478u), vec3<u32>(1u, 70194u, 1u)) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))) | ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -43204i))), i32(-1i) * -1i);
    var var_3 = 0i;
    global0 = array<Struct_5, 25>();
    let var_4 = select(!var_1.a.xy, var_1.a.yy, var_1.a.x);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i));
}

