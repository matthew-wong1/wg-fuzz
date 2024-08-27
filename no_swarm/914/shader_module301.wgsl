struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = -53305i;
    var var_1 = select(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1598f - -721f) + -1327f) - _wgslsmith_f_op_f32(748f - _wgslsmith_f_op_f32(trunc(-134f)))) != -2022f, true);
    var var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), (select(vec4<i32>(-77768i, u_input.a, 1i, -10957i) >> (vec4<u32>(18259u, u_input.b, 4294967295u, 7058u) % vec4<u32>(32u)), vec4<i32>(-1i, -28401i, u_input.a, u_input.a) >> (vec4<u32>(84996u, 4294967295u, u_input.b, 18899u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 44073i), vec4<i32>(u_input.a, u_input.a, -29556i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(vec4<i32>(-30416i, 17144i, u_input.a, u_input.a)), select(vec4<i32>(23430i, -83053i, -8200i, u_input.a), vec4<i32>(35993i, u_input.a, -2147483647i, 2147483647i), vec4<bool>(false, true, false, true)))) & vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, 79759i, u_input.a)), vec3<i32>(27352i, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, u_input.a)), 9525i, firstTrailingBit(~1i), 0i));
    var var_4 = ~(~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 13012u, 1018u, u_input.b)), vec4<u32>(u_input.b, u_input.b | 4294967295u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(41346u, u_input.b, 138174u), vec3<u32>(u_input.b, 80290u, 107745u)))));
    return var_3.a.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-149f, -131f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1003f, -1446f)), true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(311f - 211f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-260f, 339f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * var_0.x), _wgslsmith_f_op_f32(func_3()), -599f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(-292f, var_0.x, 218f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(705f, var_0.x, -652f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2072f, 1298f, var_0.x) - vec3<f32>(-206f, var_0.x, var_0.x))), !(!arg_3))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -139f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3()))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f - -245f)), _wgslsmith_f_op_f32(func_3()), !arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(var_1.x, -808f))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, _wgslsmith_f_op_f32(-var_1.x))) * var_1.yy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1343f, -687f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x))), vec2<bool>(true, !(var_1.x <= var_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * 1000f), _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = vec2<u32>(u_input.b, ~(~u_input.b));
    var_0 = firstLeadingBit(~(vec2<u32>(0u, func_2(15376i, 1u, vec4<i32>(u_input.a, u_input.a, arg_0, u_input.a), arg_1.b)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x) | vec2<u32>(var_0.x, var_0.x), select(vec2<u32>(1u, 4294967295u), vec2<u32>(56626u, 1u), false)) % vec2<u32>(32u))));
    var_0 = vec2<u32>(~(~u_input.b), ~u_input.b);
    var var_1 = u_input.a;
    let var_2 = min(var_0.x << (abs(func_2(u_input.a, var_0.x, vec4<i32>(0i, u_input.a, arg_1.a.b.x, 0i), false)) % 32u), 94438u) << (~var_0.x % 32u);
    return -min(abs(-27096i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a) >> (vec3<u32>(55493u, 21332u, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_2(Struct_1(vec4<f32>(946f, 138f, -1548f, -936f), vec4<i32>(-1i, u_input.a, u_input.a, 0i)), any(vec2<bool>(true, var_0))))), _wgslsmith_div_i32(-2670i << (1u % 32u), ~(-31857i)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f * -513f) + 1630f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(347f, -1426f))), 548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1384f - -517f)))));
    let var_3 = select(vec2<bool>(var_0 || var_0, all(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), !vec2<bool>(var_0, false)))), !select(vec2<bool>(true, true), !vec2<bool>(var_0, false), !(!vec2<bool>(var_0, true))), vec2<bool>(true, true));
    var var_4 = Struct_3(reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(min(50791u, 74125u), ~u_input.b), 1u)), true || all(vec2<bool>(false, false)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2043f, 1016f, var_2.x, 295f))))), ~vec4<i32>(var_1, -var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1, var_1, -67094i), vec4<i32>(2147483647i, 0i, u_input.a, var_1)), _wgslsmith_sub_i32(u_input.a, var_1))), select(max(-vec2<i32>(var_1, 0i), vec2<i32>(var_1, -1i)), -(vec2<i32>(var_1, u_input.a) << (vec2<u32>(u_input.b, 5872u) % vec2<u32>(32u))), var_3) | _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, -11319i) << (vec2<u32>(28494u, u_input.b) % vec2<u32>(32u))), countOneBits(vec2<i32>(-2147483647i, -36183i))));
    let x = u_input.a;
    s_output = StorageBuffer(-16888i, vec4<u32>(0u, 41495u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(~17381u, u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 73145u, u_input.b) % vec3<u32>(32u)), vec3<u32>(30518u, 79681u, var_4.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_4.a, 2490u), vec3<u32>(1058u, 19331u, 0u)))), 0u >> (_wgslsmith_sub_u32(u_input.b, firstTrailingBit(_wgslsmith_div_u32(u_input.b, 90311u))) % 32u));
}

