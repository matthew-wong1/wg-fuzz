struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec4<f32>(-1487f, 174f, 1000f, 1013f), 6760u), Struct_4(vec4<f32>(381f, 1088f, -1437f, 593f), 0u), Struct_4(vec4<f32>(137f, 725f, -112f, 386f), 51701u), Struct_4(vec4<f32>(-1080f, -329f, -369f, 316f), 59532u), Struct_4(vec4<f32>(1308f, -899f, 360f, -116f), 1u), Struct_4(vec4<f32>(1033f, -1366f, -1000f, 1094f), 4294967295u), Struct_4(vec4<f32>(312f, -609f, 1000f, -1000f), 1491u), Struct_4(vec4<f32>(-143f, 429f, 855f, 1239f), 1u), Struct_4(vec4<f32>(1229f, 1549f, 104f, -1352f), 44695u), Struct_4(vec4<f32>(1607f, 2089f, -442f, -469f), 24351u), Struct_4(vec4<f32>(-583f, -1208f, 265f, -323f), 0u), Struct_4(vec4<f32>(-111f, -485f, 579f, 1199f), 27904u), Struct_4(vec4<f32>(1471f, 1001f, 296f, -240f), 13758u), Struct_4(vec4<f32>(-1011f, -515f, -1000f, -1436f), 0u), Struct_4(vec4<f32>(602f, 1589f, 2038f, 1041f), 0u), Struct_4(vec4<f32>(1000f, 306f, -1004f, 1843f), 1u), Struct_4(vec4<f32>(-351f, -500f, 612f, -1019f), 1u), Struct_4(vec4<f32>(-1454f, 887f, -598f, 379f), 4294967295u), Struct_4(vec4<f32>(-1940f, 1000f, 521f, -1267f), 4294967295u), Struct_4(vec4<f32>(-114f, -881f, 2439f, -1359f), 4294967295u), Struct_4(vec4<f32>(933f, 755f, -618f, -1763f), 4294967295u), Struct_4(vec4<f32>(-1683f, 662f, 350f, -471f), 4294967295u), Struct_4(vec4<f32>(1000f, -156f, 470f, -1000f), 6872u), Struct_4(vec4<f32>(619f, -712f, -269f, 159f), 0u), Struct_4(vec4<f32>(-1714f, 541f, -142f, 474f), 33429u), Struct_4(vec4<f32>(444f, -1000f, -193f, -296f), 77274u), Struct_4(vec4<f32>(-1926f, -1359f, -437f, 1169f), 21494u), Struct_4(vec4<f32>(-509f, 1000f, -1822f, 549f), 42911u), Struct_4(vec4<f32>(-890f, -332f, -176f, 292f), 0u), Struct_4(vec4<f32>(602f, -1466f, -621f, -289f), 0u), Struct_4(vec4<f32>(1372f, -937f, -209f, 924f), 0u), Struct_4(vec4<f32>(1753f, -1239f, -884f, 1446f), 0u));

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1172f);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> vec3<i32> {
    global2 = array<Struct_4, 32>();
    global2 = array<Struct_4, 32>();
    var var_0 = reverseBits(abs(vec4<i32>(max(-1i, 0i), -56355i, ~(~arg_0), 27774i)));
    var var_1 = global2[_wgslsmith_index_u32(5363u, 32u)];
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, var_1.a.x, -573f, var_1.a.x))))), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.a.yyw, arg_1.a.zxz, vec3<u32>(55662u, 4294967295u, u_input.a.x)) | min(vec3<u32>(arg_1.a.x, 1u, u_input.a.x), arg_1.a.wzx), ~vec3<u32>(arg_1.a.x, 24802u, u_input.a.x)), 0u), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(293f * arg_3.x))), 1686f, countOneBits(vec3<i32>(-1362i, -18102i, arg_2) << (_wgslsmith_div_vec3_u32(vec3<u32>(50875u, 0u, arg_1.a.x), vec3<u32>(arg_1.a.x, var_1.b, u_input.a.x)) % vec3<u32>(32u))), var_0.x << (76958u % 32u), arg_1));
    return _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0 ^ (arg_2 & arg_0), var_2.c.d, arg_0), countOneBits(select(-var_0.yzy, var_2.c.c, var_2.c.e.c.a)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_1(arg_0.c.a, true);
    global3 = array<Struct_3, 32>();
    let var_1 = global3[_wgslsmith_index_u32(67742u, 32u)];
    global3 = array<Struct_3, 32>();
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 1f, -(~vec3<i32>(-7164i, 2147483647i, var_1.c.x)) ^ func_4(-31876i, var_1.e, -9353i, vec4<f32>(_wgslsmith_f_op_f32(-332f - var_1.a.x), var_1.b, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-var_1.b))), 0i, var_1.e);
    return ~0u;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, arg_3.c.d >> ((firstLeadingBit(2084u) << (u_input.a.x % 32u)) % 32u)), arg_3.c.c.x);
    global0 = array<vec2<u32>, 6>();
    let var_1 = arg_3.c.e.a.zz;
    var var_2 = u_input.a.x;
    global0 = array<vec2<u32>, 6>();
    return Struct_1(select(vec3<bool>(false, true, arg_1.x), arg_3.c.e.c.a, any(vec2<bool>(arg_1.x, true))), !any(vec3<bool>(all(arg_1), true, all(arg_1))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_sub_u32(~37878u, arg_0 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, u_input.a.x), u_input.a)), ~1u, 74439u, arg_2);
    global0 = array<vec2<u32>, 6>();
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.xy ^ (global0[_wgslsmith_index_u32(~abs(1u), 6u)] | vec2<u32>(var_0.x, max(var_0.x, arg_0))), ~(~global0[_wgslsmith_index_u32(~u_input.a.x, 6u)]));
    let var_2 = Struct_4(vec4<f32>(_wgslsmith_div_f32(-632f, 1f), _wgslsmith_f_op_f32(-706f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(632f, -863f)))), -654f, -922f), ~(0u & _wgslsmith_mult_u32(arg_2, arg_2)) & u_input.a.x);
    var var_3 = -102300i;
    return func_5(select(true, arg_3, !arg_3), !(!vec4<bool>(true, !arg_1.b, var_0.x == 53395u, arg_1.a.x || false)), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x * -1000f), var_2.a.x, 763f, _wgslsmith_f_op_f32(f32(-1f) * -412f))), arg_2), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1292f, 812f, -984f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, var_2.a.x, var_2.a.x, -2264f) - var_2.a)), vec3<u32>(31812u << (var_0.x % 32u), min(u_input.a.x, max(u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(42069u, var_0.x)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(237f, var_2.a.x)), _wgslsmith_f_op_f32(min(752f, 1548f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 1025f)), vec3<i32>(abs(3643i), 0i, 0i), 32479i, Struct_2(_wgslsmith_div_vec4_u32(var_0, var_0), any(vec4<bool>(false, arg_1.b, false, arg_3)), func_5(arg_3, vec4<bool>(true, arg_3, arg_3, true), Struct_4(var_2.a, arg_2), Struct_5(var_2.a, vec3<u32>(arg_0, 4294967295u, 1u), global3[_wgslsmith_index_u32(0u, 32u)]))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<vec2<u32>, 6>();
    return func_6(~_wgslsmith_add_u32(38355u, 57563u), func_5(false, !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(Struct_2(vec4<u32>(6745u, u_input.a.x, u_input.a.x, u_input.a.x), false, Struct_1(vec3<bool>(false, true, true), true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_clamp_u32(4465u, firstTrailingBit(68956u), func_2(Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), true, Struct_1(vec3<bool>(true, false, true), true)), vec2<bool>(false, true))), u_input.a.x), 32u)], Struct_5(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(347f, -1056f)), _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_div_f32(285f, -1000f)), vec3<u32>(u_input.a.x ^ u_input.a.x, 47442u, _wgslsmith_sub_u32(5475u, u_input.a.x)), Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2303f, -926f), vec2<f32>(-206f, -1328f), false)), _wgslsmith_f_op_f32(-1085f + -602f), -vec3<i32>(1i, arg_0, arg_0), ~arg_0, Struct_2(vec4<u32>(4294967295u, u_input.a.x, 37925u, 4294967295u), true, Struct_1(vec3<bool>(true, false, true), true))))), ~12588u, true);
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec2<u32>, 6>();
    let var_0 = ~abs(max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(80461u, 1u, 4294967295u)), vec3<u32>(u_input.a.x, reverseBits(0u), 1u)));
    var var_1 = -_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), abs(1i)), _wgslsmith_clamp_vec2_i32(-func_4(-36817i, Struct_2(vec4<u32>(4294967295u, 4294967295u, 14524u, 1u), arg_2.x, Struct_1(arg_0.a, arg_1)), -1i, vec4<f32>(arg_3.x, 165f, 110f, -2455f)).zy, abs(abs(vec2<i32>(-46326i, -2147483647i))), -vec2<i32>(-2147483647i, 2147483647i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.x, arg_3.x, -716f), _wgslsmith_f_op_vec3_f32(step(arg_3, vec3<f32>(arg_3.x, 581f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.x, -502f, 1659f))))), _wgslsmith_f_op_vec3_f32(-arg_3)));
    global2 = array<Struct_4, 32>();
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(firstLeadingBit(global0[_wgslsmith_index_u32(14180u, 6u)]), _wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz))), ~global0[_wgslsmith_index_u32(8618u, 6u)]), 32u)];
}

