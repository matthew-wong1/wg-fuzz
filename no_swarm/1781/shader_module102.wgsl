struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(793f, vec3<u32>(5368u, 55048u, 4294967295u), 122f, Struct_3(1000f, Struct_2(-2301f, -282f, 0u)), -5964i), Struct_4(-269f, vec3<u32>(61423u, 1u, 20620u), 698f, Struct_3(-1271f, Struct_2(1486f, 1052f, 34520u)), -57953i), Struct_4(759f, vec3<u32>(24915u, 0u, 3630u), 108f, Struct_3(1057f, Struct_2(1915f, -1071f, 34115u)), 0i), Struct_4(265f, vec3<u32>(4294967295u, 48694u, 30238u), -1836f, Struct_3(-242f, Struct_2(1077f, -1000f, 1u)), 2147483647i), Struct_4(-1546f, vec3<u32>(44201u, 96087u, 96977u), 1000f, Struct_3(357f, Struct_2(1132f, -871f, 2998u)), -37344i), Struct_4(-244f, vec3<u32>(0u, 72989u, 19596u), -1244f, Struct_3(-634f, Struct_2(-784f, -1380f, 2594u)), 28407i), Struct_4(1314f, vec3<u32>(34036u, 35204u, 25511u), -132f, Struct_3(1012f, Struct_2(382f, -959f, 21700u)), 0i), Struct_4(-202f, vec3<u32>(1u, 16499u, 34153u), -325f, Struct_3(-1000f, Struct_2(1000f, 282f, 64989u)), 1i), Struct_4(-973f, vec3<u32>(1u, 77396u, 20586u), -902f, Struct_3(125f, Struct_2(133f, 508f, 4294967295u)), 11645i), Struct_4(-1357f, vec3<u32>(4294967295u, 1u, 4294967295u), 666f, Struct_3(652f, Struct_2(648f, -801f, 73539u)), 3386i), Struct_4(860f, vec3<u32>(0u, 44213u, 0u), 492f, Struct_3(-1369f, Struct_2(-1268f, -1765f, 4294967295u)), -1i), Struct_4(-1661f, vec3<u32>(1u, 39528u, 31717u), -228f, Struct_3(-460f, Struct_2(-790f, 665f, 77579u)), i32(-2147483648)), Struct_4(163f, vec3<u32>(0u, 14238u, 72571u), -263f, Struct_3(-820f, Struct_2(730f, -1000f, 0u)), i32(-2147483648)), Struct_4(1000f, vec3<u32>(0u, 107789u, 1u), -1000f, Struct_3(1000f, Struct_2(-1073f, 433f, 4294967295u)), 9002i), Struct_4(-262f, vec3<u32>(5254u, 4768u, 61339u), 393f, Struct_3(749f, Struct_2(-323f, 468f, 6802u)), -3850i), Struct_4(1003f, vec3<u32>(479u, 1u, 1u), -729f, Struct_3(1784f, Struct_2(1552f, 446f, 4294967295u)), 12340i));

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-1699f, -1000f, 1u), Struct_2(546f, -1345f, 0u), Struct_2(-786f, 271f, 44494u), Struct_2(-1547f, -137f, 52330u), Struct_2(-3062f, 702f, 1u), Struct_2(-440f, -124f, 42256u), Struct_2(277f, -1073f, 4294967295u), Struct_2(2008f, 976f, 4294967295u), Struct_2(198f, 1009f, 13034u), Struct_2(1097f, -192f, 94800u), Struct_2(1000f, -971f, 5768u), Struct_2(-996f, -163f, 64975u), Struct_2(1160f, -1000f, 4294967295u), Struct_2(-1620f, 1228f, 4294967295u), Struct_2(-776f, 1205f, 4294967295u), Struct_2(-965f, 289f, 1u), Struct_2(1323f, -443f, 47025u), Struct_2(435f, 440f, 4294967295u), Struct_2(236f, 402f, 6170u), Struct_2(772f, 1000f, 4294967295u), Struct_2(1149f, -485f, 1u), Struct_2(-669f, 1000f, 41967u), Struct_2(-170f, -670f, 4956u), Struct_2(-292f, 245f, 1u));

