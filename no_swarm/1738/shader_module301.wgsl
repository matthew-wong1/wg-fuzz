struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    let var_0 = u_input.a.x ^ abs(_wgslsmith_mod_i32(abs(firstTrailingBit(-31788i)), select(~0i, -8291i, all(vec3<bool>(false, false, true)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, 491f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-773f, -488f)))))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)));
    let var_4 = u_input.a;
    return any(select(vec3<bool>(true, all(!vec3<bool>(true, var_1.b, var_1.b)), all(vec3<bool>(var_1.b, var_1.b, var_1.b))), select(!(!vec3<bool>(var_1.b, var_1.b, var_1.b)), !select(vec3<bool>(var_1.b, false, true), vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(false, var_1.b, var_1.b)), false), !(!select(vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(var_1.b, true, true), vec3<bool>(false, var_1.b, var_1.b)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = -1956f;
    var var_1 = !(!vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), func_3(), all(vec4<bool>(true, true, true, true)), true));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-858f, 881f, true)) + -969f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1071f)) + _wgslsmith_f_op_f32(max(735f, 1f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1493f, _wgslsmith_f_op_f32(sign(-1954f)))))));
    let var_2 = Struct_1(firstLeadingBit(39989u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -287f)) + _wgslsmith_f_op_f32(sign(-1129f))) < _wgslsmith_f_op_f32(sign(-244f)));
    let var_3 = firstTrailingBit(20020u);
    return Struct_1(~84139u, var_1.x || true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    let var_0 = max(vec3<i32>(u_input.a.x, ~(~_wgslsmith_add_i32(arg_2, -2147483647i)), abs(u_input.a.x) << (0u % 32u)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(~vec3<i32>(-13389i, 33233i, u_input.a.x))), abs(-vec3<i32>(5803i, u_input.a.x, 2147483647i)), _wgslsmith_add_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, u_input.a.x), vec3<i32>(-2147483647i, 60563i, u_input.a.x)), select(u_input.a.xwy, u_input.a.wxy, true)), _wgslsmith_add_vec3_i32(reverseBits(u_input.a.zyy), firstLeadingBit(vec3<i32>(arg_2, 34967i, arg_2))))));
    var var_1 = ~(~_wgslsmith_add_u32(arg_1.a, ~u_input.c.x));
    var var_2 = max(vec4<u32>(abs(abs(u_input.b)), arg_0.a, arg_1.a, 46544u), vec4<u32>(~9602u, _wgslsmith_add_u32(u_input.c.x, func_2(-33842i).a), ~(~(~73865u)), select(arg_0.a ^ 1u, ~4294967295u, func_3())));
    var_2 = ~vec4<u32>(func_2(_wgslsmith_add_i32(u_input.a.x, -32304i)).a >> ((arg_1.a >> (~94180u % 32u)) % 32u), 29174u, var_2.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, 37462u, arg_0.a, 33598u), vec4<u32>(arg_1.a, u_input.b, 26650u, arg_1.a)));
    var var_3 = _wgslsmith_add_u32(firstLeadingBit(select(109368u, ~1u, true)), u_input.b) ^ 28128u;
    return _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 137f));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1424f) * _wgslsmith_f_op_f32(1115f + -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(u_input.a.x), Struct_1(1u, arg_0), u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1969f, -1205f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f)))), _wgslsmith_f_op_f32(f32(-1f) * -1259f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(2118f, -1111f, -1000f), vec3<f32>(1128f, 703f, 1670f))) - vec3<f32>(_wgslsmith_f_op_f32(1016f * -1099f), _wgslsmith_f_op_f32(566f - 1689f), _wgslsmith_f_op_f32(-111f - -1482f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -117f) + vec3<f32>(var_0.x, -651f, -892f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -630f, -626f))))))));
    var var_1 = vec2<bool>(false, arg_0);
    var var_2 = vec4<i32>(u_input.a.x, abs(-u_input.a.x & _wgslsmith_div_i32(u_input.a.x, -15357i)) ^ _wgslsmith_clamp_i32(u_input.a.x, -23892i, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, ~(-29200i)), i32(-1i) * -207i), ~(-1i));
    var_2 = -vec4<i32>(max(countOneBits(19547i), abs(u_input.a.x)), u_input.a.x, var_2.x, u_input.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-757f + var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -1144f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 853f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, -1534f) * vec2<f32>(-1000f, 1396f)) - vec2<f32>(-1478f, 292f)), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, -1000f) * vec2<f32>(-2119f, 889f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1122f, 341f), vec2<f32>(2973f, -300f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -1184f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, _wgslsmith_f_op_f32(-var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x))));
    var_1 = vec2<f32>(879f, var_1.x);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(-1000f)) < _wgslsmith_f_op_f32(-904f * var_1.x)))), _wgslsmith_f_op_f32(floor(var_1.x)));
    var var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(var_0, abs(u_input.b))), u_input.c.x), true);
    var var_3 = !select(vec3<bool>(func_3(), var_2.b, var_2.b & any(vec4<bool>(true, var_2.b, var_2.b, var_2.b))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(var_2.b, var_2.b, false))), all(select(vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(var_2.b, var_2.b, var_2.b))), any(select(vec3<bool>(false, true, var_2.b), vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, var_2.b, false)))), !vec3<bool>(var_2.b, var_1.x > var_1.x, any(vec2<bool>(true, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, var_2.b), Struct_1(22610u, var_3.x), u_input.a.x, vec2<f32>(-539f, -991f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(854f, 649f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(834f, -1897f, 696f, var_1.x))), 72686u < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.c.yz)))), vec3<u32>(34941u, _wgslsmith_mod_u32(~(u_input.c.x & var_0), 1u << (u_input.c.x % 32u)), 4294967295u));
}

