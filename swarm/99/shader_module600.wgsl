struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(919f + -103f), 1000f, _wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(ceil(-2026f))), _wgslsmith_div_f32(-472f, _wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-424f, -606f)))))));
    var var_2 = -(~_wgslsmith_clamp_vec3_i32(~arg_3.a.c, min(abs(vec3<i32>(arg_3.a.c.x, arg_0.a.b, u_input.a.x)), vec3<i32>(-2147483647i, arg_0.a.b, -1i)), _wgslsmith_mod_vec3_i32(abs(arg_3.a.c), vec3<i32>(u_input.a.x, 2147483647i, arg_1) >> (vec3<u32>(71998u, arg_0.a.c.x, 0u) % vec3<u32>(32u)))));
    var_1 = vec4<f32>(-698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1414f * var_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -2468f)), var_1.x, var_1.x);
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(9390u, 20070u, 1u, arg_0.a.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.c.x, arg_3.a.d, arg_0.a.a.d, 44471u), vec4<u32>(var_0.a.b, 15294u, var_0.a.d, arg_0.a.a.d), vec4<u32>(54881u, 4294967295u, var_0.a.d, 29838u))), firstTrailingBit(~vec4<u32>(1u, arg_3.c.x, arg_3.c.x, arg_3.c.x)), vec4<u32>(arg_0.a.c.x, _wgslsmith_clamp_u32(17711u, arg_0.a.a.d, arg_0.a.a.b), ~11821u, 51563u)) ^ firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.c.x, arg_3.a.b, var_0.a.d, 20197u), vec4<u32>(arg_3.a.b, arg_0.a.a.d, 59170u, 1u))), vec4<u32>(0u | ~(4294967295u >> (arg_3.a.b % 32u)), _wgslsmith_clamp_u32(~reverseBits(4294967295u), firstLeadingBit(arg_3.a.b), ~var_0.a.b), _wgslsmith_clamp_u32(57757u, arg_3.a.d, _wgslsmith_div_u32(11788u, ~arg_3.c.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.d, 20824u, var_0.c.x, arg_3.a.b), vec4<u32>(arg_3.c.x, arg_0.a.c.x, 64556u, arg_0.a.c.x)) & abs(vec4<u32>(0u, 1u, arg_0.a.c.x, 22724u)), vec4<u32>(_wgslsmith_add_u32(arg_3.a.b, 57772u), 277u, 0u >> (arg_0.a.c.x % 32u), 1u))));
    return ~_wgslsmith_add_u32(arg_0.a.a.b, 8606u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<Struct_5, 10>();
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_mult_u32(arg_0.x, _wgslsmith_add_u32(arg_0.x, 50032u))), ~4294967295u, max(~arg_0.x, reverseBits(48741u)), _wgslsmith_div_u32(~arg_0.x, _wgslsmith_sub_u32(1u, arg_3.b.a.d))) & vec4<u32>(~arg_3.b.c.x, arg_3.b.a.d, arg_0.x, 1u ^ min(4587u, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_3.b.c.x, arg_0.x, arg_0.x))));
    var_0 = vec4<u32>(0u, arg_0.x, min(1u, 39579u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(0u), 26666u), var_0.x));
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    return !(!select(vec3<bool>(arg_0.x <= 25453u, any(vec3<bool>(false, true, true)), 4350u != var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(83447i, Struct_2(Struct_1(u_input.a.x, 50018u, vec3<i32>(-9010i, -2147483647i, 14417i), ~2357u), _wgslsmith_add_i32(u_input.a.x, -53608i), ~vec3<u32>(98855u, 33318u, select(9138u, 0u, false))));
    global0 = array<Struct_5, 10>();
    var var_1 = func_4(~vec3<u32>(var_0.b.a.d, var_0.b.a.d, func_3(Struct_4(var_0.b), u_input.a.x, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), var_0.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-272f, 512f, 377f), vec3<f32>(1002f, 1404f, -572f), vec3<bool>(true, true, true)))))), vec3<i32>(_wgslsmith_clamp_i32(33579i, reverseBits(abs(-2147483647i)), u_input.a.x), var_0.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(var_0.a, -18943i, -1i, 0i), vec4<i32>(-1i, var_0.a, var_0.a, 0i))), vec4<i32>(1i, -u_input.a.x, var_0.a, var_0.a))), Struct_3(~(~(-41711i)), var_0.b));
    global0 = array<Struct_5, 10>();
    var_0 = Struct_3(min(_wgslsmith_sub_i32(-32317i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, var_0.a, u_input.a.x), abs(-13714i))), ~(-31310i)), var_0.b);
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, var_0.b.b, -9246i), vec4<i32>(-1i, -2147483647i, 1i, var_0.b.b)), firstLeadingBit(abs(vec4<i32>(var_0.b.b, -1i, u_input.a.x, 39007i)))), 1u, -(vec3<i32>(var_0.a, var_0.a, -6696i) >> (min(vec3<u32>(var_0.b.a.d, var_0.b.c.x, 80720u), var_0.b.c) % vec3<u32>(32u))), select(0u, var_0.b.c.x, any(vec2<bool>(false, var_1.x)))), 21352i & u_input.a.x, ~(~firstTrailingBit(var_0.b.c)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = arg_1.x;
    global0 = array<Struct_5, 10>();
    let var_1 = true;
    var var_2 = Struct_4(Struct_2(func_2().a, _wgslsmith_div_i32(select(arg_2.b, 38232i, arg_1.x), arg_0.a.a) << (select(_wgslsmith_mod_u32(arg_0.a.b, 1u), arg_2.a.d & 29772u, true) % 32u), select(firstTrailingBit(abs(vec3<u32>(57197u, arg_2.a.b, arg_2.c.x))), ~firstTrailingBit(vec3<u32>(arg_0.a.b, arg_2.c.x, 0u)), 23216u < (arg_2.c.x ^ arg_2.c.x))));
    var var_3 = vec4<bool>(true, false, false, !all(vec2<bool>(true, true)));
    return Struct_4(func_2());
}

