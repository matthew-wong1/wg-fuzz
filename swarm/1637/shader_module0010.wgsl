struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-226f, -881f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-377f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(525f, -628f, false)))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(794f)), 1971f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -525f))), 591f, -2496f)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~1u, 1u >> (1u % 32u), min(min(~27973u, max(4294967295u, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(28506u, 46558u), vec2<u32>(31976u, 7837u))))), ~vec4<u32>(102273u, ~(~24399u), firstLeadingBit(_wgslsmith_div_u32(16644u, 87327u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(11583u, 8309u, 1u, 0u), vec4<u32>(49000u, 0u, 22301u, 1u), arg_0.x), abs(vec4<u32>(18406u, 1u, 0u, 1u)))));
    global1 = _wgslsmith_div_u32(87091u, abs(~(~(~3306u))));
    var var_1 = ~(~1u);
    var_1 = _wgslsmith_clamp_u32(~max(firstLeadingBit(_wgslsmith_mult_u32(1u, 47105u)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 50014u, 0u), vec4<u32>(903u, 1u, 26714u, 28979u)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 37107u, 64781u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 33674u, 0u), vec4<u32>(7580u, 1u, 31482u, 1u))) << (~4294967295u % 32u), ~1u);
    return min(vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(73719u, 8623u, 0u), ~vec3<u32>(1u, 13007u, 56938u)), 1u, firstLeadingBit(~36443u), reverseBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 0u)), 96233u))), select(~vec4<u32>(29107u, ~68609u, 0u, 1u), reverseBits(~(~vec4<u32>(6532u, 4294967295u, 4294967295u, 4294967295u))), true));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + -1024f)), _wgslsmith_f_op_f32(trunc(-723f)), -547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-721f, arg_1)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.d.c)), _wgslsmith_f_op_f32(exp2(arg_1)), -667f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_0.c.c + arg_2.b.c), _wgslsmith_f_op_f32(arg_0.a.c - -830f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(396f, -648f, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.b, arg_0.a.c, arg_2.c))))), !arg_2.a || all(!vec4<bool>(arg_0.a.e.d, arg_0.c.d, false, false)))), -u_input.a.zx, true);
    global0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~arg_0.c.a.x), ~min(4294967295u, arg_2.e.a.x)), (48466u >> (~arg_2.d.a.x % 32u)) << (0u % 32u), arg_0.b.a.x), arg_0.e.x);
    let var_1 = !arg_0.c.d;
    global0 = ~abs(~(~abs(arg_0.c.a.x)));
    var var_2 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(max(var_0.a.wwx, var_0.b)), !select(vec3<bool>(true, false, var_0.d), vec3<bool>(false, var_2.e.d, false), vec3<bool>(var_0.d, false, var_0.d)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(359f)), _wgslsmith_f_op_f32(f32(-1f) * -2229f), _wgslsmith_f_op_f32(floor(arg_0.c.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.e.c, -399f, var_2.c))))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-333f)) * -814f))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1110f)), -1418f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3420f - 582f) + _wgslsmith_f_op_f32(595f - 1073f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(arg_0, Struct_1(vec4<u32>(31152u, 60091u, 29000u, 1u), 632f, 826f, false, -2147483647i), 481f, Struct_1(vec4<u32>(22215u, 6994u, 4294967295u, 4735u), 554f, -375f, false, -1i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 52221u, 34122u), -379f, -656f, arg_0, -1i)), Struct_1(vec4<u32>(1u, 19407u, 10801u, 42976u), -613f, 209f, arg_0, arg_1.x), Struct_1(vec4<u32>(1u, 1u, 1u, 29975u), 694f, -601f, true, -2147483647i), _wgslsmith_f_op_f32(min(695f, -894f)), func_3(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(459f + -1156f)), Struct_2(select(arg_0, false, arg_0), Struct_1(vec4<u32>(18821u, 0u, 12573u, 5046u), 535f, -572f, arg_0, -226i), 1f, Struct_1(vec4<u32>(20195u, 4294967295u, 53676u, 0u), 663f, 102f, true, 0i), Struct_1(vec4<u32>(4294967295u, 60697u, 0u, 0u), -1076f, -417f, true, 45593i)), arg_1)), vec3<f32>(388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)), _wgslsmith_f_op_f32(f32(-1f) * -1916f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1049f)) - -611f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1088f))))) - 227f);
    global1 = _wgslsmith_mod_u32(14831u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, ~16081u, ~14201u, _wgslsmith_sub_u32(68972u, 0u)))));
    global0 = 21517u;
    let var_2 = _wgslsmith_clamp_u32(func_3(vec2<bool>(select(arg_0, true, false), false)).x, 46558u, 39116u << (firstTrailingBit(16026u) % 32u)) > 31230u;
    return vec3<i32>(u_input.b, 1i, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c, arg_1.x, -2147483647i), u_input.a.xwy), arg_1.zyy), reverseBits(arg_1.x))));
}

