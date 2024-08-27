struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(-1115i, vec4<i32>(2147483647i, 22638i, -46634i, 1i), Struct_1(vec4<f32>(-534f, -1268f, -904f, 477f), vec2<f32>(1808f, -2718f), vec2<bool>(true, true)), Struct_3(true, Struct_2(vec2<bool>(false, true)), false), 2147483647i), Struct_4(-49369i, vec4<i32>(35313i, 28237i, 2147483647i, 34343i), Struct_1(vec4<f32>(2008f, -386f, -1000f, 552f), vec2<f32>(-533f, -1687f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(true, false)), true), 2147483647i), Struct_4(2147483647i, vec4<i32>(23628i, -47116i, 7821i, 0i), Struct_1(vec4<f32>(881f, -1266f, 184f, 1234f), vec2<f32>(-1000f, -1407f), vec2<bool>(true, false)), Struct_3(false, Struct_2(vec2<bool>(false, true)), true), -18375i), Struct_4(-24816i, vec4<i32>(2147483647i, 1i, 2147483647i, 0i), Struct_1(vec4<f32>(936f, -773f, 1000f, -1000f), vec2<f32>(1111f, -189f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(false, true)), false), i32(-2147483648)), Struct_4(-1686i, vec4<i32>(0i, -27346i, -1i, i32(-2147483648)), Struct_1(vec4<f32>(1088f, -383f, 1921f, -1000f), vec2<f32>(1922f, -1112f), vec2<bool>(false, true)), Struct_3(true, Struct_2(vec2<bool>(false, true)), false), 4328i), Struct_4(-69897i, vec4<i32>(-50630i, 2147483647i, 33508i, 1i), Struct_1(vec4<f32>(516f, -444f, 1223f, 516f), vec2<f32>(119f, -984f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(false, false)), false), 1i), Struct_4(-49181i, vec4<i32>(0i, 6766i, -6256i, 1i), Struct_1(vec4<f32>(-1306f, 328f, -1053f, 281f), vec2<f32>(-886f, -1291f), vec2<bool>(false, true)), Struct_3(false, Struct_2(vec2<bool>(false, true)), false), 2147483647i), Struct_4(i32(-2147483648), vec4<i32>(i32(-2147483648), 1i, 0i, -1i), Struct_1(vec4<f32>(667f, 1696f, 1435f, 302f), vec2<f32>(-1657f, 723f), vec2<bool>(false, false)), Struct_3(true, Struct_2(vec2<bool>(false, true)), false), -41905i), Struct_4(0i, vec4<i32>(1i, 2147483647i, -40932i, i32(-2147483648)), Struct_1(vec4<f32>(-372f, 1000f, -1240f, -1545f), vec2<f32>(131f, -1299f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(false, true)), false), -14826i), Struct_4(-1i, vec4<i32>(68759i, -1i, 35638i, -1i), Struct_1(vec4<f32>(560f, -2156f, 1000f, -495f), vec2<f32>(580f, 770f), vec2<bool>(true, false)), Struct_3(false, Struct_2(vec2<bool>(true, false)), false), -30856i), Struct_4(1i, vec4<i32>(i32(-2147483648), -2184i, 2147483647i, 2147483647i), Struct_1(vec4<f32>(-1153f, -1473f, 579f, -806f), vec2<f32>(-1062f, -887f), vec2<bool>(false, false)), Struct_3(true, Struct_2(vec2<bool>(true, true)), true), 0i), Struct_4(1i, vec4<i32>(1360i, i32(-2147483648), 0i, -42566i), Struct_1(vec4<f32>(1225f, -757f, -215f, 2276f), vec2<f32>(-704f, 621f), vec2<bool>(false, false)), Struct_3(false, Struct_2(vec2<bool>(false, true)), true), -27187i), Struct_4(2147483647i, vec4<i32>(i32(-2147483648), 55130i, -4670i, 1736i), Struct_1(vec4<f32>(-1089f, 219f, -390f, -127f), vec2<f32>(-223f, -2399f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(true, true)), true), 0i), Struct_4(0i, vec4<i32>(i32(-2147483648), -1i, 2023i, 32770i), Struct_1(vec4<f32>(-707f, 185f, 1056f, -584f), vec2<f32>(709f, 889f), vec2<bool>(false, false)), Struct_3(true, Struct_2(vec2<bool>(false, true)), true), 22441i), Struct_4(-7817i, vec4<i32>(6595i, 1i, 0i, 1i), Struct_1(vec4<f32>(-1785f, -820f, 957f, 322f), vec2<f32>(-531f, 1000f), vec2<bool>(false, false)), Struct_3(true, Struct_2(vec2<bool>(true, false)), false), 3212i), Struct_4(-31530i, vec4<i32>(12377i, -18207i, 1i, -4593i), Struct_1(vec4<f32>(-1543f, 604f, 1004f, -831f), vec2<f32>(509f, -896f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(false, false)), true), -2270i), Struct_4(-6949i, vec4<i32>(i32(-2147483648), 0i, -1875i, i32(-2147483648)), Struct_1(vec4<f32>(-1063f, -1137f, 134f, -803f), vec2<f32>(-1000f, -468f), vec2<bool>(true, true)), Struct_3(true, Struct_2(vec2<bool>(false, false)), true), 43287i), Struct_4(i32(-2147483648), vec4<i32>(0i, 0i, 54285i, -1i), Struct_1(vec4<f32>(-111f, 734f, 541f, 1000f), vec2<f32>(-1039f, 745f), vec2<bool>(false, true)), Struct_3(true, Struct_2(vec2<bool>(false, false)), true), -6085i), Struct_4(1i, vec4<i32>(0i, 22316i, 172i, 0i), Struct_1(vec4<f32>(-1330f, 1338f, 454f, -1203f), vec2<f32>(-1262f, -141f), vec2<bool>(false, false)), Struct_3(true, Struct_2(vec2<bool>(false, true)), true), 2147483647i), Struct_4(1i, vec4<i32>(-58380i, 0i, i32(-2147483648), 48524i), Struct_1(vec4<f32>(2051f, -1080f, -144f, 811f), vec2<f32>(-1791f, -888f), vec2<bool>(true, false)), Struct_3(true, Struct_2(vec2<bool>(true, true)), false), 14948i), Struct_4(13769i, vec4<i32>(i32(-2147483648), -21935i, -2046i, 1i), Struct_1(vec4<f32>(-715f, 826f, 1098f, 1285f), vec2<f32>(-329f, -353f), vec2<bool>(true, false)), Struct_3(false, Struct_2(vec2<bool>(true, false)), false), -48974i));

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b) & firstLeadingBit(abs(~71693u)), 31u)];
    global1 = array<Struct_4, 21>();
    var var_1 = vec3<i32>(arg_1.x, u_input.a, u_input.a);
    let var_2 = ~select(vec3<u32>(u_input.b, countOneBits(_wgslsmith_div_u32(u_input.b, 1u)), ~4294967295u), abs(vec3<u32>(1u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44111u, u_input.b, 1u), vec4<u32>(1u, u_input.b, u_input.b, 0u)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.x, true, true), true), vec3<bool>(true, var_0.a.x, false), !vec3<bool>(true, var_0.a.x, false)), !(!vec3<bool>(false, var_0.a.x, var_0.a.x)), var_0.a.x));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-710f))));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1320f, -687f), vec2<f32>(-440f, -138f), true)) * vec2<f32>(-530f, -1000f)), -vec4<i32>(u_input.a, 1127i, 61767i, 42144i))) * 1245f));
    global0 = 1562f;
    var var_0 = Struct_5(u_input.b, -2147483647i, select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, false), select(vec4<bool>(true, true, u_input.b < u_input.b, all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), u_input.b <= reverseBits(~u_input.b)));
    var var_1 = select(select(select(vec2<bool>(true, !var_0.c.x), vec2<bool>(var_0.c.x, all(var_0.c.zwy)), true), var_0.c.xz, var_0.c.xy), select(var_0.c.zy, vec2<bool>(true, any(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x))), !(!var_0.c.x)), all(var_0.c));
    global2 = array<Struct_2, 31>();
    return -1582f;
}