fn func_1() -> f32 {
    let var_0 = -15974i;
    global0 = array<Struct_5, 10>();
    let var_1 = func_5(func_2(), vec3<bool>(true, true, true), Struct_2(func_2().a, ~1i, vec3<u32>(59101u, ~(~5927u), 4294967295u)));
    var var_2 = 33796u;
    var var_3 = Struct_5(Struct_3(~(~28521i), Struct_2(Struct_1(-2147483647i, _wgslsmith_add_u32(var_1.a.c.x, var_1.a.c.x), _wgslsmith_mod_vec3_i32(var_1.a.a.c, var_1.a.a.c), 54448u), var_1.a.b, var_1.a.c)), var_1.a, Struct_3(-2147483647i, Struct_2(Struct_1(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0u, vec3<i32>(var_1.a.b, 56780i, u_input.a.x), select(0u, var_1.a.a.b, true)), reverseBits(~(-26407i)), select(var_1.a.c, firstTrailingBit(vec3<u32>(var_1.a.c.x, var_1.a.a.d, 1u)), true))), vec4<i32>(var_1.a.b, u_input.a.x, var_0, _wgslsmith_clamp_i32(u_input.a.x << (~10527u % 32u), -var_0 | 58119i, 0i >> (func_2().c.x % 32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(430f * 365f), _wgslsmith_f_op_f32(f32(-1f) * -362f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f + -586f) + -876f)))) - -212f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(4294967295u, _wgslsmith_add_u32(1u, 10990u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(func_1()))));
    let var_2 = ~u_input.a.x;
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    let var_3 = 128f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-323f, var_3, var_1, var_3) + vec4<f32>(-777f, -439f, -980f, var_1))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3 * var_1), 2513f, _wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(max(var_1, 1178f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -111f, -430f, var_1), vec4<f32>(var_3, var_3, -350f, var_1), true)), vec4<f32>(var_3, 1136f, var_1, -760f)))))));
}

