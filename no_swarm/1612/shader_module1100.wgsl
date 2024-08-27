struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(-643f, -1328f));
    var var_1 = max(~(-(~(-arg_0.xz))), reverseBits(abs(-arg_0.yw)));
    var var_2 = _wgslsmith_mult_vec4_u32(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b, 0u, 35245u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 59966u, 0u, 0u), vec4<u32>(0u, u_input.b, 1u, 19028u)))), ~abs(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, 33635u))));
    let var_3 = arg_2.c;
    var_1 = arg_0.yx;
    return abs(vec3<u32>(_wgslsmith_add_u32(var_2.x & var_2.x, 91622u), u_input.b, _wgslsmith_clamp_u32(var_2.x, 9476u, firstLeadingBit(22942u))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_add_vec4_i32(~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_0.a, 46339i, 41039i), vec4<i32>(-2147483647i, u_input.a, -1i, 4575i)) | min(vec4<i32>(29090i, 1i, 1i, 2147483647i), vec4<i32>(arg_0.a, u_input.c, arg_0.a, u_input.c))), _wgslsmith_mod_vec4_i32(firstLeadingBit(-min(vec4<i32>(2147483647i, u_input.c, arg_0.c.a, arg_0.b.a), vec4<i32>(u_input.c, arg_0.b.a, 0i, u_input.a))), select(vec4<i32>(i32(-1i) * -5828i, 1i, arg_0.b.a, -42227i), -(vec4<i32>(-2147483647i, 2147483647i, arg_2.c.a, arg_2.b.a) ^ vec4<i32>(arg_0.b.a, 0i, u_input.a, arg_2.a)), arg_2.b.b.x)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1, 1f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = ~(~arg_2.yx) | arg_2.yx;
    let var_1 = max(max(_wgslsmith_sub_vec3_u32(arg_2.yyz, _wgslsmith_clamp_vec3_u32(vec3<u32>(36404u, var_0.x, var_0.x), arg_2.zyy, vec3<u32>(u_input.b, 1u, var_0.x)) | vec3<u32>(4294967295u, 0u, 0u)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, -6925i, arg_1.x) ^ vec4<i32>(arg_1.x, arg_0.a, u_input.c, arg_0.c.a), arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, -677f, 461f))), arg_0, u_input.c)), vec3<u32>(u_input.b, 1u, ~(~16863u)));
    var_0 = vec2<u32>(firstTrailingBit(var_0.x), 32770u) | (vec2<u32>(1u & _wgslsmith_add_u32(u_input.b, 0u), var_1.x << (countOneBits(4294967295u) % 32u)) >> (vec2<u32>(var_1.x, ~(~4294967295u)) % vec2<u32>(32u)));
    var_0 = arg_2.wz;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-211f)) + 152f))), _wgslsmith_f_op_f32(func_3(arg_0, 515f, arg_0))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2573f)))), 1000f, false)));
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, var_1.x)) | reverseBits(~vec3<u32>(var_1.x, var_0.x, arg_2.x)), arg_2.xwy));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = max(~(~(~(vec4<i32>(u_input.a, 0i, 2147483647i, 28751i) >> (vec4<u32>(0u, 1u, 15141u, arg_0.x) % vec4<u32>(32u))))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(9557i, 1i), true)), u_input.c, 1i, _wgslsmith_div_i32(u_input.a, firstTrailingBit(u_input.a))) << (~arg_0 % vec4<u32>(32u)));
    let var_1 = 1u;
    let var_2 = Struct_2(-13289i, Struct_1(abs(var_0.x), select(vec2<bool>(arg_3, arg_2 | false), !(!vec2<bool>(false, arg_2)), !(!vec2<bool>(false, arg_2))), true == (arg_3 && true)), Struct_1(-_wgslsmith_mod_i32(-2147483647i, var_0.x << (var_1 % 32u)), vec2<bool>(!(u_input.b >= u_input.b), !any(vec4<bool>(true, true, arg_3, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, Struct_1(var_0.x, vec2<bool>(arg_2, false), arg_3), Struct_1(-2147483647i, vec2<bool>(arg_3, false), arg_3)), -1712f, Struct_2(1i, Struct_1(2147483647i, vec2<bool>(arg_2, arg_3), false), Struct_1(39626i, vec2<bool>(arg_3, true), false)))) + _wgslsmith_f_op_f32(-arg_1.x)) >= arg_1.x));
    var var_3 = min(var_0.yzy, vec3<i32>(_wgslsmith_sub_i32(-4775i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), var_0.wy)), _wgslsmith_clamp_i32(-1i, var_2.a, 2147483647i), u_input.c));
    var_3 = vec3<i32>(var_3.x, var_3.x, _wgslsmith_dot_vec3_i32(reverseBits(select(var_0.zwx, _wgslsmith_div_vec3_i32(var_0.xzx, vec3<i32>(-10949i, u_input.a, u_input.a)), arg_3 | var_2.c.c)), vec3<i32>(u_input.c, 45234i, u_input.a)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b, 25426u, u_input.b, abs(1u)), vec4<u32>(func_1(Struct_2(u_input.c, Struct_1(u_input.a, vec2<bool>(false, true), false), Struct_1(133i, vec2<bool>(true, false), false)), vec4<i32>(-85032i, -5708i, 1i, u_input.a), vec4<u32>(68507u, 56427u, u_input.b, 1u)), ~u_input.b, ~0u, 51398u), ~vec4<u32>(26915u, 74379u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, 16553u, u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, -935f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(213f, 1772f) * vec2<f32>(1000f, -477f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, -414f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-894f + -172f), _wgslsmith_f_op_f32(129f - 1154f)))), any(vec3<bool>(true, !all(vec3<bool>(true, true, false)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), true);
    var var_1 = _wgslsmith_f_op_f32(func_3(func_4(vec4<u32>(_wgslsmith_add_u32(u_input.b | u_input.b, reverseBits(u_input.b)), ~_wgslsmith_div_u32(u_input.b, 4294967295u), select(4294967295u, _wgslsmith_mult_u32(1u, u_input.b), func_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec2<f32>(-2481f, 1066f), var_0.c.b.x, false).c.c), countOneBits(u_input.b >> (28572u % 32u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(1529f)), 243f))), true, true), _wgslsmith_f_op_f32(-1634f - _wgslsmith_f_op_f32(func_3(func_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) & vec4<u32>(u_input.b, u_input.b, u_input.b, 25749u), vec2<f32>(-2639f, -1303f), true, var_0.b.b.x), 953f, Struct_2(~(-1i), func_4(vec4<u32>(u_input.b, u_input.b, 0u, 27922u), vec2<f32>(268f, 513f), var_0.b.b.x, true).c, func_4(vec4<u32>(u_input.b, 32440u, u_input.b, u_input.b), vec2<f32>(-1000f, 679f), var_0.c.b.x, true).b)))), Struct_2(var_0.b.a, func_4(~_wgslsmith_div_vec4_u32(vec4<u32>(52575u, 74364u, 1u, u_input.b), vec4<u32>(5604u, u_input.b, 11620u, 93749u)), _wgslsmith_div_vec2_f32(vec2<f32>(546f, -288f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(712f, -859f)))), false, any(!vec2<bool>(true, var_0.c.c))).b, func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 42176u, 22737u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 39135u), vec4<u32>(u_input.b, 0u, 41842u, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(-310f - -200f), -717f), all(vec4<bool>(true, true, var_0.c.b.x, var_0.b.c)), var_0.c.b.x || !var_0.b.b.x).c)));
    var var_2 = false && any(select(vec4<bool>(true, any(vec3<bool>(false, var_0.c.c, true)), true, func_4(vec4<u32>(1u, u_input.b, 0u, u_input.b), vec2<f32>(-1000f, 588f), false, var_0.b.b.x).c.b.x), vec4<bool>(var_0.b.c, var_0.b.b.x, all(vec4<bool>(var_0.c.b.x, true, var_0.b.b.x, true)), var_0.b.b.x), all(!vec4<bool>(true, var_0.c.b.x, false, false))));
    let var_3 = max(vec2<i32>(-2147483647i, -(~var_0.a)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-27866i, min(1i, var_0.a)), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(1i, u_input.a)), _wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(var_0.b.a, u_input.a)), vec2<i32>(-59953i, u_input.c)), abs(vec2<i32>(u_input.c, var_0.b.a)) >> (func_2(vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i), vec3<f32>(-263f, -380f, 165f), Struct_2(u_input.c, Struct_1(var_0.c.a, var_0.c.b, false), var_0.b), 32977i).xy % vec2<u32>(32u)))));
    let var_4 = func_4(_wgslsmith_add_vec4_u32(vec4<u32>(16731u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 77103u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.b, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1856u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 65978u), vec4<u32>(4294967295u, u_input.b, 1u, 1u)), ~vec4<u32>(24307u, u_input.b, u_input.b, 0u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 1u), min(u_input.b, 4294967295u), u_input.b, u_input.b), vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(u_input.b, u_input.b, 5448u), ~1u, _wgslsmith_mult_u32(36995u, 0u)), reverseBits(select(vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<u32>(u_input.b, 86969u, u_input.b, 29319u), var_0.c.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, _wgslsmith_f_op_f32(step(-664f, _wgslsmith_f_op_f32(trunc(1102f)))))), var_0.c.c | var_0.c.c, var_0.b.b.x).c;
    var var_5 = Struct_2(_wgslsmith_dot_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.a, u_input.c, u_input.c, -14465i), vec4<i32>(-12531i, -19373i, var_4.a, var_3.x)) << (firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.b, 657u)) % vec4<u32>(32u))) ^ ~(-vec4<i32>(-56800i, 1i, 2147483647i, -19205i)), vec4<i32>(var_0.b.a, 2147483647i, abs(_wgslsmith_dot_vec2_i32(var_3, var_3)), -60257i)), Struct_1(1i, vec2<bool>(all(!vec3<bool>(var_0.c.c, var_0.b.c, true)), any(vec4<bool>(true, var_4.b.x, true, false))), var_4.c), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~47407u, u_input.b, func_2(~vec4<i32>(396i, 71606i, var_4.a, -2147483647i), vec3<f32>(1356f, -719f, 734f), func_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec2<f32>(839f, -834f), var_5.b.b.x, var_0.b.b.x), var_4.a).x, 17364u), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 27077u, u_input.b), ~vec4<u32>(4294967295u, 73900u, u_input.b, u_input.b)))), firstLeadingBit(vec3<i32>(-(~var_3.x), ~(-24585i), ~(-1i) >> (1u % 32u))));
}

