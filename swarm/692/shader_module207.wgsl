struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_4(vec4<i32>(select(countOneBits(-52187i), ~(-2147483647i), false), -1i, _wgslsmith_clamp_i32(1i, reverseBits(arg_0.x), -2147483647i) << (~u_input.a.x % 32u), _wgslsmith_add_i32(arg_0.x, -(~4854i))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.x, 0i, arg_2) ^ vec4<i32>(arg_2, 0i, arg_0.x, 1i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_2, -8112i, arg_2), vec4<i32>(-71487i, -16955i, 1i, arg_2), vec4<i32>(arg_0.x, arg_2, -2147483647i, 0i))) | vec4<i32>(-2147483647i, 0i, arg_2, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, arg_2, arg_0.x), vec4<i32>(2636i, arg_2, arg_2, -1i))), true);
    var var_1 = abs(_wgslsmith_mod_i32(arg_2, var_0.b.x) ^ 33597i) | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, ~arg_2, 2147483647i, arg_0.x), var_0.b));
    var var_2 = Struct_2(48028i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-154f, -1203f, 275f), vec3<f32>(312f, 501f, 193f), vec3<bool>(true, false, arg_1.x)))))))), false, _wgslsmith_f_op_f32(952f * _wgslsmith_f_op_f32(max(-1037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-4102f, 1228f)))))), false);
    let var_4 = !(!(!select(vec4<bool>(var_0.c, arg_1.x, false, var_3.b), vec4<bool>(true, var_3.b, true, var_3.b), all(vec4<bool>(var_0.c, true, false, arg_1.x)))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3.a.x)), 688f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_3.c, -1188f))))), var_3.a);
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = 1377u;
    var var_1 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    let var_2 = Struct_2(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-69616i, 12830i, 0i, 45677i), firstLeadingBit(vec4<i32>(0i, 2147483647i, 1i, 3000i))), 1i));
    var var_3 = Struct_2(select(29635i & var_2.a, -var_2.a, true));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(829f, _wgslsmith_f_op_f32(step(-313f, _wgslsmith_f_op_f32(-130f - arg_0.x))), 509f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(arg_0))))))) * _wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, 45296i), vec3<i32>(-2147483647i, var_2.a, var_3.a))), !select(var_1.yz, select(var_1.xy, var_1.xy, var_1.x), var_1.zx), 1i, _wgslsmith_add_u32(~1u, u_input.c))));
    return select(vec3<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x && var_1.x, true), vec3<bool>(u_input.c > min(~1u, max(0u, 0u)), false, true), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    let var_0 = u_input.b.x;
    var var_1 = 0u;
    var_1 = reverseBits(abs(_wgslsmith_div_u32(86551u, 4294967295u)));
    return -7561i;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = countOneBits(vec2<i32>(0i, func_4(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(1709f, -590f, -1000f), vec3<f32>(1267f, 743f, 1800f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(829f, 1000f, false))))));
    let var_1 = !any(select(func_2(vec3<f32>(812f, 1606f, -150f)).yy, vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))) || false;
    var var_2 = Struct_3(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.x, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(0i, 67865i)), true) | max(min(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(-1i, var_0.x)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, var_0.x) | ~var_0.x)), min(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, -58052i)), firstTrailingBit(vec2<i32>(1i, -1i))), vec2<i32>(var_0.x, -countOneBits(-2147483647i))), !(arg_0 == true), var_0.x, vec4<u32>(_wgslsmith_add_u32(~u_input.a.x, reverseBits(1u)) & countOneBits(~u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(13234u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(~0u, u_input.c, 1u, countOneBits(62235u))), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~19901u), select(~u_input.a.x, ~23125u, func_2(vec3<f32>(1042f, 1605f, -135f)).x)), u_input.a.x & u_input.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(634f, -1938f), -661f))));
    var var_4 = vec4<bool>(~min(var_0.x ^ var_0.x, -var_2.d) == (i32(-1i) * -35860i), !var_2.c, ~(-var_0.x) <= _wgslsmith_add_i32(var_2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, 3884i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_2.a.x), var_2.b))), all(vec2<bool>(all(select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, false, true, var_2.c), true)), -146f > _wgslsmith_f_op_f32(round(334f)))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_vec3_f32(func_3(-reverseBits(vec3<i32>(var_0.x, var_2.a.x, var_0.x)), select(vec2<bool>(false, arg_0), func_2(vec3<f32>(var_3, var_3, 2513f)).zz, any(var_4.ww)), ~_wgslsmith_add_i32(0i, var_2.b.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_add_u32(97997u, 0u)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-70461i);
    var var_1 = _wgslsmith_f_op_f32(min(3458f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 652f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-3206f, -1049f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1105f, -1981f) + vec2<f32>(-794f, -782f)), _wgslsmith_f_op_vec2_f32(func_1(false)), true)))));
}

