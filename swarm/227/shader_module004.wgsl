struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<f32>(546f, -2437f), 14627u, vec2<f32>(-825f, -584f), Struct_1(true, false, vec3<u32>(12396u, 4294967295u, 0u), vec2<i32>(37885i, i32(-2147483648)), vec2<i32>(2147483647i, 16107i))), Struct_2(vec2<f32>(141f, -1576f), 1u, vec2<f32>(845f, -487f), Struct_1(false, false, vec3<u32>(0u, 20194u, 1u), vec2<i32>(-35486i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_2(vec2<f32>(-1450f, 1023f), 48761u, vec2<f32>(264f, -1342f), Struct_1(true, false, vec3<u32>(8901u, 4294967295u, 17867u), vec2<i32>(-1i, -28184i), vec2<i32>(2147483647i, 0i))), Struct_2(vec2<f32>(-614f, 1626f), 41987u, vec2<f32>(-1124f, -132f), Struct_1(true, false, vec3<u32>(1u, 0u, 0u), vec2<i32>(14623i, -57475i), vec2<i32>(10106i, -19318i))), Struct_2(vec2<f32>(-357f, -733f), 42268u, vec2<f32>(967f, 893f), Struct_1(true, true, vec3<u32>(0u, 4294967295u, 43089u), vec2<i32>(-6311i, 15974i), vec2<i32>(8605i, 33551i))), Struct_2(vec2<f32>(334f, 943f), 4294967295u, vec2<f32>(1684f, 1000f), Struct_1(false, true, vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(902i, -46606i), vec2<i32>(2147483647i, -1i))), Struct_2(vec2<f32>(353f, 1448f), 0u, vec2<f32>(1550f, -632f), Struct_1(false, true, vec3<u32>(4294967295u, 0u, 18475u), vec2<i32>(-15392i, 2147483647i), vec2<i32>(-1i, 1i))), Struct_2(vec2<f32>(-1800f, -381f), 0u, vec2<f32>(1000f, 524f), Struct_1(true, false, vec3<u32>(30658u, 0u, 1u), vec2<i32>(-1i, -57080i), vec2<i32>(54970i, -1i))), Struct_2(vec2<f32>(-122f, -879f), 1u, vec2<f32>(-424f, 266f), Struct_1(false, false, vec3<u32>(4294967295u, 18707u, 30284u), vec2<i32>(i32(-2147483648), -47715i), vec2<i32>(-1i, 20825i))), Struct_2(vec2<f32>(-267f, 1715f), 55067u, vec2<f32>(-413f, -947f), Struct_1(false, true, vec3<u32>(0u, 1u, 69113u), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -9863i))), Struct_2(vec2<f32>(-773f, 1000f), 49398u, vec2<f32>(340f, 137f), Struct_1(false, true, vec3<u32>(1u, 77915u, 42228u), vec2<i32>(2147483647i, 18402i), vec2<i32>(-25600i, 2147483647i))), Struct_2(vec2<f32>(801f, 1614f), 45658u, vec2<f32>(-1000f, 1000f), Struct_1(true, false, vec3<u32>(1u, 1u, 12884u), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, -10470i))), Struct_2(vec2<f32>(291f, 1000f), 49877u, vec2<f32>(-1451f, 383f), Struct_1(false, false, vec3<u32>(81075u, 13076u, 0u), vec2<i32>(i32(-2147483648), -4858i), vec2<i32>(-1i, 5528i))), Struct_2(vec2<f32>(-1307f, -455f), 4294967295u, vec2<f32>(2874f, -1000f), Struct_1(false, true, vec3<u32>(1u, 64926u, 1u), vec2<i32>(-60578i, 10743i), vec2<i32>(2147483647i, -1i))), Struct_2(vec2<f32>(1184f, -387f), 13349u, vec2<f32>(168f, -260f), Struct_1(true, true, vec3<u32>(2470u, 1u, 68488u), vec2<i32>(-16283i, 24613i), vec2<i32>(0i, -16931i))), Struct_2(vec2<f32>(791f, 1526f), 19132u, vec2<f32>(545f, -376f), Struct_1(true, true, vec3<u32>(1u, 1u, 1u), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 2147483647i))), Struct_2(vec2<f32>(1000f, -676f), 1u, vec2<f32>(-665f, 1121f), Struct_1(true, true, vec3<u32>(75483u, 0u, 32206u), vec2<i32>(i32(-2147483648), -16394i), vec2<i32>(-36822i, 27096i))), Struct_2(vec2<f32>(-1000f, 712f), 0u, vec2<f32>(-973f, -651f), Struct_1(false, false, vec3<u32>(39626u, 41551u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1093i, 0i))), Struct_2(vec2<f32>(981f, -2430f), 0u, vec2<f32>(1449f, -774f), Struct_1(true, true, vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(60823i, 29628i), vec2<i32>(i32(-2147483648), 25166i))), Struct_2(vec2<f32>(-1281f, 947f), 17858u, vec2<f32>(-1014f, -401f), Struct_1(true, false, vec3<u32>(0u, 6459u, 4294967295u), vec2<i32>(37804i, -1i), vec2<i32>(26947i, -27698i))), Struct_2(vec2<f32>(-1002f, 567f), 5669u, vec2<f32>(-507f, 1751f), Struct_1(false, false, vec3<u32>(0u, 1u, 18598u), vec2<i32>(47814i, 1i), vec2<i32>(-1i, 0i))), Struct_2(vec2<f32>(2573f, 497f), 15746u, vec2<f32>(762f, -790f), Struct_1(false, true, vec3<u32>(4294967295u, 19044u, 1u), vec2<i32>(-39089i, i32(-2147483648)), vec2<i32>(-29407i, -42309i))), Struct_2(vec2<f32>(224f, -2540f), 42640u, vec2<f32>(-372f, 363f), Struct_1(false, true, vec3<u32>(4294967295u, 4294967295u, 70738u), vec2<i32>(-38994i, 24945i), vec2<i32>(-1i, 2147483647i))), Struct_2(vec2<f32>(-892f, 701f), 1u, vec2<f32>(2350f, 964f), Struct_1(true, false, vec3<u32>(27368u, 0u, 4294967295u), vec2<i32>(-25245i, 8390i), vec2<i32>(-1i, -20556i))), Struct_2(vec2<f32>(103f, -1000f), 1u, vec2<f32>(2115f, -460f), Struct_1(false, true, vec3<u32>(0u, 0u, 1u), vec2<i32>(60248i, 80632i), vec2<i32>(66337i, 2147483647i))));

