struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_3() -> f32 {
    var var_0 = Struct_2(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true));
    var var_1 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d, u_input.d, 139148u, u_input.c.x) & vec4<u32>(5114u, 1u, 4294967295u, u_input.d), vec4<u32>(1u, u_input.d, u_input.d, 72584u)) | vec4<u32>(74852u, ~(~u_input.c.x), 0u, _wgslsmith_mod_u32(~u_input.d, _wgslsmith_mult_u32(0u, u_input.c.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(min(u_input.d, 9639u), ~1u, 0u, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, firstLeadingBit(1u), 0u)));
    var var_2 = all(!(!select(select(var_0.a, var_0.a, var_0.a.x), var_0.a, vec4<bool>(false, true, true, false))));
    let var_3 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(min(min(vec4<u32>(u_input.c.x, u_input.d, u_input.d, 34462u), vec4<u32>(u_input.c.x, 0u, 4294967295u, 29774u)), ~vec4<u32>(5194u, 65373u, u_input.d, u_input.d)), ~(vec4<u32>(4294967295u, 0u, 37715u, u_input.d) << (vec4<u32>(u_input.d, 1u, 0u, u_input.c.x) % vec4<u32>(32u)))), u_input.c.x, u_input.c.x, (_wgslsmith_mod_u32(24761u, 15235u) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 46612u, 100733u, 0u), vec4<u32>(4294967295u, 126432u, 0u, u_input.c.x))) | ~_wgslsmith_clamp_u32(u_input.d, u_input.d, 13124u)));
    var_1 = abs(var_3.x);
    return 166f;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_div_u32(~u_input.d, max(arg_0, arg_0))), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(u_input.c.x, arg_0, u_input.d)))), ~arg_0);
    let var_1 = -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, -1i), abs(vec4<i32>(2147483647i, -54375i, 1i, u_input.e))), 1i), ~firstLeadingBit(arg_1.x) << (arg_0 % 32u), reverseBits(arg_1.x));
    let var_2 = ~countOneBits(_wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.d, arg_0)), _wgslsmith_add_vec2_u32(var_0, vec2<u32>(arg_0, u_input.d)) >> ((vec2<u32>(22705u, u_input.d) >> (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = !(arg_1.x >= 2147483647i);
    let var_4 = arg_3;
    return vec4<bool>(true, arg_2.a.x, !arg_2.a.x && !arg_2.a.x, false);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<u32>(76914u, ~10558u, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 68983u), vec3<u32>(32500u, 16019u, u_input.d) ^ vec3<u32>(1u, 1u, 27232u)), u_input.d)));
    let var_1 = Struct_2(select(select(!(!vec4<bool>(true, false, true, arg_0)), select(!vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, false)), vec4<bool>(arg_0, arg_0, true, arg_0)), true), select(vec4<bool>(true, arg_0, !arg_0, arg_0 | arg_0), vec4<bool>(arg_0 || arg_0, arg_0, arg_0, any(vec2<bool>(arg_0, true))), vec4<bool>(var_0.x < u_input.c.x, false, any(vec2<bool>(arg_0, arg_0)), true)), vec4<bool>(arg_0, !arg_0, true, all(select(vec3<bool>(arg_0, false, true), vec3<bool>(true, false, true), true)))));
    let var_2 = 4294967295u;
    let var_3 = u_input.a;
    var var_4 = func_4(u_input.d, -_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, 1i, -8923i), vec3<i32>(var_3, -45079i, 1i)), Struct_2(select(!(!var_1.a), !select(vec4<bool>(var_1.a.x, false, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), var_1.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-166f, _wgslsmith_f_op_f32(func_3()), all(!vec2<bool>(arg_0, false))))));
    return Struct_1(var_1.a, min(u_input.b.xzx, reverseBits(u_input.b.wxz)), !(!(!(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1284f, -2157f) * arg_1.xx))))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x)))), arg_1.zy);
    let var_1 = Struct_2(!(!(!(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)))));
    let var_2 = func_2(false, 9496i);
    var var_3 = !(!var_2.a.x & var_1.a.x);
    let var_4 = Struct_3(Struct_2(var_2.a), arg_2, _wgslsmith_div_i32(-32359i, ~u_input.a), any(arg_2.yz));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -971f))), _wgslsmith_f_op_f32(func_1(u_input.b.wwz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1418f, 540f, -266f, 302f)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1650f * -615f), _wgslsmith_f_op_f32(floor(-231f))))))));
    var var_1 = vec4<u32>(u_input.d, u_input.d, _wgslsmith_sub_u32(92553u << (abs(59314u << (u_input.c.x % 32u)) % 32u), u_input.d), 1u);
    let var_2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, 8565i)), u_input.b.xw) << (_wgslsmith_dot_vec4_u32(select(~(vec4<u32>(0u, u_input.d, u_input.c.x, 79288u) & vec4<u32>(var_1.x, 23201u, 123837u, 13130u)), vec4<u32>(u_input.d, 6897u, 33139u, 185u) << (firstTrailingBit(vec4<u32>(1u, 0u, 4294967295u, var_1.x)) % vec4<u32>(32u)), vec4<bool>(true, true, -237f <= var_0.x, true)), vec4<u32>(~(~11736u), firstTrailingBit(69335u), var_1.x, 4294967295u)) % 32u);
    var_1 = vec4<u32>(~u_input.c.x, (~select(u_input.c.x, 42515u, false) >> (abs(0u) % 32u)) | u_input.c.x, var_1.x, ~(countOneBits(countOneBits(u_input.d)) & 106937u));
    var_1 = ~vec4<u32>(abs(~(~0u)), firstTrailingBit(3894u) & _wgslsmith_dot_vec3_u32(var_1.wxz, ~var_1.wzy), u_input.c.x, 4294967295u);
    var var_3 = Struct_1(vec4<bool>(var_0.x != 549f, false, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), !all(vec4<bool>(true, true, true, true))), vec3<i32>(var_2, -47316i, _wgslsmith_sub_i32(countOneBits(firstTrailingBit(var_2)), -810i)), func_2(select(false, false, true), reverseBits(u_input.a)).a);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-442f))))))) * var_0.x);
    var var_5 = Struct_1(func_4(4294967295u, select(vec3<i32>(12196i, var_3.b.x, -39537i) << (vec3<u32>(u_input.c.x, 17582u, u_input.c.x) % vec3<u32>(32u)), -u_input.b.zxw, u_input.b.x < 2147483647i), Struct_2(select(vec4<bool>(false, var_3.c.x, false, var_3.c.x), vec4<bool>(var_3.c.x, false, var_3.a.x, false), !vec4<bool>(var_3.c.x, var_3.a.x, var_3.c.x, var_3.a.x))), _wgslsmith_f_op_f32(round(var_0.x))), u_input.b.yyy, vec4<bool>(false, var_3.b.x > _wgslsmith_clamp_i32(abs(var_2), _wgslsmith_sub_i32(2147483647i, var_3.b.x), abs(13819i)), true, false));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(380f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_5.b, vec4<f32>(2131f, var_0.x, var_0.x, 962f), var_3.c.ywx)), _wgslsmith_f_op_f32(var_0.x - 559f))), select(func_4(var_1.x, u_input.b.zyx, Struct_2(var_3.a), _wgslsmith_f_op_f32(-520f - var_0.x)).x, var_1.x <= _wgslsmith_div_u32(u_input.d, var_1.x), var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1119f - _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))), ~(u_input.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 11821u, var_1.x), var_1.yyz | var_1.wwx)), -1141f);
}