var<private> global3: array<f32, 6> = array<f32, 6>(645f, 714f, 1088f, -219f, 1477f, -1159f);

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> i32 {
    global3 = array<f32, 6>();
    global4 = true;
    global2 = array<Struct_2, 24>();
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(arg_1, -12136i, -(i32(-1i) * -27691i));
    global1 = array<Struct_4, 16>();
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], abs(~vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(ceil(-799f)), Struct_3(1000f, global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), i32(-1i) * -(~1i));
    global4 = all(arg_0);
    global1 = array<Struct_4, 16>();
    let var_1 = var_0;
    let var_2 = false;
    return Struct_1(vec2<i32>(var_0.e, func_3(var_1, -(i32(-1i) * -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = array<vec4<bool>, 32>();
    var var_0 = arg_1;
    var var_1 = select(!global0[_wgslsmith_index_u32(var_0.b.c, 32u)], global0[_wgslsmith_index_u32(0u & countOneBits(min(min(arg_3, u_input.a.x), var_0.b.c ^ u_input.a.x)), 32u)], select(select(select(vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(27061u, 32u)], true), !select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec4<bool>(false, false, true, true)), global0[_wgslsmith_index_u32(var_0.b.c, 32u)]), global0[_wgslsmith_index_u32(var_0.b.c, 32u)], arg_3 > ~abs(arg_3)));
    var var_2 = -vec3<i32>(((arg_0.a.x ^ 20353i) ^ 1i) & _wgslsmith_div_i32(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 20420i, arg_2), vec4<i32>(7520i, arg_0.a.x, -15741i, 1i))), arg_0.a.x, min(arg_2, arg_2) << (4294967295u % 32u));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b.c, 6u)]), vec3<u32>(3150u, 0u, ~var_0.b.c), 155f, arg_1, arg_0.a.x);
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = vec4<bool>(any(vec4<bool>(true, !all(vec2<bool>(false, false)), true, false)), (~(u_input.a.x | u_input.a.x) <= ~arg_0.b.c) || true, true, -11143i != (_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i)) ^ ~7116i));
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(select(vec2<i32>(0i, 6616i), vec2<i32>(33375i, -2147483647i), vec2<bool>(var_0.x, var_0.x)) | vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))));
    var var_3 = _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a);
    global0 = array<vec4<bool>, 32>();
    return min(vec3<i32>(-1i, firstTrailingBit(abs(0i)), firstTrailingBit(1i)), vec3<i32>(var_2.a.x, -2147483647i, -23793i));
}

fn func_1(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var var_1 = min(17109i, ~(-40464i));
    var_1 = i32(-1i) * -44164i;
    let var_2 = 8486i;
    var var_3 = !any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return ~(~func_5(func_4(func_2(vec3<bool>(true, false, true), vec4<f32>(arg_0.x, global3[_wgslsmith_index_u32(1u, 6u)], arg_0.x, 1000f)), Struct_3(-1340f, global2[_wgslsmith_index_u32(94745u, 24u)]), _wgslsmith_add_i32(-8675i, 13986i), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1345f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(abs(46791u), 6u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 6u)] * global3[_wgslsmith_index_u32(0u, 6u)])), 1407f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1011f, global3[_wgslsmith_index_u32(30394u, 6u)]) * global3[_wgslsmith_index_u32(~4294967295u, 6u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 510f, 450f) - vec4<f32>(-1000f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)]))))));
    let var_1 = global2[_wgslsmith_index_u32(36882u, 24u)];
    let var_2 = global1[_wgslsmith_index_u32(~1u | (~(var_1.c | 23235u) & 49497u), 16u)];
    global2 = array<Struct_2, 24>();
    let var_3 = var_2.d;
    var var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(var_2.e, -2147483647i, var_2.e) | vec3<i32>(-33137i, 1i, var_2.e)), func_1(_wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(789f, -159f, var_2.c, 559f)))), -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-22656i, 2147483647i, var_2.e), vec3<i32>(-1i, var_2.e, var_2.e)), vec3<i32>(-2147483647i, -15009i, var_2.e))) >> ((~(vec3<u32>(var_3.b.c, var_1.c, 46864u) | vec3<u32>(20341u, 31603u, var_3.b.c)) ^ vec3<u32>(abs(~var_1.c), var_1.c, 0u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