var<private> global2: array<i32, 6> = array<i32, 6>(i32(-2147483648), 1i, -46398i, 1i, -1i, -5606i);

var<private> global3: vec4<i32>;

var<private> global4: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_5(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.d.x | 0u, _wgslsmith_mult_u32(1u, 26014u)), global0.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, 4294967295u), abs(u_input.d.x))), vec3<u32>(global0.x, ~global0.x, _wgslsmith_mod_u32(624u, u_input.d.x) | ~14469u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, -1716f, 1508f, arg_1.a.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, arg_1.c.x, arg_1.c.x, 1000f)))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-249f, -389f)))), -161f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(trunc(-287f)))), Struct_2(vec2<f32>(-628f, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_clamp_u32(arg_1.b, 51964u, 17470u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.a.x)), -934f)), arg_1.d), Struct_4(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, -1i)), 12273i, reverseBits(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1701f + arg_1.a.x)) * -678f), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_1.a), 1u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(arg_1.c)))), Struct_1(!arg_0, any(vec3<bool>(arg_0, true, true)), arg_1.d.c, u_input.c, _wgslsmith_mod_vec2_i32(global3.yz, vec2<i32>(global2[_wgslsmith_index_u32(arg_1.b, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)])))), ~vec3<u32>(~arg_1.b, 1u, _wgslsmith_sub_u32(6772u, u_input.d.x))));
    let var_1 = abs(~(-_wgslsmith_mod_i32(~3021i, ~2147483647i)));
    global2 = array<i32, 6>();
    var var_2 = global1[_wgslsmith_index_u32(min(var_0.c.b, arg_1.d.c.x), 25u)];
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.c.x)), -619f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + -380f)) + var_2.a.x), !var_0.d.c.d.a, any(vec3<bool>(true, true, true)), any(select(!select(vec2<bool>(false, true), vec2<bool>(arg_2, false), vec2<bool>(false, arg_1.d.b)), vec2<bool>(true, true), !var_2.d.a && false)));
    return abs(~(~(vec4<u32>(3783u, 12636u, 0u, 67647u) | vec4<u32>(u_input.d.x, 1u, arg_1.b, 0u)))) & ~vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.c.x, 0u, u_input.d.x), u_input.d)), 5254u, ~18132u, 4294967295u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global0 = vec2<u32>(~u_input.d.x, ~u_input.d.x);
    var var_0 = -1976f;
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, firstLeadingBit(4294967295u), global0.x) >> (min(vec4<u32>(u_input.d.x, global0.x, global0.x, 0u) | vec4<u32>(u_input.d.x, global0.x, 4294967295u, 18495u), ~vec4<u32>(29272u, u_input.d.x, 1u, 57630u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, max(u_input.d.yx, u_input.d.xx)), 0u, 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.d)), vec4<u32>(global0.x, global0.x, ~1u, u_input.d.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(75976u, ~global0.x >> (1u % 32u), ~(global0.x & global0.x), countOneBits(47482u << (global0.x % 32u))), func_3(all(vec2<bool>(true, false)) | true, global1[_wgslsmith_index_u32(75041u, 25u)], true), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global0.x, global0.x), u_input.d & u_input.d), _wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.yz) >> (35382u % 32u), 6636u, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mult_u32(30404u, 28781u))));
    global4 = true;
    var_0 = -554f;
    return 1u;
}

