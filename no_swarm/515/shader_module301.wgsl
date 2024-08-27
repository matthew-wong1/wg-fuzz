struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = -136f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(571f, 1054f)), _wgslsmith_f_op_f32(ceil(arg_1.b.x))) * arg_1.b))));
    let var_2 = select(~vec4<u32>(countOneBits(~4294967295u), ~_wgslsmith_mult_u32(40246u, arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 74336u), select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.b, arg_2), vec2<bool>(arg_1.a, true))), 1151u), firstLeadingBit(vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1u, 1u, 0u)), ~vec4<u32>(arg_2, 56570u, u_input.a, 4294967295u)), _wgslsmith_clamp_u32(u_input.b | u_input.a, arg_2, ~arg_2), min(8019u, u_input.a ^ 30360u))), !select(vec4<bool>(true, true, !arg_1.a, false), vec4<bool>(all(vec2<bool>(arg_1.a, arg_1.a)), arg_0 > -57224i, false, arg_1.a), arg_0 > -2147483647i));
    var var_3 = -firstLeadingBit(0i);
    var var_4 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(var_2.x, 4294967295u, ~4294967295u, u_input.b)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~var_2.zy, var_2.wy, vec2<u32>(arg_2, 4294967295u)), vec2<u32>(0u, 0u))), 43210i);
    return max(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstLeadingBit(var_4.a), ~1u) | 4294967295u, arg_2), select(~0u, ~(~1u) >> (_wgslsmith_sub_u32(90489u, _wgslsmith_mult_u32(1u, var_2.x)) % 32u), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_3(!(arg_1 <= (~u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(6903u, 0u)) % 32u))), arg_0);
    var var_1 = Struct_1(3166u ^ min(~(1u >> (1u % 32u)), _wgslsmith_mult_u32(~arg_1, min(4294967295u, u_input.b))), ~(-1i));
    var_1 = Struct_1(u_input.a, _wgslsmith_div_i32(_wgslsmith_add_i32(~var_1.b, -(~var_1.b)), ~2147483647i));
    var_1 = Struct_1(func_3(var_1.b, Struct_3(!all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, var_0.b.x) * _wgslsmith_f_op_vec2_f32(sign(var_0.b)))), var_1.a), var_1.b);
    var var_2 = var_0;
    return !(!vec4<bool>(var_0.a, any(select(vec4<bool>(true, var_2.a, var_2.a, var_0.a), vec4<bool>(false, false, true, var_2.a), vec4<bool>(true, var_0.a, true, var_0.a))), _wgslsmith_mod_u32(32169u, 32498u) >= arg_1, all(vec4<bool>(false, var_2.a, true, false)) || true));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = ~(abs(vec4<i32>(_wgslsmith_mod_i32(arg_2.a.b, arg_2.a.b), arg_0, arg_0, ~(-2147483647i))) >> (~arg_2.b % vec4<u32>(32u)));
    let var_1 = Struct_2(Struct_1(4294967295u, firstTrailingBit((arg_0 ^ var_0.x) | var_0.x)), ~vec4<u32>(u_input.a, _wgslsmith_mod_u32(21635u, _wgslsmith_add_u32(arg_2.b.x, 28258u)), ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 40313u, 28928u), vec3<u32>(u_input.a, arg_2.b.x, 4294967295u)), vec3<u32>(1u, 0u, u_input.a))));
    var var_2 = arg_2.a;
    var_0 = abs(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.a.b, var_1.a.b, var_0.x, -13393i), ~vec4<i32>(2147483647i, var_1.a.b, var_2.b, -37844i)));
    let var_3 = Struct_1(~u_input.b, var_1.a.b);
    return vec3<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(var_1.b.x, 21445u, var_2.a, arg_2.a.a))), arg_2.b), _wgslsmith_dot_vec3_u32(var_1.b.wxz, _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a, 0u, ~1u), arg_2.b.ywz)), u_input.a);
}

