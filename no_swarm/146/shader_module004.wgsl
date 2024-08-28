struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<i32>(-4397i, -1i), Struct_1(vec2<f32>(-722f, 273f), 1971f, vec4<i32>(57261i, 14900i, 2147483647i, 1i))), Struct_2(vec2<i32>(0i, 1i), Struct_1(vec2<f32>(1202f, 356f), -704f, vec4<i32>(-25627i, 0i, 1i, -1i))), Struct_2(vec2<i32>(i32(-2147483648), 53539i), Struct_1(vec2<f32>(-2253f, -1057f), 479f, vec4<i32>(i32(-2147483648), i32(-2147483648), -9473i, 0i))), Struct_2(vec2<i32>(2268i, -1i), Struct_1(vec2<f32>(1125f, -648f), 1014f, vec4<i32>(26857i, 0i, 34605i, i32(-2147483648)))), Struct_2(vec2<i32>(i32(-2147483648), -3488i), Struct_1(vec2<f32>(625f, -387f), -796f, vec4<i32>(i32(-2147483648), 23376i, -10469i, 9625i))), Struct_2(vec2<i32>(-11787i, -1i), Struct_1(vec2<f32>(-1000f, 1223f), 1901f, vec4<i32>(i32(-2147483648), -6306i, -1i, 19153i))), Struct_2(vec2<i32>(28699i, 45912i), Struct_1(vec2<f32>(1452f, 1841f), -1000f, vec4<i32>(23222i, -4801i, 0i, 18050i))), Struct_2(vec2<i32>(1i, 0i), Struct_1(vec2<f32>(1000f, 1402f), -522f, vec4<i32>(1i, 0i, 21194i, i32(-2147483648)))), Struct_2(vec2<i32>(19498i, 38415i), Struct_1(vec2<f32>(-1856f, -348f), -110f, vec4<i32>(1i, 18785i, -27150i, -32998i))), Struct_2(vec2<i32>(8450i, 42698i), Struct_1(vec2<f32>(-673f, 1526f), -1000f, vec4<i32>(32784i, i32(-2147483648), 0i, -14471i))), Struct_2(vec2<i32>(-35410i, -40369i), Struct_1(vec2<f32>(516f, 200f), -861f, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -36549i))), Struct_2(vec2<i32>(-8861i, 21081i), Struct_1(vec2<f32>(-1000f, -1160f), 132f, vec4<i32>(-1i, 2147483647i, -1i, 33681i))), Struct_2(vec2<i32>(35770i, 1340i), Struct_1(vec2<f32>(211f, -1354f), -172f, vec4<i32>(-1i, -56355i, 2147483647i, -1i))), Struct_2(vec2<i32>(0i, -27010i), Struct_1(vec2<f32>(-1420f, -158f), 263f, vec4<i32>(12637i, -39731i, 1i, 7280i))), Struct_2(vec2<i32>(i32(-2147483648), -4369i), Struct_1(vec2<f32>(112f, -268f), -923f, vec4<i32>(-35622i, -1i, -1i, 0i))), Struct_2(vec2<i32>(-1i, 0i), Struct_1(vec2<f32>(604f, 1179f), 837f, vec4<i32>(-5367i, -1i, 0i, 36895i))), Struct_2(vec2<i32>(-74396i, 2147483647i), Struct_1(vec2<f32>(583f, 766f), 1000f, vec4<i32>(39537i, -799i, -29180i, 1i))), Struct_2(vec2<i32>(0i, 0i), Struct_1(vec2<f32>(-2075f, 1673f), 1000f, vec4<i32>(1i, 1i, 45295i, 0i))));

var<private> global1: array<bool, 12>;

var<private> global2: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: u32) -> vec2<f32> {
    let var_0 = select(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 13550u, 0u), vec3<u32>(arg_3, arg_3, 4294967295u)) | vec3<u32>(4294967295u, 61174u, 5360u)), vec3<u32>(arg_3 << (arg_3 % 32u), 24688u, arg_3 ^ arg_3) | abs(vec3<u32>(arg_3, arg_3, 33662u)), arg_1) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, u_input.a, u_input.a) << (vec3<u32>(0u, arg_3, 32969u) % vec3<u32>(32u)), firstTrailingBit(select(vec3<u32>(50760u, 54555u, u_input.a), vec3<u32>(u_input.c, u_input.a, u_input.c), global1[_wgslsmith_index_u32(27843u, 12u)])));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f - -933f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(702f * 1337f), _wgslsmith_f_op_f32(f32(-1f) * -213f))), all(select(vec2<bool>(arg_1, global1[_wgslsmith_index_u32(arg_3, 12u)]), vec2<bool>(true, arg_1), vec2<bool>(global1[_wgslsmith_index_u32(arg_3, 12u)], arg_1)))))));
    let var_2 = Struct_4(reverseBits(~reverseBits(var_0)), (u_input.c << (_wgslsmith_add_u32(~var_0.x, _wgslsmith_mod_u32(51846u, var_0.x)) % 32u)) << (u_input.a % 32u), Struct_3(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(4642u, 12u)]), !vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(false, global1[_wgslsmith_index_u32(19989u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true)), -2147483647i < u_input.b.x), 4294967295u >= u_input.a)), !vec2<bool>(arg_1, false));
    let var_3 = ~max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_2, -2147483647i, arg_2), u_input.b.wyz, arg_2 >= 27705i), vec3<i32>(-2147483647i, 46654i, arg_2)), u_input.b.wxw & (vec3<i32>(44216i, 1639i, arg_2) & u_input.b.xzz));
    var var_4 = var_2.c.a;
    return _wgslsmith_f_op_vec2_f32(round(var_1.yx));
}

