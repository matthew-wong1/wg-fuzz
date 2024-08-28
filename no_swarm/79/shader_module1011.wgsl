struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.x, ~(~((arg_0.x | 37744u) & 1u)));
    let var_1 = 22124u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-915f))) * -282f);
    var var_3 = all(vec4<bool>(false || (true || select(false, true, true)), true, select(true, var_1 == ~arg_0.x, true), false));
    var_3 = all(!vec4<bool>((-8567i < u_input.a) | (u_input.a >= u_input.a), true, true, false));
    return vec4<bool>(false, all(vec2<bool>(!any(vec2<bool>(false, false)), true)), true, true);
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(firstTrailingBit(1u), firstLeadingBit(4294967295u)), 1u));
    let var_1 = Struct_1(0u, ~(var_0.a.a & _wgslsmith_mult_u32(~119662u, 1u)));
    var var_2 = select(select(func_3(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, var_1.b, var_0.a.b), vec4<u32>(var_0.a.b, 0u, var_1.b, var_0.a.a), vec4<u32>(0u, var_0.a.a, 1u, var_0.a.a)))), vec4<bool>(1u != _wgslsmith_sub_u32(1u, var_0.a.a), false, 9420u > ~var_0.a.a, true), vec4<bool>(true, true, select(true, false, false) || true, all(vec3<bool>(false, true, false)))), !(!vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)), vec4<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)), all(vec4<bool>(var_1.b >= 7409u, false, true, select(true, true, true))), true, ~(~var_1.b) < abs(~var_1.a)));
    var_2 = select(vec4<bool>(var_2.x, ~(var_1.b << (var_0.a.b % 32u)) != var_1.b, 10713i < _wgslsmith_clamp_i32(u_input.a << (var_1.b % 32u), ~(-2147483647i), -u_input.a), true), !(!vec4<bool>(true, false, false & var_2.x, true)), !select(!select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, true, false, true)), vec4<bool>(var_2.x, var_2.x, true, all(vec2<bool>(var_2.x, var_2.x))), true));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(var_0.a.b), var_0.a.a));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b, ~73214u), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_3.a.a, 0u), min(vec2<u32>(8825u, var_1.a), vec2<u32>(var_0.a.a, 14427u)))), 27710u), ~vec2<u32>(~var_3.a.b, 59198u));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = ~reverseBits(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_0.a.b, arg_0.a.a)) >> (func_2() % vec2<u32>(32u)), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(30233u, arg_0.a.b), vec2<u32>(13905u, arg_0.a.b)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, arg_1, arg_1, arg_1) + vec4<f32>(-1892f, 358f, arg_1, -815f)) * vec4<f32>(arg_1, arg_1, 335f, -1005f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 2316f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-740f, arg_1, 2519f, -1764f) + vec4<f32>(arg_1, -649f, arg_1, arg_1))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, 145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f) - _wgslsmith_f_op_f32(floor(921f))), arg_1)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-613f, -220f, -216f, 1000f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1619f, 394f, -331f, arg_1), vec4<f32>(1147f, -2363f, arg_1, -1587f))), false))))));
    var var_2 = Struct_3(var_1.x);
    let var_3 = ~(~arg_0.a.a);
    return ~(abs(22202u) << (_wgslsmith_mult_u32(923u, 0u) % 32u)) > ~min(min(~4294967295u, arg_0.a.a), abs(_wgslsmith_div_u32(49030u, var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(~(firstTrailingBit(vec4<u32>(1u, 0u, 66152u, 66096u)) << (abs(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_div_u32(1u, 37402u), ~18581u, ~122128u, countOneBits(50494u)), func_1(Struct_2(Struct_1(41212u, 41056u)), -353f)));
    var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13723u) >> (_wgslsmith_clamp_vec2_u32(~var_0.zw, countOneBits(var_0.xy), _wgslsmith_mult_vec2_u32(var_0.zx, vec2<u32>(88924u, var_0.x))) % vec2<u32>(32u)), ~(~vec2<u32>(46622u, var_0.x) | (var_0.zx & var_0.ww))), 74707u << (~_wgslsmith_div_u32(countOneBits(var_0.x), 1u) % 32u), abs(4294967295u), var_0.x);
    var_0 = vec4<u32>(1u, 0u, ~1u, 4294967295u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f), 1f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-778f + -920f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(845f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a)))))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(abs(-1830f)));
    var var_3 = u_input.a;
    var var_4 = vec4<i32>(2147483647i >> (var_0.x % 32u), u_input.a & u_input.a, i32(-1i) * -2147483647i, -9884i);
    let var_5 = Struct_1(abs(func_2().x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(91087u), min(var_0.x, 1u), var_0.x, 40045u), vec4<u32>(~var_0.x, ~(~var_0.x), _wgslsmith_mult_u32(var_0.x, var_0.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(30932u, var_0.x, var_0.x, 0u)), _wgslsmith_mult_u32(firstLeadingBit(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 31172u, var_0.x), vec3<u32>(38302u, 4294967295u, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.a, (u_input.a ^ -2147483647i) | select(~u_input.a, u_input.a, all(vec4<bool>(false, true, false, true))), 1i), vec2<i32>(var_4.x, var_4.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1.a + var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1035f, var_2.x), _wgslsmith_f_op_f32(var_1.a * var_1.a), true))))), var_1.a);
}