fn func_1() -> Struct_4 {
    global1 = firstTrailingBit(4294967295u);
    let var_0 = vec3<i32>(0i, 24561i, _wgslsmith_dot_vec3_i32(u_input.a.xxy, ~func_2(true, _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.e, 2147483647i, u_input.c, u_input.b), vec4<i32>(-2147483647i, u_input.e, -1i, 39497i)))));
    global0 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, min(915u, 4294967295u), 21824u), 4294967295u) ^ ~0u;
    global1 = 1u >> (max(~(~0u), func_3(vec2<bool>(true, true)).x) % 32u);
    var var_1 = Struct_2(true, Struct_1(~vec4<u32>(1u, ~27574u, 1u, ~39410u), 816f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1100f))), _wgslsmith_f_op_f32(max(-400f, -641f))), any(vec2<bool>(any(vec3<bool>(false, false, false)), true)), u_input.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(821f - -399f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1923f + -353f), 1056f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-811f * 805f) - _wgslsmith_f_op_f32(f32(-1f) * -215f)))), Struct_1(max(~vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(22732u, 53647u, 37730u, 0u), abs(vec4<u32>(1u, 17759u, 0u, 1u)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-506f, 1f) + 1000f), all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(false, false, true))), 25357i), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(45004u, 1u, 1u, 13740u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-445f)))))), _wgslsmith_f_op_f32(1594f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-3462f, 1218f, true)), -1149f)), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(31060i, var_0.x, -5803i), 1i, countOneBits(0i)), -_wgslsmith_mult_vec4_i32(u_input.a, u_input.a))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.c, var_1.b.b, var_1.c, -239f) + vec4<f32>(var_1.d.c, -495f, -530f, var_1.e.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, 481f, 522f, var_1.c) + vec4<f32>(-1321f, 1655f, 1069f, -1328f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.b, -384f, var_1.e.b, 650f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-586f, _wgslsmith_div_f32(498f, var_1.c), var_1.d.c))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c)), 981f, _wgslsmith_f_op_f32(-var_1.d.b))), ~var_0.xz, !any(!select(vec3<bool>(true, var_1.d.d, true), vec3<bool>(var_1.d.d, var_1.a, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = 7193u;
    let var_1 = Struct_5(func_1(), func_2(var_0 || var_0, vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.e), u_input.a.yx), -reverseBits(-5070i), 0i, -1i)).x, Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1061f, 1685f)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(var_0, Struct_1(vec4<u32>(35793u, 0u, 1u, 14457u), -952f, 508f, var_0, u_input.c), -408f, Struct_1(vec4<u32>(4294967295u, 16137u, 4294967295u, 4294967295u), 984f, -814f, true, u_input.a.x), Struct_1(vec4<u32>(4294967295u, 4475u, 0u, 8124u), -792f, 589f, false, 12195i)), Struct_1(vec4<u32>(4294967295u, 5560u, 0u, 7610u), -113f, 577f, var_0, u_input.e), Struct_1(vec4<u32>(59068u, 57765u, 139831u, 0u), -1382f, -221f, true, -1i), -1307f, vec4<u32>(1u, 102589u, 30143u, 0u)), -1340f, Struct_2(true, Struct_1(vec4<u32>(124564u, 4294967295u, 0u, 0u), 1000f, 894f, false, u_input.d), -384f, Struct_1(vec4<u32>(15452u, 4294967295u, 4294967295u, 0u), -1272f, -413f, var_0, u_input.e), Struct_1(vec4<u32>(1u, 61582u, 10723u, 622u), 884f, -355f, false, u_input.c)), ~u_input.a)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(645f)) - _wgslsmith_f_op_f32(f32(-1f) * -1305f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1080f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -1202f))), _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-264f)), -936f))), reverseBits(select(u_input.a.ww, abs(u_input.a.yx), false)), !(all(vec4<bool>(var_0, false, false, true)) | true)), Struct_1(~vec4<u32>(_wgslsmith_mult_u32(119316u, 24435u), 4294967295u, firstLeadingBit(307u), _wgslsmith_dot_vec4_u32(vec4<u32>(10815u, 0u, 12220u, 43746u), vec4<u32>(12657u, 31703u, 0u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1241f + _wgslsmith_f_op_f32(trunc(-670f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1526f + -906f) - _wgslsmith_f_op_f32(floor(-1472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-789f, -130f))), any(vec3<bool>(func_1().d, false, false)), 2147483647i));
    let var_2 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_mult_u32(reverseBits(var_2.a.x), 46928u));
}