fn func_1() -> bool {
    let var_0 = 523f;
    let var_1 = firstLeadingBit(func_4(4990i, any(func_2(vec2<f32>(var_0, 666f), u_input.b >> (u_input.a % 32u))), Struct_2(Struct_1(1u, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -23213i, 41834i), vec3<i32>(-1i, 0i, -15849i))), vec4<u32>(4294967295u, ~33222u, ~51386u, select(u_input.b, u_input.b, false)))));
    let var_2 = Struct_2(Struct_1(1u, 0i), ~(~(~vec4<u32>(36356u, u_input.a, var_1.x, var_1.x)) >> (((vec4<u32>(u_input.b, u_input.b, var_1.x, 44823u) >> (vec4<u32>(u_input.a, 0u, var_1.x, 1u) % vec4<u32>(32u))) ^ select(vec4<u32>(var_1.x, 31876u, var_1.x, var_1.x), vec4<u32>(34144u, var_1.x, 28356u, 0u), true)) % vec4<u32>(32u))));
    let var_3 = max(~(i32(-1i) * -1i), 2147483647i);
    var var_4 = !vec3<bool>(true, any(vec4<bool>(true, var_2.a.b < -6066i, true, all(vec4<bool>(false, false, true, true)))), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false), true)));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(213f)), _wgslsmith_f_op_f32(254f * -1534f)))));
    var var_1 = true;
    var var_2 = vec4<bool>(false, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_0.b, var_0.b))))), ~0u).x, true | (1i != firstTrailingBit(1i)), select(0u, 9531u, (4294967295u | u_input.b) == u_input.b) < (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13349u, 1u), vec2<u32>(u_input.a, 4294967295u)), ~u_input.b) ^ ~0u));
    var var_3 = Struct_2(Struct_1(select(~u_input.a, _wgslsmith_mult_u32(u_input.a << (4294967295u % 32u), 11744u), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, -618f), var_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(38585u, u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, u_input.b))).x), 29350i | (1i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -12964i), vec2<i32>(2147483647i, 27498i)))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, (4294967295u ^ u_input.b) | max(0u, 9985u), max(u_input.a, 38635u) << (countOneBits(50308u) % 32u)), vec4<u32>(1u, u_input.a, 10394u, abs(~0u))));
    let var_4 = Struct_3(var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + var_0.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(var_0.b.x, -1000f))))));
    var var_5 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_3.b, vec4<u32>(var_3.a.a, 4294967295u, u_input.b, 0u) << (vec4<u32>(var_3.a.a, var_3.a.a, 79242u, 0u) % vec4<u32>(32u))), vec4<u32>(var_3.a.a >> (var_3.b.x % 32u), func_3(-24213i, Struct_3(true, vec2<f32>(var_0.b.x, -331f)), u_input.a), ~u_input.a, reverseBits(0u))) & 10158u);
    var var_6 = _wgslsmith_add_vec4_i32(~((vec4<i32>(var_3.a.b, 4692i, -32764i, 0i) << (vec4<u32>(u_input.a, 7883u, u_input.a, 22822u) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(var_3.a.b, var_3.a.b, var_3.a.b, 31566i))), -(~(vec4<i32>(-19217i, var_3.a.b, 0i, 1i) >> (var_3.b % vec4<u32>(32u))))) & -select(-vec4<i32>(-2147483647i, 0i, 0i, var_3.a.b) | ~vec4<i32>(var_3.a.b, -1i, 1i, 44427i), -(vec4<i32>(-5105i, -18646i, -17600i, 2147483647i) ^ vec4<i32>(var_3.a.b, -1i, var_3.a.b, var_3.a.b)), all(vec3<bool>(var_0.a, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.x, 732f))))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_3.b.x), vec2<u32>(var_3.b.x, u_input.a)), ~var_3.a.a, ~var_3.a.a, _wgslsmith_mult_u32(u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(var_3.b, reverseBits(vec4<u32>(19582u, 1u, 4294967295u, u_input.a)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(9258u, 49932u, 1u, u_input.a), vec4<u32>(8970u, 55655u, var_3.b.x, var_3.b.x)), abs(u_input.a) << (4294967295u % 32u), _wgslsmith_mod_u32(~u_input.a, ~var_3.b.x), var_3.b.x), vec4<u32>(~(~var_3.b.x), u_input.a, ~_wgslsmith_sub_u32(u_input.b, 56225u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.a, var_3.a.a, u_input.b), var_3.b.zzw))), u_input.a);
}