fn func_1() -> vec4<bool> {
    let var_0 = 6868u;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-901f * 255f) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-407f, _wgslsmith_f_op_f32(ceil(655f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -468f)))))));
    global1 = array<Struct_4, 21>();
    var var_2 = -234f;
    var var_3 = Struct_4(abs(1i), ~vec4<i32>(_wgslsmith_mult_i32(u_input.a, -u_input.a), u_input.a, abs(_wgslsmith_mod_i32(u_input.a, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 2723i, u_input.a)) & u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(_wgslsmith_f_op_f32(448f + 356f), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(ceil(604f)), _wgslsmith_f_op_f32(-668f - 949f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1912f, _wgslsmith_f_op_f32(1404f + -1000f)), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(315f, -534f), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1205f)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), true)), Struct_3(true, Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false && all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), -1i);
    return vec4<bool>(true, var_3.d.a, any(vec2<bool>(!var_3.d.b.a.x, var_3.c.c.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = Struct_5(~1u ^ abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(40702u, 1u, 9706u)), vec3<u32>(1u, 26987u, 1u))), -(i32(-1i) * -6568i) >> (_wgslsmith_div_u32(42957u, _wgslsmith_clamp_u32(1u, ~u_input.b, _wgslsmith_div_u32(16359u, 11444u))) % 32u), select(func_1(), !vec4<bool>(true, all(vec4<bool>(false, true, false, false)), false, true), !(all(vec3<bool>(false, true, false)) || true)));
    var_0 = var_1.a;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1000f)), ~(~reverseBits(var_1.b)));
}

