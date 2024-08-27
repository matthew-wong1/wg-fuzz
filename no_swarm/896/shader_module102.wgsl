struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4518u, 1u), vec2<u32>(4294967295u, 40760u), vec2<u32>(4294967295u, 0u), vec2<u32>(46125u, 0u), vec2<u32>(58670u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4343u, 51892u), vec2<u32>(0u, 1549u), vec2<u32>(5809u, 12555u), vec2<u32>(4294967295u, 99291u), vec2<u32>(44039u, 29728u), vec2<u32>(0u, 0u), vec2<u32>(0u, 30626u), vec2<u32>(95079u, 46741u), vec2<u32>(4294967295u, 29058u), vec2<u32>(72771u, 1u), vec2<u32>(1u, 0u), vec2<u32>(57667u, 64130u), vec2<u32>(0u, 0u), vec2<u32>(39593u, 70032u), vec2<u32>(70118u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 3073u), vec2<u32>(55428u, 56477u));

var<private> global2: array<vec2<bool>, 17>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(-1i, 1i);
    var var_1 = vec4<bool>(select(global0.a.x, global0.a.x, !(global0.a.x || true)), true, all(select(vec3<bool>(true, any(vec3<bool>(false, global0.a.x, global0.a.x)), false), vec3<bool>(!global0.a.x, true, false), true)), global0.a.x);
    global1 = array<vec2<u32>, 25>();
    let var_2 = -vec4<i32>(~(i32(-1i) * -58551i), global0.b, ~_wgslsmith_add_i32(9735i, global0.b), -18533i);
    global1 = array<vec2<u32>, 25>();
    return _wgslsmith_div_i32(abs(1i), -21081i >> (u_input.a.x % 32u));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_1(!select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global1[_wgslsmith_index_u32(arg_1, 25u)]), ~vec2<u32>(arg_3.x, arg_3.x)), 17u)], select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, true), !global0.a.x), !(!vec2<bool>(arg_0.a.a.a.x, arg_0.a.d.a.x))), 4821i);
    global1 = array<vec2<u32>, 25>();
    let var_1 = Struct_1(arg_0.a.d.a, -_wgslsmith_add_i32(~(~34794i), func_3()));
    let var_2 = var_0.b;
    global0 = Struct_1(!select(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 17u)], !vec2<bool>(true, arg_0.a.d.a.x), !vec2<bool>(true, var_0.a.x)), vec2<bool>(true, any(vec3<bool>(arg_0.a.a.a.x, arg_0.a.c.x, false))), true), max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, -var_0.b), 40878i, arg_0.a.d.b), -2147483647i));
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = Struct_1(vec2<bool>(abs(~u_input.a.x) > reverseBits(u_input.a.x), arg_0.a.a.a.x), global0.b >> (19334u % 32u));
    global2 = array<vec2<bool>, 17>();
    global1 = array<vec2<u32>, 25>();
    global0 = func_2(arg_0, u_input.a.x, -_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, arg_0.a.a.b), vec2<i32>(global0.b, -5953i)), vec2<i32>(reverseBits(-7102i), -2147483647i)), max(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(abs(u_input.a), firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x >> (51517u % 32u), reverseBits(u_input.a.x), ~u_input.a.x), ~min(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(58982u, u_input.a.x, u_input.a.x, 30647u))), ~(u_input.a & u_input.a))).a.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.a.b);
    return vec3<u32>(~33368u, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~u_input.a.x), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = select(u_input.a.x, 1u, !arg_3.a.a.x) ^ _wgslsmith_dot_vec3_u32(~func_4(func_2(Struct_4(Struct_3(Struct_1(global0.a, arg_3.d), vec3<f32>(-749f, arg_0, -1191f), vec2<bool>(false, false), arg_2.c)), u_input.a.x, vec2<i32>(arg_3.b.x, 14562i), vec4<u32>(88592u, 31388u, 0u, 44275u))), ~firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 19564u)));
    global2 = array<vec2<bool>, 17>();
    global2 = array<vec2<bool>, 17>();
    let var_1 = func_2(func_2(func_2(Struct_4(Struct_3(Struct_1(arg_3.c.a, 58474i), vec3<f32>(arg_0, arg_0, arg_0), vec2<bool>(true, global0.a.x), arg_3.c)), min(0u, 10267u), arg_3.b.yy, vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~22543u, max(var_0, 1u), 90047u)), ~(firstLeadingBit(18973u) << (_wgslsmith_clamp_u32(var_0, 41571u, 26573u) % 32u)), _wgslsmith_add_vec2_i32(select(~vec2<i32>(global0.b, 1i), ~vec2<i32>(-287i, -1673i), select(vec2<bool>(true, true), vec2<bool>(arg_2.a.a.x, global0.a.x), false)), vec2<i32>(2147483647i, -1i)), vec4<u32>(reverseBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), _wgslsmith_add_u32(4294967295u, func_4(Struct_4(Struct_3(arg_3.c, vec3<f32>(-1091f, 865f, -1000f), vec2<bool>(false, arg_3.e.a.x), arg_3.c))).x), var_0, u_input.a.x)), ~0u, max(~abs(vec2<i32>(28118i, arg_1)), arg_3.b.xw), vec4<u32>(var_0, abs(1u), 7976u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 87338u, u_input.a.x, 1u), vec4<u32>(19081u, u_input.a.x, 31313u, u_input.a.x)) << (~0u % 32u))).a.a;
    let var_2 = u_input.a;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> f32 {
    global2 = array<vec2<bool>, 17>();
    let var_0 = vec3<f32>(-387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x * -593f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x))))), arg_1.a.b.x);
    global1 = array<vec2<u32>, 25>();
    global1 = array<vec2<u32>, 25>();
    var var_1 = arg_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * arg_1.a.b.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(618f * var_1.b.x), _wgslsmith_div_f32(arg_1.a.b.x, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(1000f, -68486i, Struct_2(Struct_1(vec2<bool>(true, global0.a.x), 74849i), vec4<i32>(global0.b, -2147483647i, global0.b, -367i), Struct_1(vec2<bool>(global0.a.x, global0.a.x), global0.b), global0.b, Struct_1(vec2<bool>(global0.a.x, false), -65034i)), Struct_2(Struct_1(vec2<bool>(global0.a.x, true), 0i), vec4<i32>(-3517i, global0.b, 13817i, -7298i), Struct_1(vec2<bool>(global0.a.x, false), global0.b), 0i, Struct_1(vec2<bool>(global0.a.x, false), global0.b))), Struct_4(Struct_3(Struct_1(global0.a, 1i), vec3<f32>(779f, 1000f, -1018f), global2[_wgslsmith_index_u32(2809u, 17u)], Struct_1(vec2<bool>(true, global0.a.x), global0.b)))))))));
    var var_1 = func_2(func_2(Struct_4(Struct_3(func_1(-1908f, global0.b, Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global0.b), vec4<i32>(20791i, global0.b, 2147483647i, 56066i), Struct_1(vec2<bool>(false, global0.a.x), global0.b), global0.b, Struct_1(global2[_wgslsmith_index_u32(0u, 17u)], 36308i)), Struct_2(Struct_1(vec2<bool>(false, true), 4458i), vec4<i32>(global0.b, -5763i, 2147483647i, 26245i), Struct_1(global2[_wgslsmith_index_u32(37001u, 17u)], -2147483647i), global0.b, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global0.b))).a, vec3<f32>(1000f, 854f, -354f), global0.a, func_1(1713f, 53102i, Struct_2(Struct_1(vec2<bool>(global0.a.x, false), global0.b), vec4<i32>(-2147483647i, -2147483647i, global0.b, global0.b), Struct_1(global0.a, global0.b), global0.b, Struct_1(vec2<bool>(global0.a.x, global0.a.x), global0.b)), Struct_2(Struct_1(global0.a, global0.b), vec4<i32>(1i, global0.b, 1894i, global0.b), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global0.b), 1i, Struct_1(global0.a, -35618i))).e)), ~_wgslsmith_add_u32(4294967295u, ~u_input.a.x), firstLeadingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.b, -1107i), ~vec2<i32>(global0.b, global0.b), vec2<i32>(global0.b, -2147483647i) >> (global1[_wgslsmith_index_u32(u_input.a.x, 25u)] % vec2<u32>(32u)))), u_input.a), _wgslsmith_add_u32(40865u, u_input.a.x), min(abs(~vec2<i32>(global0.b, global0.b)) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 69819u), abs(u_input.a.xw), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), global1[_wgslsmith_index_u32(78793u, 25u)])) % vec2<u32>(32u)), reverseBits(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(1i, 17024i)), vec2<i32>(-35698i, 60773i)))), ~countOneBits(u_input.a)).a;
    global2 = array<vec2<bool>, 17>();
    var var_2 = func_2(Struct_4(Struct_3(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - -255f), _wgslsmith_f_op_f32(-108f * -536f), 1405f), !global0.a, Struct_1(select(var_1.a.a, global0.a, var_1.d.a.x), global0.b))), 26016u, firstLeadingBit(vec2<i32>(1i ^ abs(var_1.d.b), -(~(-2147483647i)))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a << (u_input.a % vec4<u32>(32u))), vec4<u32>(0u, u_input.a.x, 69225u, ~12319u) & vec4<u32>(u_input.a.x, 49077u, 4294967295u, ~0u))).a;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -401f);
    var_1 = func_2(func_2(func_2(Struct_4(func_2(Struct_4(Struct_3(Struct_1(var_2.a.a, var_1.a.b), var_2.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], var_2.a)), u_input.a.x, vec2<i32>(var_2.a.b, var_1.a.b), u_input.a).a), abs(1u), vec2<i32>(-1i, -1i), ~(~u_input.a)), ~(~55914u), vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(40828i, -60836i, var_2.d.b)), vec3<i32>(var_2.d.b, global0.b, global0.b) | vec3<i32>(global0.b, 38184i, -1995i)), -46047i), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(u_input.a), u_input.a), reverseBits(u_input.a) & (u_input.a & vec4<u32>(u_input.a.x, 1u, 16247u, u_input.a.x)))), max(4294967295u ^ select(u_input.a.x, 1u, var_2.c.x || false), min(u_input.a.x, 62560u)), -reverseBits(~vec2<i32>(-2147483647i, -1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(select(12271i, 0i, false), global0.b), -vec2<i32>(global0.b, -52214i)), countOneBits(~(~vec4<u32>(u_input.a.x, 27166u, u_input.a.x, 57472u)))).a;
    var_1 = func_2(func_2(Struct_4(func_2(Struct_4(Struct_3(var_1.a, var_2.b, global2[_wgslsmith_index_u32(74708u, 17u)], Struct_1(var_2.c, var_1.d.b))), u_input.a.x, ~vec2<i32>(global0.b, var_1.d.b), vec4<u32>(3277u, u_input.a.x, u_input.a.x, 95280u)).a), ~1u, firstLeadingBit(~(~vec2<i32>(-3195i, var_1.a.b))), min(u_input.a, ~countOneBits(u_input.a))), u_input.a.x, vec2<i32>(898i, var_2.d.b), u_input.a).a;
    var_1 = func_2(Struct_4(Struct_3(Struct_1(select(var_1.a.a, vec2<bool>(var_2.c.x, true), vec2<bool>(true, var_1.a.a.x)), var_1.d.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(889f, 556f, -214f))), select(select(vec2<bool>(true, var_1.c.x), vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(var_1.d.a.x, var_1.a.a.x)), vec2<bool>(var_2.d.a.x, true), var_1.a.a.x), var_2.a)), u_input.a.x, ~(vec2<i32>(-1i) * -(~vec2<i32>(var_1.a.b, var_2.a.b))), ~select(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x) | firstTrailingBit(u_input.a), u_input.a, any(var_1.d.a))).a;
    let var_3 = var_2.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wzx, max(countOneBits(~reverseBits(vec3<u32>(0u, u_input.a.x, 0u))), ~vec3<u32>(u_input.a.x, abs(1u), ~u_input.a.x)), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(-16919i, 0i, -1i), max(~vec3<i32>(var_1.d.b, -2147483647i, var_2.a.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.b, global0.b, 1i), vec3<i32>(var_2.a.b, global0.b, -19979i), vec3<i32>(var_1.a.b, 21122i, global0.b))), var_1.d.a.x), min(-vec3<i32>(global0.b, -41482i, -16815i) | ~vec3<i32>(var_2.d.b, var_2.a.b, 27167i), -vec3<i32>(35400i, 19913i, 17127i) << (~vec3<u32>(8287u, u_input.a.x, 43867u) % vec3<u32>(32u)))), -15763i, vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.d.b, var_2.a.b, var_2.a.b), vec4<i32>(9451i, -2147483647i, -8185i, global0.b)), var_2.d.b, global0.b, -var_1.d.b));
}

