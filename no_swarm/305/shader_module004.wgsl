struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_div_vec2_i32((global0.a & u_input.a) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -4771i), global0.a), _wgslsmith_mod_vec2_i32(-global0.a, vec2<i32>(2147483647i, global0.a.x) ^ global0.a)) & vec2<i32>(2147483647i, ~global0.a.x | ~0i), -(~26129i), ~(~u_input.b), u_input.b);
    var var_0 = Struct_1(-global0.a, -(~(i32(-1i) * -2147483647i)), global0.c, u_input.b);
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(20731u, 1u, firstLeadingBit(var_0.c)), (vec3<u32>(18478u, global0.c, 0u) & min(vec3<u32>(global0.d, 16630u, 5598u), vec3<u32>(u_input.b, 1u, 12194u))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.d, global0.c), ~vec3<u32>(u_input.b, 1u, global0.c)));
    let var_2 = Struct_1(var_0.a, -31339i, global0.c, ~global0.d);
    let var_3 = -1041f;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(22867i, u_input.c), u_input.a, global0.a), u_input.a), vec2<i32>(12369i, 2147483647i)) & ~(~global0.a), global0.a.x ^ -u_input.c, 1u, _wgslsmith_div_u32(~max(countOneBits(global0.d), u_input.b), global0.d));
    global0 = Struct_1(select(vec2<i32>(-u_input.a.x, 1i), vec2<i32>(0i, 1i), select(vec2<bool>(false, true), func_3(), func_3())) ^ vec2<i32>(1i, _wgslsmith_div_i32(global0.b, u_input.c)), ~u_input.c, ~u_input.b, min(min(~_wgslsmith_mult_u32(18762u, 1u), u_input.b), reverseBits(_wgslsmith_clamp_u32(global0.c >> (u_input.b % 32u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(6626u, 0u, global0.d))))));
    global0 = Struct_1(u_input.a >> (vec2<u32>(reverseBits(~global0.c), u_input.b) % vec2<u32>(32u)), 1i, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1954u, 32025u)), (vec3<u32>(global0.c, u_input.b, global0.c) ^ vec3<u32>(global0.c, u_input.b, global0.d)) & (vec3<u32>(u_input.b, 54048u, u_input.b) ^ vec3<u32>(global0.d, u_input.b, global0.d))), abs(min(countOneBits(0u), u_input.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, 1u, u_input.b, 1u), vec4<u32>(0u, 0u, 1u, 1u)), vec4<u32>(u_input.b ^ 5066u, u_input.b & 6515u, abs(127478u), max(50430u, 29850u))), _wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, 1u << (u_input.b % 32u), firstLeadingBit(global0.c), 0u), reverseBits(~vec4<u32>(global0.c, global0.d, global0.c, 1u)))));
    let var_0 = Struct_1(u_input.a, ~firstLeadingBit(1i), firstLeadingBit(global0.c), countOneBits(u_input.b));
    global0 = var_0;
    return ~select(~(vec4<u32>(var_0.c, global0.c, u_input.b, u_input.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, global0.c, u_input.b, u_input.b), vec4<u32>(var_0.d, var_0.c, u_input.b, 1u)) % vec4<u32>(32u))), select(vec4<u32>(u_input.b << (14403u % 32u), 13752u, ~global0.d, ~4416u), _wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.d, 53771u, 2978u, 4294967295u), vec4<u32>(u_input.b, u_input.b, global0.d, var_0.c), true), vec4<u32>(var_0.c, 18137u, 12033u, 4294967295u)), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, global0.d >= var_0.d, true));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(u_input.b, ~34567u, firstLeadingBit(u_input.b), 13367u)), vec4<u32>(min(58099u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.c, u_input.b), vec3<u32>(0u, 35971u, 4294967295u))), min(23891u, ~4294967295u), 1u << (_wgslsmith_clamp_u32(u_input.b >> (96548u % 32u), 4294967295u, ~57898u) % 32u), _wgslsmith_clamp_u32(max(u_input.b >> (59838u % 32u), 4930u), 21207u, ~global0.c | ~4294967295u)));
    var var_1 = Struct_1(u_input.a, firstLeadingBit(1i), global0.c, ~_wgslsmith_dot_vec2_u32(~var_0.xw, vec2<u32>(4294967295u, 4294967295u)) << (select(abs(var_0.x >> (u_input.b % 32u)), _wgslsmith_div_u32(max(var_0.x, u_input.b), firstLeadingBit(var_0.x)), true | all(vec4<bool>(true, true, false, false))) % 32u));
    global0 = Struct_1(-u_input.a, u_input.a.x, 8347u, var_0.x >> (35011u % 32u));
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~21650u, 36202u), 0u, _wgslsmith_mult_u32(min(abs(32843u), global0.c & 65524u), ~4294967295u), 4294967295u), ~(~select(func_2(vec2<f32>(-974f, -1618f)), _wgslsmith_mod_vec4_u32(vec4<u32>(7022u, u_input.b, 66629u, 21957u), vec4<u32>(var_0.x, u_input.b, 19970u, 11828u)), vec4<bool>(true, true, true, false))), ~vec4<u32>(u_input.b, var_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.zx), ~var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(470f))), 128f))));
    return Struct_1(vec2<i32>(-_wgslsmith_add_i32(reverseBits(-68400i), min(global0.a.x, 1i)), u_input.a.x), 1i, ~0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.d, var_1.d), select(~vec2<u32>(var_1.d, 75881u), ~var_0.xw, _wgslsmith_div_u32(var_0.x, global0.d) <= 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_1(u_input.a, -2147483647i, 0u, u_input.b);
    let var_0 = _wgslsmith_add_u32(~global0.d, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.d, 4294967295u, u_input.b), vec3<u32>(global0.d, global0.c, u_input.b)) << (max(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(24575u, global0.c, 61557u)) % vec3<u32>(32u)), vec3<u32>(~u_input.b, 1u, 16583u)), 13117u));
    global0 = Struct_1(vec2<i32>(-u_input.a.x, global0.b), firstTrailingBit(46999i), 81146u, firstLeadingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + 924f)), min(vec4<i32>(~0i, _wgslsmith_sub_i32(global0.b >> (u_input.b % 32u), 1i), 31456i, ~_wgslsmith_div_i32(global0.b, -1i)), (countOneBits(vec4<i32>(31994i, global0.a.x, 1i, 4246i)) ^ -vec4<i32>(u_input.c, u_input.a.x, u_input.c, global0.a.x)) | min(vec4<i32>(u_input.a.x, -27930i, global0.a.x, 62483i) ^ vec4<i32>(21042i, global0.a.x, -1i, -4579i), vec4<i32>(44403i, 0i, 10248i, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-281f, _wgslsmith_div_f32(-1267f, 1341f), true)), 133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(356f))), 868f), countOneBits(~((vec3<i32>(global0.b, global0.b, 18458i) | vec3<i32>(u_input.a.x, -49170i, 1i)) & firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))));
}