fn func_2() -> bool {
    var var_0 = Struct_2(~vec2<i32>(reverseBits(u_input.d), u_input.d), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(i32(-1i) * -64948i, true, ~(-68243i), 43727u)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1098f, -1666f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(203f)) - 902f)), _wgslsmith_div_vec4_i32(select(u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(0i, u_input.d, 1i, 0i)), true), u_input.b)));
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_add_u32(u_input.c, u_input.a);
    var var_2 = var_0.b;
    let var_3 = min(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(85301u, u_input.a, 25972u, u_input.a), vec4<u32>(1864u, var_1, 32563u, u_input.c)) << (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1, 6409u, 30566u), vec4<u32>(1u, var_1, var_1, u_input.a))) % vec4<u32>(32u)), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1, 1u, 0u), vec4<u32>(u_input.c, 18849u, var_1, 1u)))), vec4<u32>(0u, 1u, ~var_1, ~var_1));
    return global1[_wgslsmith_index_u32(u_input.a, 12u)];
}

fn func_4(arg_0: bool) -> Struct_3 {
    let var_0 = ~select(_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b.x), u_input.d, u_input.d << (65579u % 32u), min(u_input.b.x, u_input.b.x)), -(u_input.b << (vec4<u32>(0u, 1u, 17091u, u_input.c) % vec4<u32>(32u)))), u_input.b, any(select(select(vec4<bool>(false, false, true, arg_0), vec4<bool>(true, global1[_wgslsmith_index_u32(28342u, 12u)], arg_0, false), global1[_wgslsmith_index_u32(65905u, 12u)]), vec4<bool>(arg_0, arg_0, true, false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(2609u, 12u)], true))));
    global2 = all(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 12u)]), arg_0), vec2<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(27369u, 12u)], arg_0), vec2<bool>(true, true), true), select(vec2<bool>(true, arg_0), select(vec2<bool>(false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(86552u, 12u)]), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(68486u, 12u)]), vec2<bool>(false, false)))), vec2<bool>(true | global1[_wgslsmith_index_u32(0u, 12u)], !any(vec4<bool>(true, true, false, false))), select(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 12u)])), !vec2<bool>(arg_0, arg_0), !select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, true)))));
    var var_1 = ~abs(select(select(vec3<u32>(6063u, u_input.c, 4294967295u), vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<bool>(false, false, arg_0)), vec3<u32>(1u, u_input.a, u_input.a), select(vec3<bool>(global1[_wgslsmith_index_u32(74810u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(6787u, 12u)]), vec3<bool>(false, arg_0, global1[_wgslsmith_index_u32(u_input.c, 12u)]), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(53625u, 12u)]))) & ~(~vec3<u32>(u_input.a, u_input.a, 1u)));
    global1 = array<bool, 12>();
    var var_2 = 1000f;
    return Struct_3(vec2<bool>(true, arg_0));
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2() && (!global1[_wgslsmith_index_u32(u_input.a, 12u)] && func_2()));
    let var_1 = !any(vec2<bool>(any(vec2<bool>(var_0.a.x, true)), true));
    global0 = array<Struct_2, 18>();
    let var_2 = var_1;
    var var_3 = 452f;
    return countOneBits(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    let var_1 = select(select(!func_4(select(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])).a, vec2<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(2201u, 12u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(52303u, 12u)]), false)), (u_input.b.x | u_input.b.x) == u_input.d), func_4(global1[_wgslsmith_index_u32(~(u_input.c ^ 26099u), 12u)]).a), vec2<bool>(global1[_wgslsmith_index_u32(~abs(~u_input.c), 12u)], all(vec4<bool>(any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], true)), global1[_wgslsmith_index_u32(u_input.a, 12u)], select(true, false, global1[_wgslsmith_index_u32(8189u, 12u)]), global1[_wgslsmith_index_u32(u_input.a << (u_input.c % 32u), 12u)]))), !vec2<bool>(true, global1[_wgslsmith_index_u32(~u_input.a >> (abs(39398u) % 32u), 12u)]));
    let var_2 = vec3<f32>(-1576f, 397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-913f, -803f)), 1f))));
    var var_3 = Struct_5(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(floor(-1469f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_mod_vec4_i32(~select(u_input.b, u_input.b, true), vec4<i32>(u_input.b.x ^ u_input.b.x, 1i, -13475i, u_input.d))), Struct_2(select(-vec2<i32>(u_input.b.x, u_input.b.x), -_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(u_input.d, -1i)), vec2<bool>(global1[_wgslsmith_index_u32(59527u, 12u)] & true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, 1000f))), 685f, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 22220i, -2147483647i, -14072i), vec4<i32>(u_input.b.x, -82993i, -1i, u_input.d)))), func_4(true), all(vec4<bool>(any(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], false)), true, var_1.x, false)));
    var_0 = select(u_input.c, u_input.a, true);
    var var_4 = u_input.b.wx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(min(u_input.c, u_input.a) | 1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c), 0u, _wgslsmith_add_u32(73786u, u_input.a), 17402u), vec4<u32>(4294967295u, 49053u, 0u, _wgslsmith_mult_u32(u_input.a, 0u))), 0u), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, var_2.x, -1023f))))));
}

