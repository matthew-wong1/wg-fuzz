struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 26855u, 11493u), vec4<u32>(u_input.a.x, 4294967295u, 69598u, u_input.a.x)), u_input.a.x, 0u));
    var_0 = Struct_3(var_0.a);
    let var_1 = -25288i;
    let var_2 = u_input.b;
    var var_3 = Struct_3(vec3<u32>(2069u, var_0.a.x, _wgslsmith_div_u32(u_input.a.x, 0u)));
    return firstLeadingBit(-(~(vec4<i32>(u_input.b, var_2, -1i, var_1) >> (vec4<u32>(19283u, var_3.a.x, 0u, var_0.a.x) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_mod_i32(u_input.b, 2147483647i) << (13429u % 32u), vec4<i32>(_wgslsmith_clamp_i32(-u_input.b, min(0i, u_input.b), u_input.b), -(1i >> (1u % 32u)), 49515i, -2147483647i), ~(~u_input.a.x)));
    var_0 = Struct_2(Struct_1(true, -firstTrailingBit(1i), ~func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-675f, -1000f, 2344f, -1330f)))), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a), 41924u), 4294967295u)));
    var var_1 = var_0.a.c.x;
    var_0 = Struct_2(Struct_1(var_0.a.a, u_input.b, abs(vec4<i32>(-26681i, 1i, -53416i & u_input.b, ~u_input.b)), ~(~u_input.a.x)));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(arg_0.a.x, ~1u), var_0.a.d, ~(~var_0.a.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) * _wgslsmith_f_op_f32(f32(-1f) * -103f)) + _wgslsmith_div_f32(-1000f, -873f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-156f)), _wgslsmith_f_op_f32(-412f - -122f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(497f)), _wgslsmith_f_op_f32(-1081f * -1000f))), _wgslsmith_f_op_f32(step(300f, _wgslsmith_f_op_f32(f32(-1f) * -571f)))))));
}

fn func_4(arg_0: f32) -> bool {
    var var_0 = Struct_3(vec3<u32>(u_input.a.x, (abs(u_input.a.x) ^ (28884u | u_input.a.x)) ^ 21565u, u_input.a.x));
    var_0 = Struct_3(vec3<u32>(2005u & _wgslsmith_add_u32(max(1u, var_0.a.x), _wgslsmith_mult_u32(var_0.a.x, 23623u)), ~(~abs(u_input.a.x)), select(1u, ~u_input.a.x | ~u_input.a.x, !all(vec3<bool>(true, false, false)))));
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_1(any(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_sub_i32(u_input.b, 28576i) & u_input.b, vec4<i32>(-(~u_input.b >> (7728u % 32u)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(31732i, u_input.b, 2147483647i), vec3<i32>(u_input.b, -1i, -36499i), vec3<i32>(-1i, u_input.b, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-55571i, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, 34506i))), u_input.b, 2239i), _wgslsmith_dot_vec4_u32(vec4<u32>(65922u, 4294967295u, ~1u, _wgslsmith_dot_vec3_u32(var_0.a, var_0.a) << (~1u % 32u)), reverseBits(vec4<u32>(u_input.a.x, 1u, ~var_0.a.x, select(var_0.a.x, var_0.a.x, false)))));
    var var_2 = Struct_1(!all(vec2<bool>(all(vec3<bool>(var_1.a, false, true)), all(vec3<bool>(var_1.a, var_1.a, true)))), ~u_input.b, ~(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(116f, arg_0, 534f, -1000f), vec4<f32>(-1101f, arg_0, arg_0, arg_0))) >> (firstLeadingBit(vec4<u32>(26013u, var_0.a.x, 16216u, 1u)) % vec4<u32>(32u))), ~(_wgslsmith_mult_u32(u_input.a.x, ~9428u) & 0u));
    return !(~var_2.c.x > var_1.b);
}

fn func_1() -> u32 {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1645f, 2380f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1963f)), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1652f)) * _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(592f, 421f, true)), -546f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) * -261f) * _wgslsmith_f_op_f32(step(-226f, -1522f)));
    var var_2 = 1i >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x))) ^ ~vec4<u32>(u_input.a.x, 12322u, 38802u, u_input.a.x), vec4<u32>(select(1u, min(u_input.a.x, u_input.a.x), false), select(~u_input.a.x, u_input.a.x, func_4(-796f)), 36337u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6577u, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x))))) % 32u);
    let var_3 = select(vec4<bool>(false, var_0.x, any(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), true)), var_0.x), select(select(vec4<bool>(all(vec3<bool>(false, false, true)), var_0.x, var_0.x, true), !(!vec4<bool>(var_0.x, true, true, true)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !vec4<bool>(false, !var_0.x, all(vec2<bool>(true, var_0.x)), true), true), !vec4<bool>(true, true, var_0.x, true));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.a), vec2<u32>(~29137u, _wgslsmith_mult_u32(0u, u_input.a.x))), ((u_input.a ^ u_input.a) << (~u_input.a % vec2<u32>(32u))) | vec2<u32>(u_input.a.x, select(u_input.a.x, u_input.a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(min(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, -20108i, 12335i)) ^ vec4<i32>(_wgslsmith_mult_i32(26015i, u_input.b), i32(-1i) * -10892i, ~u_input.b, ~(-2147483647i))));
    var var_1 = true;
    var_0 = -(-reverseBits(-vec4<i32>(u_input.b, u_input.b, var_0.x, -20552i)) << (vec4<u32>(84259u, u_input.a.x, func_1() & ~5009u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(11691u, u_input.a.x), u_input.a, vec2<bool>(false, false)), ~u_input.a)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(-31642i, firstTrailingBit(-13241i), u_input.b, ~u_input.b);
    var var_2 = Struct_1(true, abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, 1i), 0i)), abs(vec4<i32>(1i, var_0.x, -var_0.x, -1i) ^ func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, 509f, -177f, -1241f)))), ~firstTrailingBit(~(u_input.a.x ^ u_input.a.x)));
    let var_3 = Struct_3(select(~vec3<u32>(max(var_2.d, 1u), min(9835u, u_input.a.x), ~var_2.d), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 4160u, 14190u)), u_input.a.x), countOneBits(1u), 63651u), !(!var_2.a) || !(var_2.a && true)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1785f, -344f)) + _wgslsmith_f_op_f32(1533f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_2.d, u_input.a.x, 1u, var_3.a.x)), ~vec4<u32>(12362u, var_2.d, 18865u, u_input.a.x)), ~max(vec4<u32>(24543u, var_2.d, var_3.a.x, var_2.d), vec4<u32>(var_3.a.x, u_input.a.x, u_input.a.x, 455u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(521f - -1035f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -706f))))), -1036f));
}

