struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-424f, 893f, 1000f), vec3<f32>(1722f, -150f, -447f), vec3<f32>(-650f, -1455f, -125f), vec3<f32>(-1268f, -401f, 1772f), vec3<f32>(-191f, 817f, 976f), vec3<f32>(-401f, 1000f, 662f), vec3<f32>(1753f, 150f, -1424f), vec3<f32>(645f, 2326f, -822f), vec3<f32>(589f, -563f, 687f), vec3<f32>(1307f, 809f, 1751f), vec3<f32>(-394f, 1051f, -1000f), vec3<f32>(-1125f, 1314f, 2659f));

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> i32 {
    global1 = array<vec4<bool>, 20>();
    global1 = array<vec4<bool>, 20>();
    var var_0 = select(firstTrailingBit(_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-53497i, 1i))), u_input.d, true);
    let var_1 = ~(~reverseBits(u_input.d));
    let var_2 = 0u;
    return 28596i;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global1 = array<vec4<bool>, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(exp2(arg_1.b.x))))) - arg_1.b.yz);
    var_0 = arg_1.a.xz;
    global1 = array<vec4<bool>, 20>();
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~u_input.b), min(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(21518u, u_input.a)), (u_input.e.x >> (u_input.a % 32u)) << (firstTrailingBit(u_input.e.x) % 32u), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xwz, u_input.b.xxz), ~u_input.b.wwz)), vec4<u32>(~0u, firstTrailingBit(0u) << (_wgslsmith_div_u32(36048u, u_input.b.x) % 32u), 4294967295u, u_input.b.x)));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    global1 = array<vec4<bool>, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1693f, 504f, -392f, arg_1))))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_3(arg_2.x, Struct_1(vec3<f32>(arg_1, -334f, arg_1), vec4<f32>(133f, 813f, arg_1, arg_1), vec4<bool>(false, false, false, true), vec4<i32>(-28092i, u_input.d, u_input.d, u_input.d)), min(vec4<i32>(arg_2.x, u_input.d, u_input.d, -2147483647i), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, Struct_1(global0[_wgslsmith_index_u32(1u, 12u)], vec4<f32>(827f, arg_1, 512f, 250f), vec4<bool>(true, true, false, true), vec4<i32>(u_input.d, u_input.d, -39950i, -6248i)), arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(673f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1000f, 295f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -1480f, -872f, -636f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 183f, arg_1, 2199f) + vec4<f32>(arg_1, -680f, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -275f, arg_1) + vec4<f32>(183f, 1471f, 327f, arg_1)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -373f, arg_1), vec4<f32>(-1077f, arg_1, -1557f, -1000f))))));
    let var_1 = Struct_2(-496f, all(vec2<bool>(true, true)), arg_0.x >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.wzz | vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), u_input.e.xyy), ~countOneBits(0u)) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(1048f, -1935f, false)), -783f, _wgslsmith_f_op_f32(var_0.x - 590f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(49244u, 12u)])), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(arg_1, 632f, arg_1, 1798f))), select(select(select(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(u_input.c, 20u)]), global1[_wgslsmith_index_u32(u_input.e.x, 20u)]), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(120466u, 20u)], global1[_wgslsmith_index_u32(select(u_input.a, 3874u, false), 20u)])), abs(arg_0)));
    global1 = array<vec4<bool>, 20>();
    var var_2 = vec4<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.d.a.x, var_0.x))))), _wgslsmith_f_op_f32(-var_1.a), 184f);
    return var_1.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_0.x, 1408f), arg_0) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.b.x), -131f, _wgslsmith_f_op_f32(f32(-1f) * -532f)))));
    var var_1 = arg_1;
    let var_2 = func_2(max(var_1.d.d & ~vec4<i32>(u_input.d, -1i, -35649i, 1i), vec4<i32>(var_1.c, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), arg_1.d.d.xy), 7113i)) >> (~u_input.e % vec4<u32>(32u)), 1f, ~max(vec3<i32>(1i, arg_1.c, 0i), ~var_1.d.d.zzw << (u_input.e.zzx % vec3<u32>(32u)))).b.x;
    let var_3 = arg_1.d;
    global1 = array<vec4<bool>, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(true, !select(true, false, false) != select(true, true, select(false, false, false)), true);
    let var_1 = _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), ~4294967295u) >> (_wgslsmith_mod_u32(u_input.c, 4294967295u) % 32u), 12u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1547f, _wgslsmith_div_f32(-1577f, 1000f))), 159f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2349f))), ~func_1(), func_2(vec4<i32>(i32(-1i) * -6652i, ~u_input.d, -3161i, 530i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1947f) - _wgslsmith_f_op_f32(select(201f, -1039f, false))), vec3<i32>(u_input.d, u_input.d, 1i) | vec3<i32>(u_input.d, -167i, u_input.d)))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d, Struct_1(vec3<f32>(1966f, -222f, 1000f), vec4<f32>(var_1, 593f, 539f, var_1), vec4<bool>(false, false, true, false), vec4<i32>(u_input.d, 47968i, u_input.d, 32i)), vec4<i32>(u_input.d, -1i, -2147483647i, -1i)))), _wgslsmith_div_f32(var_1, -262f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-808f * var_1), var_1, true)), _wgslsmith_f_op_f32(trunc(-1066f))), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-756f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-76719i, Struct_1(vec3<f32>(207f, 1432f, 392f), vec4<f32>(var_1, var_1, var_1, var_1), vec4<bool>(true, false, false, true), vec4<i32>(25705i, -17760i, -1i, -7066i)), vec4<i32>(10221i, 16595i, 17721i, u_input.d))) + -457f), var_1)), _wgslsmith_f_op_f32(-962f * -271f)), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -1178i, ~u_input.d, u_input.d, abs(u_input.d)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d, u_input.d, -44487i, 80842i), vec4<i32>(u_input.d, 1i, u_input.d, 39040i) << (vec4<u32>(u_input.e.x, 0u, 1u, u_input.b.x) % vec4<u32>(32u)))), -1174f, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(9464i, u_input.d, 1i), vec3<i32>(u_input.d, u_input.d, u_input.d), false), vec3<i32>(u_input.d, u_input.d, -2147483647i) >> (u_input.e.yww % vec3<u32>(32u))), ~(vec3<i32>(-14204i, u_input.d, 2147483647i) >> (vec3<u32>(4294967295u, u_input.c, 1u) % vec3<u32>(32u))), ~max(vec3<i32>(2147483647i, u_input.d, u_input.d), vec3<i32>(0i, 2147483647i, -22178i)))).c, -select(~vec4<i32>(u_input.d, -2147483647i, -2147483647i, -28048i), -vec4<i32>(1i, -2147483647i, -12325i, 1i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(40210u, 20023u), 20u)]) << (_wgslsmith_mult_vec4_u32(~min(vec4<u32>(1u, 58674u, 4294967295u, 50838u), u_input.e), vec4<u32>(u_input.c, 1u, _wgslsmith_clamp_u32(39827u, 98191u, 1u), 55533u)) % vec4<u32>(32u)));
    global1 = array<vec4<bool>, 20>();
    var_2 = func_2(_wgslsmith_sub_vec4_i32(-var_2.d, _wgslsmith_mod_vec4_i32(func_2(firstLeadingBit(var_2.d), _wgslsmith_f_op_f32(-var_1), ~var_2.d.xxz).d, ~var_2.d >> (_wgslsmith_mod_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u)))), var_1, var_2.d.www);
    global1 = array<vec4<bool>, 20>();
    var var_3 = 1u;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-662f)), _wgslsmith_f_op_f32(var_1 + -1302f)), _wgslsmith_f_op_f32(403f * var_2.b.x))), _wgslsmith_f_op_f32(-var_1), -766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.x, var_1) - _wgslsmith_f_op_f32(var_1 * var_2.a.x))) * _wgslsmith_f_op_f32(sign(-614f))));
    global1 = array<vec4<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -889f), var_2.b.x, _wgslsmith_div_f32(275f, 1368f), _wgslsmith_f_op_f32(-var_1)))), var_2.d, ~_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, var_2.d.x, u_input.d), min(vec3<i32>(u_input.d, -2147483647i, var_2.d.x), _wgslsmith_div_vec3_i32(var_2.d.yzy, var_2.d.xzy))), vec2<u32>(1u, _wgslsmith_clamp_u32(reverseBits(u_input.e.x), 47575u, _wgslsmith_sub_u32(u_input.b.x, u_input.a))));
}