fn func_1(arg_0: u32) -> vec4<f32> {
    global3 = -abs(select(vec4<i32>(u_input.b, ~0i, 23905i, -1i & global3.x), -vec4<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 6u)], -4372i, u_input.b, u_input.c.x), true));
    global0 = u_input.d.zz;
    global4 = abs(global0.x | (30625u ^ func_2(vec3<f32>(904f, 252f, -743f)))) == global0.x;
    var var_0 = Struct_1(all(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), !all(vec3<bool>(select(true, true, true), true, all(vec3<bool>(true, false, false)))), ~u_input.d, global3.yw, ~select(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.c | global3.yy), abs(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(global2[_wgslsmith_index_u32(8127u, 6u)], global3.x))), all(vec4<bool>(false, true, true, false))));
    let var_1 = 481f;
    return vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 1000f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 * -1473f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - var_1))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_f_op_f32(sign(1170f));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_u32(arg_0.d.d.x, 1u))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1771f * var_0), _wgslsmith_f_op_f32(min(arg_0.c.c.x, -1046f)), all(vec2<bool>(arg_0.c.d.b, arg_0.c.d.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) * _wgslsmith_f_op_f32(-arg_0.c.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, -486f)) + arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.d.b)), arg_1.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-arg_1.a.x), var_0));
    var var_3 = arg_0.d;
    return Struct_1(!(-550f <= arg_1.a.x), true, vec3<u32>(~(var_3.d.x ^ ~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19331u, 48470u, 31982u, 1u) & vec4<u32>(39735u, 1u, var_3.d.x, 6387u), vec4<u32>(arg_0.a.x, u_input.d.x, 11966u, 0u)), ~(~vec4<u32>(0u, global0.x, arg_0.a.x, var_3.c.d.c.x))), u_input.d.x), vec2<i32>(arg_0.d.c.d.d.x, -(~(global3.x ^ u_input.a))), -arg_0.d.a.xz >> (u_input.d.zy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(~_wgslsmith_mod_vec3_u32(~vec3<u32>(66085u, global0.x, u_input.d.x), u_input.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, -107f, -847f, 216f) - vec4<f32>(-232f, 2056f, 363f, -2166f))), _wgslsmith_f_op_vec4_f32(func_1(global0.x)), vec4<bool>(true, true, true, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xx, u_input.d.yy), u_input.d.yy), 25u)], Struct_4((vec3<i32>(46529i, u_input.b, u_input.c.x) & global3.wzx) & vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(global0.x, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)]), -814f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~55625u, abs(global0.x)), 25u)], ~(~vec3<u32>(global0.x, u_input.d.x, 3998u)))), Struct_3(vec3<f32>(1078f, 767f, _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(f32(-1f) * -262f)))));
    let var_1 = ~select((u_input.d.x ^ 4294967295u) & abs(10618u), u_input.d.x, !var_0.a && any(vec3<bool>(var_0.a, true, var_0.a))) | var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-448f))) + _wgslsmith_f_op_f32(-914f + _wgslsmith_f_op_f32(sign(393f)))))), _wgslsmith_f_op_f32(415f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1235f, -1850f)), _wgslsmith_f_op_f32(f32(-1f) * -480f)) - _wgslsmith_f_op_f32(-584f - -1137f))), global3.x);
}

