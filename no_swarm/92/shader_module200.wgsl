struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-1i, -18979i), vec2<i32>(-14328i, i32(-2147483648)), vec2<i32>(-7157i, 1i), vec2<i32>(18552i, -4340i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(26114i, 15838i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 12124i), vec2<i32>(-219i, 2147483647i), vec2<i32>(-9226i, i32(-2147483648)), vec2<i32>(17105i, -16797i), vec2<i32>(6459i, 27857i), vec2<i32>(1i, 1i), vec2<i32>(-44837i, 2147483647i), vec2<i32>(-75436i, -6048i), vec2<i32>(17267i, i32(-2147483648)), vec2<i32>(-27855i, 7807i), vec2<i32>(2147483647i, -6589i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 23110u, 11747u, 1u), vec4<u32>(21543u, 13413u, 26771u, 1u), vec4<u32>(72540u, 98913u, 0u, 50425u), vec4<u32>(1u, 1u, 12549u, 59707u), vec4<u32>(15685u, 0u, 17097u, 4294967295u), vec4<u32>(37151u, 13472u, 7961u, 0u), vec4<u32>(4294967295u, 23154u, 10245u, 30789u), vec4<u32>(0u, 11540u, 40233u, 23215u), vec4<u32>(0u, 4294967295u, 30507u, 24434u), vec4<u32>(1u, 38581u, 0u, 10080u), vec4<u32>(33973u, 0u, 17032u, 4294967295u), vec4<u32>(56988u, 0u, 45504u, 29530u), vec4<u32>(0u, 25373u, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 61140u), vec4<u32>(17402u, 0u, 1u, 66514u), vec4<u32>(1u, 8896u, 1u, 23323u), vec4<u32>(27314u, 80083u, 4294967295u, 90231u), vec4<u32>(5014u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 47191u, 0u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(2910u, 4294967295u, 26732u, 31494u), vec4<u32>(1u, 70133u, 4294967295u, 4294967295u), vec4<u32>(26648u, 66953u, 0u, 4294967295u), vec4<u32>(0u, 1851u, 0u, 50701u), vec4<u32>(1037u, 1u, 75188u, 35138u), vec4<u32>(4294967295u, 4294967295u, 0u, 39996u), vec4<u32>(85774u, 78351u, 2197u, 0u), vec4<u32>(0u, 0u, 1u, 35345u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    global1 = !select(!vec4<bool>(global1.x && global1.x, false, false, false), vec4<bool>(global1.x, true, true, !global1.x), true || all(global1.zyz));
    let var_0 = ~1u;
    let var_1 = ~0u;
    var var_2 = ~countOneBits(vec3<u32>(countOneBits(var_1 >> (34673u % 32u)), _wgslsmith_clamp_u32(var_0, firstLeadingBit(var_0), ~var_1), abs(33432u)));
    let var_3 = Struct_1(vec3<i32>(-1i, 0i, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(u_input.a.x, 45914i), 2147483647i))), vec4<bool>(_wgslsmith_div_i32(-u_input.a.x, arg_0.x) != -arg_0.x, !global1.x, true, global1.x), -1023f);
    return arg_0.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_3.a, arg_3.b, arg_3.c);
    let var_1 = arg_3;
    var var_2 = func_3(vec2<i32>(var_0.a.x & -1i, var_1.a.x), _wgslsmith_f_op_f32(-252f * 717f));
    let var_3 = vec3<i32>(-1i, -2147483647i, firstTrailingBit(31704i));
    var var_4 = 2702i >= -(~(u_input.a.x & firstLeadingBit(1i)));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global2 = array<vec4<u32>, 28>();
    var var_0 = func_2(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))))), 198f, arg_0);
    let var_1 = _wgslsmith_clamp_i32(arg_1.a.x, -u_input.a.x, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-20236i, 0i, arg_0.a.x, -2147483647i), countOneBits(vec4<i32>(arg_1.a.x, var_0.a.x, -1i, 16080i)))) << (12337u % 32u);
    let var_2 = vec3<bool>(!(!(!any(arg_0.b.xwx))), any(func_2(~firstTrailingBit(0u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1292f)), vec2<f32>(197f, -1261f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * 2368f)), func_2(4294967295u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c, arg_0.c))), func_2(33657u, vec2<f32>(-2100f, 1502f), 203f, Struct_1(var_0.a, var_0.b, arg_1.c)).c, func_2(1u, vec2<f32>(227f, -1643f), -616f, Struct_1(var_0.a, vec4<bool>(false, false, arg_0.b.x, false), -463f)))).b.wz), var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.c);
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec4<u32>, 28>();
    let var_0 = !((_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_0.a.x, -21162i), arg_1.a), abs(35284i)) << (~select(52912u, 0u, true) % 32u)) == _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-23305i, 0i, 31132i, 2147483647i), vec4<i32>(17783i, arg_1.a.x, u_input.a.x, 2147483647i)), u_input.a.x));
    global0 = array<vec2<i32>, 18>();
    let var_1 = _wgslsmith_mod_vec3_i32(func_4(func_2(1u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(3246f, -820f), vec2<f32>(-311f, -668f)))), _wgslsmith_f_op_f32(abs(arg_1.c)), arg_0), arg_1), ~vec3<i32>(u_input.a.x, arg_0.a.x, arg_1.a.x));
    global1 = arg_0.b;
    return Struct_1(-_wgslsmith_div_vec3_i32(-vec3<i32>(27525i, 0i, 17017i), vec3<i32>(27118i, u_input.a.x, arg_0.a.x)) & (arg_0.a | vec3<i32>(1i, firstLeadingBit(arg_1.a.x), -u_input.a.x)), vec4<bool>(select(arg_0.b.x, global1.x, global1.x), true, global1.x, all(vec4<bool>(func_2(1u, vec2<f32>(arg_1.c, arg_1.c), arg_0.c, arg_1).b.x, true, true, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = 0i;
    let var_1 = func_1(func_2(firstTrailingBit(1u), vec2<f32>(_wgslsmith_f_op_f32(-603f - -522f), _wgslsmith_f_op_f32(floor(arg_0.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c, -598f), _wgslsmith_f_op_f32(1553f * _wgslsmith_f_op_f32(arg_0.c - arg_0.c))), func_1(func_2(_wgslsmith_add_u32(0u, 29103u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(271f, arg_0.c), vec2<f32>(-767f, arg_0.c))), _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)), func_1(Struct_1(vec3<i32>(1i, arg_0.a.x, arg_0.a.x), arg_0.b, arg_0.c), Struct_1(vec3<i32>(var_0, 15741i, u_input.a.x), vec4<bool>(false, true, true, arg_0.b.x), 508f))), arg_0)), arg_0).a.x;
    var var_2 = arg_0;
    return func_1(arg_0, arg_0).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), reverseBits(vec2<u32>(_wgslsmith_add_u32(40791u, 13771u), ~4876u)));
    var var_1 = false;
    global1 = select(vec4<bool>(true, any(vec3<bool>(!global1.x, global1.x, true)), all(!vec4<bool>(false, true, global1.x, global1.x)), !(!global1.x)), vec4<bool>(!global1.x, true, !(!global1.x), global1.x), vec4<bool>(!(!global1.x) & select(global1.x, all(global1.xy), false || global1.x), false, true, !((false || global1.x) & select(global1.x, true, false))));
    global2 = array<vec4<u32>, 28>();
    let var_2 = vec3<i32>(~_wgslsmith_sub_i32(-1i, u_input.a.x), -44848i, _wgslsmith_mod_i32(~(_wgslsmith_sub_i32(-1i, -11705i) | _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 48559i)), _wgslsmith_mult_i32(-u_input.a.x, func_5(func_1(Struct_1(vec3<i32>(-66956i, u_input.a.x, u_input.a.x), vec4<bool>(true, global1.x, true, true), -116f), Struct_1(vec3<i32>(12720i, u_input.a.x, 2147483647i), vec4<bool>(global1.x, global1.x, true, global1.x), 513f))))));
    global1 = vec4<bool>(global1.x, false, true, true);
    var var_3 = global1.www;
    var var_4 = _wgslsmith_f_op_f32(1178f + func_2(reverseBits(1u) | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(26729u, 4294967295u)), ~61295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, _wgslsmith_f_op_f32(trunc(-575f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2642f, -1416f)) * _wgslsmith_f_op_f32(446f + -915f)), -880f), Struct_1(func_4(Struct_1(var_2, vec4<bool>(var_3.x, var_3.x, false, global1.x), -1000f), func_1(Struct_1(var_2, vec4<bool>(false, var_3.x, var_3.x, var_3.x), 639f), Struct_1(var_2, vec4<bool>(global1.x, false, false, global1.x), 868f))), vec4<bool>(true, true, true, any(vec2<bool>(false, global1.x))), 1f)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(24117u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-519f, 457f), vec2<f32>(1291f, -159f), var_3.zx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1144f, -398f)), !vec2<bool>(global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2409f + 1044f) - _wgslsmith_f_op_f32(728f * 872f)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -20916i, var_2.x), var_2), !vec4<bool>(false, var_3.x, global1.x, var_3.x), -610f)).c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) - _wgslsmith_f_op_f32(sign(2569f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1213f, 546f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1211f)), _wgslsmith_f_op_f32(select(524f, -1240f, var_3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(440f, 962f), vec2<f32>(815f, -741f), var_3.zy)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(1078f, -2619f)), -1134f))))));
}

