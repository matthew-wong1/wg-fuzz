struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = countOneBits(countOneBits(4294967295u));
    return firstLeadingBit(arg_0.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, -376f, -1656f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(529f, -1000f, 167f) - vec3<f32>(-600f, 1852f, -586f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1365f, -246f, 1906f), vec3<f32>(-1023f, -1253f, -1000f), arg_2.xzy)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(113f, -294f, 140f))) - vec3<f32>(-470f, -1830f, -723f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(666f, 1738f, 1110f) + vec3<f32>(-290f, -947f, -1319f))))))), firstLeadingBit(~(abs(arg_1.xww) ^ arg_1.xyw)));
    var_0 = Struct_2(var_0.a, select(~(~vec3<u32>(1u, arg_0.x, 11189u)), vec3<u32>(arg_1.x, 0u, var_0.b.x) >> (firstLeadingBit(arg_1.xwx) % vec3<u32>(32u)), all(arg_2)) << (func_3(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), var_0.b), Struct_2(var_0.a, arg_1.zyx)) % vec3<u32>(32u)));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(abs(-307f)))))), arg_1.wwx);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a), firstLeadingBit(max(var_0.b, ~(~vec3<u32>(var_0.b.x, 24896u, 4294967295u)))));
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), -1141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) * var_0.a.x)), ~vec3<u32>(~max(68211u, arg_1.x), firstTrailingBit(func_3(Struct_2(vec3<f32>(var_0.a.x, -498f, var_0.a.x), var_0.b), Struct_2(var_0.a, vec3<u32>(43530u, arg_0.x, 22416u))).x), ~_wgslsmith_mult_u32(4294967295u, var_0.b.x)));
    return Struct_1(~_wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(u_input.d, i32(-1i) * -2147483647i)), 1u, _wgslsmith_sub_u32(abs(4294967295u), arg_0.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = func_2(u_input.c, ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(33375u, arg_1.c, arg_1.c, 1471u)), ~reverseBits(vec4<u32>(0u, arg_1.c, arg_1.b, 4294967295u))), !(!arg_0));
    var var_1 = select(vec2<bool>(any(!arg_0.zxz) || arg_0.x, false), !select(select(vec2<bool>(true, true), vec2<bool>(false, arg_0.x), 0u > var_0.c), !select(arg_0.yw, vec2<bool>(arg_0.x, arg_0.x), arg_0.yx), vec2<bool>(arg_0.x, select(false, false, arg_0.x))), all(arg_0.zz));
    var_1 = select(vec2<bool>(select(arg_0.x, all(vec2<bool>(true, arg_0.x)), true) && (any(vec4<bool>(true, var_1.x, true, var_1.x)) && (var_1.x || var_1.x)), !(arg_1.c > 1u)), !vec2<bool>(true, arg_0.x | true), !(_wgslsmith_div_u32(1u, u_input.a) > firstLeadingBit(~4294967295u)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(768f, -1885f)) - -681f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(262f, 1878f) * 2148f)), -1951f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, 361f)), _wgslsmith_div_f32(2757f, _wgslsmith_f_op_f32(-734f - -167f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1228f, 1000f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2326f, 1412f, -1186f))))), var_1.x)));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1230f), var_2.x);
    return ~(~(-arg_1.a ^ var_0.a) << (func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1209f)), vec3<u32>(55543u, arg_1.b, 37972u) & vec3<u32>(arg_1.c, 4294967295u, 1u)), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, -199f, var_2.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c, var_0.b, var_0.b), vec3<u32>(u_input.c.x, 1u, 0u)))).x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(-27719i, i32(-1i) * -(-1i << (1u % 32u))), abs(_wgslsmith_mult_u32(u_input.c.x, u_input.e)), ~max(u_input.c.x, _wgslsmith_mod_u32(abs(4294967295u), 1u)));
    let var_1 = abs(-19449i);
    let var_2 = max(_wgslsmith_mult_i32(0i, ~func_1(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), Struct_1(-2147483647i, var_0.b, 4294967295u))), _wgslsmith_add_i32(countOneBits(~var_1), ~var_1) >> (4294967295u % 32u));
    let var_3 = _wgslsmith_f_op_f32(floor(649f));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-161f, var_3))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1461f, 1690f) + vec2<f32>(var_3, -810f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-1797f)), 109f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2240f, var_3) * vec2<f32>(var_3, var_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -644f) * vec2<f32>(var_3, var_3)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(max(-380f, -597f))) + vec2<f32>(1f, 1f))));
    var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, 237f), _wgslsmith_f_op_vec2_f32(vec2<f32>(415f, -265f) + vec2<f32>(var_4.x, var_3))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-380f)) + -1248f), -271f)) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(-var_4.x)), 883f)), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(abs(var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(46728u, var_0.b), max(abs(var_0.b), 27460u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 19586u, u_input.a), vec3<u32>(u_input.e, 26175u, var_0.b)) % 32u))), ~(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b, 36959u), _wgslsmith_clamp_u32(0u, var_0.b, var_0.c)) ^ var_0.b), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3)), var_4.x, true)))) - -923f));
}

