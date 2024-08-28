struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + -1884f);
    return Struct_1(vec3<i32>(u_input.a, -u_input.a, u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(arg_0.a ^ reverseBits(arg_0.a), arg_0.a));
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2528f)) - 1231f), false, true);
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(var_0.a | _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.a.x, arg_0.a.x, 0i), var_0.a & vec3<i32>(arg_0.a.x, 1i, arg_0.a.x)), vec3<i32>(_wgslsmith_mult_i32(-1i, arg_0.a.x), _wgslsmith_mult_i32(1i, -2147483647i ^ arg_0.a.x), ~(1i ^ arg_0.a.x))));
    var_0 = func_2(-1399f);
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(~var_2.a.x, ~(abs(2147483647i) | var_2.a.x)), vec2<i32>(_wgslsmith_mod_i32(var_2.a.x, u_input.a), 6202i));
    return Struct_1(arg_0.a);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1571f))))));
    let var_1 = arg_0;
    let var_2 = arg_0.a.x;
    var var_3 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true)), vec3<bool>(true, true, all(vec2<bool>(false, false))), true), vec3<bool>(true, true, true), true && (all(vec2<bool>(false, false)) || (var_1.a.x < var_1.a.x))), vec3<bool>(false, true, false));
    var var_4 = Struct_1(firstTrailingBit(max(~var_1.a, ~reverseBits(var_0.a))));
    return Struct_1(var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<u32>(1u, 44160u, 24119u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 3629u, 4294967295u), ~1u)), ~(_wgslsmith_mod_u32(0u, 4294967295u) >> (_wgslsmith_clamp_u32(0u, 58741u, 48032u) % 32u))));
    let var_1 = Struct_1(vec3<i32>(select(_wgslsmith_mult_i32(8965i, arg_0.a.x), arg_0.a.x, all(vec4<bool>(true, true, true, true))), ~firstLeadingBit(_wgslsmith_div_i32(2147483647i, 18386i)), 0i));
    var var_2 = func_1(func_3(Struct_1(select(~arg_1.a, var_1.a, vec3<bool>(true, true, true)))), true, select(!vec2<bool>(true, var_0.x >= var_0.x), select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false), any(vec2<bool>(true, true))), !vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, true)))), 1u ^ var_0.x);
    var_2 = func_3(func_1(var_1, true && any(vec3<bool>(true, true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), var_0.x));
    let var_3 = arg_2;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 9081i), countOneBits(vec3<i32>(-10818i, u_input.a, u_input.a)))), func_3(func_1(Struct_1(vec3<i32>(u_input.a, 16834i, -2147483647i) ^ vec3<i32>(-104143i, u_input.a, u_input.a)), all(vec4<bool>(true, true, true, true)), vec2<bool>(all(vec2<bool>(true, true)), u_input.a != u_input.a), _wgslsmith_div_u32(select(8745u, 14965u, false), 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2050f, 1111f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-650f)) * -578f)) * vec2<f32>(768f, _wgslsmith_f_op_f32(-1826f - _wgslsmith_div_f32(190f, 1435f)))));
    var var_1 = any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec4<bool>(true, true, false, true)))) & !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1500f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1090f)), _wgslsmith_f_op_f32(891f * -782f)));
    var_1 = true;
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(_wgslsmith_f_op_f32(select(889f, -796f, false))).a, firstLeadingBit(var_0.a)), ~max(var_0.a, var_0.a)));
    let var_3 = !(!(!select(true, true, true))) || true;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 791f)))), ~var_0.a, 567f, vec3<i32>(-1i) * -abs(vec3<i32>(var_2.a.x, 1i, 21482i) ^ var_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(54820u, 4294967295u, 14819u), vec3<u32>(0u, 4294967295u, 0u)), ~1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), var_3), ~vec2<u32>(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(62963u, 0u, 28263u, 0u), abs(vec4<u32>(4294967295u, 38148u, 21726u, 0u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(19231u, 0u), vec2<u32>(0u, 4294967295u)), vec2<u32>(0u, 53530u)), firstLeadingBit(0u), 1u, 1u)));
}

