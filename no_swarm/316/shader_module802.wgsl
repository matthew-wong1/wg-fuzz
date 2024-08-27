struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(reverseBits(vec4<i32>(-1i, -u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(7559i, 4862i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a))), -1i)), Struct_1(min(~1u, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f + -992f) + _wgslsmith_f_op_f32(max(1588f, -208f))))));
    let var_1 = min(~var_0.b.a, _wgslsmith_div_u32(var_0.b.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.b.a, var_0.b.a, var_0.b.a, 7740u)) ^ reverseBits(vec4<u32>(var_0.b.a, 13757u, 12676u, 1u)), ~(vec4<u32>(4294967295u, var_0.b.a, var_0.b.a, 4294967295u) ^ vec4<u32>(var_0.b.a, 80896u, 1u, 101996u)))));
    var var_2 = ~firstLeadingBit(~vec3<u32>(var_1, 4294967295u, var_1)) & (max(~vec3<u32>(4294967295u, var_1, var_1) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.b.a, 4294967295u), vec3<u32>(var_0.b.a, 8113u, 4294967295u)) % vec3<u32>(32u)), abs(abs(vec3<u32>(4294967295u, var_0.b.a, 57425u)))) ^ reverseBits(vec3<u32>(select(var_1, 4294967295u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(1u, 0u)), ~var_0.b.a)));
    var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, var_1, _wgslsmith_clamp_u32(max(var_2.x, var_1) >> (13646u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(12863u, 1712u, 0u) << (vec3<u32>(var_0.b.a, var_0.b.a, var_1) % vec3<u32>(32u)), ~vec3<u32>(var_2.x, var_2.x, 1u)), var_2.x)), ~(~vec3<u32>(var_0.b.a, var_1, 30152u) >> (vec3<u32>(4294967295u, var_1 << (var_2.x % 32u), 46985u & var_0.b.a) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1633u, var_2.x), vec3<u32>(35132u, var_0.b.a, 41190u)) << ((var_0.b.a << ((var_0.b.a >> (75203u % 32u)) % 32u)) % 32u), var_1, ~(~_wgslsmith_mod_u32(1u, var_0.b.a))));
    var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(62782u, max(var_0.b.a, ~1u), ~var_2.x), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(0u, var_0.b.a, 0u))), ~(~vec3<u32>(var_1, var_2.x, var_0.b.a))));
    return select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), true), !vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, false), any(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, false)), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a != u_input.a, false, true, true), _wgslsmith_f_op_f32(-var_0.b.b.x) <= _wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.b.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(2147483647i, arg_1);
    let var_1 = ~_wgslsmith_div_vec3_i32((vec3<i32>(u_input.a, u_input.a, var_0.x) | vec3<i32>(u_input.a, 0i, arg_1)) >> (firstTrailingBit(arg_0.xxz) % vec3<u32>(32u)), ~(vec3<i32>(arg_1, 0i, -11146i) >> (vec3<u32>(21189u, arg_0.x, 28845u) % vec3<u32>(32u)))) << (~firstLeadingBit(arg_0.yxz) % vec3<u32>(32u));
    var var_2 = (~_wgslsmith_clamp_vec4_i32(-vec4<i32>(29941i, 0i, arg_1, u_input.a), abs(vec4<i32>(var_0.x, -1i, 41935i, -1i)), vec4<i32>(12531i, var_1.x, u_input.a, 2147483647i) ^ vec4<i32>(13594i, var_1.x, -4693i, -73588i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, 70660u, 0u, 48536u), arg_0), arg_0) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(2111i, firstTrailingBit(19156i), ~(-2147483647i), _wgslsmith_sub_i32(min(-1i, 38941i), var_0.x)));
    var var_3 = Struct_2(vec4<i32>(u_input.a, u_input.a, var_2.x, arg_1) & select(_wgslsmith_mult_vec4_i32(-vec4<i32>(19602i, u_input.a, -44824i, -26211i), vec4<i32>(2147483647i, -2147483647i, -37567i, 1i) ^ vec4<i32>(arg_1, arg_1, 33568i, var_1.x)), ~(~vec4<i32>(var_2.x, var_2.x, u_input.a, -12176i)), func_3()), Struct_1(select(~firstLeadingBit(arg_0.x), arg_0.x, true), vec2<f32>(-226f, -272f)));
    let var_4 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(~(~abs(var_3.a.xxx)), -var_1));
    return Struct_2(-var_3.a << (abs(firstLeadingBit(arg_0)) % vec4<u32>(32u)), Struct_1(abs(18508u), var_3.b.b));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(9952u, arg_0.xw);
    var var_1 = min(abs(~vec2<u32>(_wgslsmith_sub_u32(var_0.a, var_0.a), var_0.a)), ~max(~(~vec2<u32>(var_0.a, var_0.a)), vec2<u32>(var_0.a, var_0.a | 29876u)));
    var var_2 = vec4<u32>(51553u, max(39710u, var_1.x), ~var_0.a, 4294967295u);
    var var_3 = func_2(vec4<u32>(36649u, _wgslsmith_add_u32(var_2.x, _wgslsmith_clamp_u32(4294967295u, 0u, var_0.a) >> (0u % 32u)), abs(var_0.a), _wgslsmith_div_u32(var_2.x, var_0.a)), u_input.a, !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))));
    var_3 = Struct_2(abs(vec4<i32>(-var_3.a.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(32920i, 5974i, -5445i), -u_input.a), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, -42687i), firstTrailingBit(var_3.a.x)), func_2(~vec4<u32>(0u, var_3.b.a, 52472u, 4294967295u), -var_3.a.x, vec3<bool>(false, false, true)).a.x)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~var_1.x, var_2.x, var_1.x, 0u), max(firstLeadingBit(vec4<u32>(var_0.a, var_2.x, var_0.a, 0u)), vec4<u32>(0u, var_3.b.a, 51684u, var_3.b.a) & vec4<u32>(1u, 1u, var_1.x, var_0.a))), firstLeadingBit(_wgslsmith_mult_i32(u_input.a, 0i)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))).b);
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(abs(~11988u));
    let var_1 = select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec3<bool>(true, true, true)), true, false, false), true), vec4<bool>(true, false, (~24239i << (var_0 % 32u)) < u_input.a, true), var_0 > 49764u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, 2147483647i, 3654i, 1i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -25305i, -1i), vec4<i32>(-26984i, u_input.a, -13687i, -26801i), vec4<i32>(u_input.a, -50600i, -46371i, -10575i)), !select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, false, false, false), var_1))), -(~vec3<i32>(func_1(vec4<f32>(551f, -551f, -2606f, -1010f)), _wgslsmith_div_i32(u_input.a, -62841i), 2147483647i)), _wgslsmith_mod_u32(var_0 << (1u % 32u), var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-263f)), _wgslsmith_f_op_f32(step(1f, 1149f))), ~(~(~vec4<u32>(64469u, 58779u, 1u, 29001u))));
}

