struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(44907i, -54188i, 36491i, -1i, 0i, -33236i, 28102i, -30826i, -10487i, i32(-2147483648), -9611i, 26429i, -5448i, -18001i, 31270i, -32297i, 0i, -19278i, 2147483647i, -12934i, i32(-2147483648), 0i, 18700i, -6942i, -39988i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    return 0i;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = array<i32, 25>();
    let var_0 = arg_1.b.zy;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(arg_1.b)), _wgslsmith_f_op_vec4_f32(-arg_1.b));
    return arg_1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<i32, 25>();
    var var_0 = Struct_3(Struct_1(arg_0.xx, !any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-arg_2), !vec3<bool>(true, u_input.a <= 11740u, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.b.zxy * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(arg_3.a.wyx))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.b.ywz))))), Struct_2(arg_3.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(4396u, 25u)], 0i, 2147483647i, -1i), Struct_2(arg_3.b, vec4<f32>(1739f, arg_3.b.x, 851f, arg_1.a.x)), vec3<bool>(false, true, false))))), arg_3.a)), vec3<bool>(true, 4294967295u <= abs(~u_input.a), true));
    let var_1 = vec2<i32>((arg_0.x & u_input.e) ^ (_wgslsmith_mod_i32(-2147483647i, ~var_0.a.a.x) | select(1i, var_0.a.a.x >> (51492u % 32u), any(var_0.d))), -abs(arg_0.x));
    var var_2 = i32(-1i) * -_wgslsmith_sub_i32(-(~var_0.a.a.x), _wgslsmith_sub_i32(-2147483647i, u_input.e) << (~u_input.a % 32u));
    var_0 = Struct_3(Struct_1(vec2<i32>(0i, -20251i), true, var_0.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))), vec3<bool>(var_0.a.c, false, true)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.c.b.x, var_0.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-246f, 1322f, -1000f, -1752f), vec4<f32>(-927f, arg_1.a.x, -368f, 204f)) - vec4<f32>(arg_1.b.x, arg_3.b.x, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.c.b + arg_1.a))), arg_3.a, true))), select(!select(vec3<bool>(true, true, var_0.d.x), var_0.a.e, var_0.a.e), vec3<bool>(true, true, false), arg_1.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))));
    return min(vec3<u32>(~(~u_input.a) >> (~reverseBits(u_input.b) % 32u), max(u_input.a, 0u), u_input.a), vec3<u32>(_wgslsmith_mult_u32(~0u, (u_input.a << (u_input.a % 32u)) >> (4294967295u % 32u)), reverseBits(u_input.b), 35423u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<i32, 25>();
    var var_0 = -1i;
    var_0 = global0[_wgslsmith_index_u32(29973u, 25u)];
    let var_1 = func_4(vec3<i32>(~firstLeadingBit(_wgslsmith_sub_i32(37369i, 4591i)), _wgslsmith_sub_i32(func_2(), reverseBits(global0[_wgslsmith_index_u32(arg_0, 25u)])) << (abs(_wgslsmith_sub_u32(arg_0, u_input.a)) % 32u), 1i), Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1850f + 500f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + 2507f)), _wgslsmith_f_op_f32(f32(-1f) * -448f)), vec4<f32>(-1530f, _wgslsmith_f_op_f32(ceil(-1110f)), _wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(747f - -1112f))), 1088f, Struct_2(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(~(-2147483647i), ~0i, 40365i >> (u_input.b % 32u), 39253i >> (arg_0 % 32u)), Struct_2(vec4<f32>(-358f, 1224f, 394f, 1207f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, -1120f, -1539f, -183f) * vec4<f32>(287f, 1720f, 370f, 991f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1665f, 975f, 1070f, 1234f), vec4<f32>(995f, -923f, 613f, 1055f))), vec4<f32>(-429f, -1266f, -541f, 1497f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(120f, -139f, -224f, -881f)))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, false), false)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(124f))), 1749f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1032f + 700f), _wgslsmith_f_op_f32(-924f + -1000f)), -918f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, 1717f, 906f, -1005f))))) + vec4<f32>(282f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-579f + 434f), 103f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-606f)), -990f)), 1f)));
    return Struct_1(abs(vec2<i32>(u_input.e & 1i, 24922i)), ((countOneBits(u_input.c) << (120449u % 32u)) & max(abs(51882i), 2147483647i)) > firstLeadingBit(~_wgslsmith_clamp_i32(u_input.c, 4382i, global0[_wgslsmith_index_u32(var_1.x, 25u)])), 0u != firstTrailingBit(arg_0), _wgslsmith_f_op_f32(var_2.a.x - 1593f), !vec3<bool>(true, u_input.b == abs(0u), (-2147483647i <= global0[_wgslsmith_index_u32(u_input.a, 25u)]) && true));
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    return StorageBuffer(~reverseBits(u_input.b), arg_0.c.b.ww, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 35894u)), vec2<u32>(abs(firstLeadingBit(1u)), u_input.a)), min(~reverseBits(~vec3<u32>(0u, 4294967295u, u_input.a)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(1u, u_input.b, 18821u)), ~vec3<u32>(40528u, 1u, 9517u)) ^ vec3<u32>(u_input.b, max(25146u, 64353u), select(61002u, 0u, arg_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_3(func_1(4294967295u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 100f, -928f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, -1922f, 153f, 420f)), vec4<f32>(_wgslsmith_f_op_f32(703f - -832f), -764f, _wgslsmith_f_op_f32(trunc(-1000f)), -455f)), vec3<bool>(true, true, true)));
}