fn func_8(arg_0: Struct_3, arg_1: Struct_5) -> u32 {
    let var_0 = abs(firstTrailingBit(arg_1.c.e.a));
    let var_1 = arg_0.e.a.x;
    let var_2 = arg_0.e.c;
    global3 = array<Struct_3, 32>();
    global3 = array<Struct_3, 32>();
    return arg_0.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~23138i;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(740f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1214f))));
    let var_3 = ~vec3<u32>(u_input.a.x, func_8(func_7(func_1(-2147483647i), any(vec4<bool>(var_1, var_1, var_1, false)), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, true, false, false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-831f, var_2, -770f))), Struct_5(vec4<f32>(1824f, 108f, 403f, 1537f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 1000f, vec3<i32>(-1i, var_0, -48618i), var_0, Struct_2(vec4<u32>(0u, 1000u, 32617u, 0u), false, Struct_1(vec3<bool>(false, true, var_1), false))))), 1u);
    global2 = array<Struct_4, 32>();
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(-var_2)), var_2), vec3<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0, 0i), min(2147483647i, var_0))), firstLeadingBit(21194i), func_7(func_5(true, vec4<bool>(var_1, false, var_1, false), Struct_4(vec4<f32>(var_2, var_2, 132f, var_2), u_input.a.x), Struct_5(vec4<f32>(var_2, var_2, var_2, var_2), u_input.a, Struct_3(global1[_wgslsmith_index_u32(12457u, 12u)], var_2, vec3<i32>(var_0, -2147483647i, var_0), var_0, Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 24815u, 0u), var_1, Struct_1(vec3<bool>(false, true, true), var_1))))), false, select(!vec4<bool>(false, var_1, false, true), vec4<bool>(var_1, var_1, var_1, false), !var_1), vec3<f32>(var_2, -188f, -337f)).d));
}

