struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0, 39403i) ^ abs(vec2<i32>(arg_0, arg_0)), ~abs(vec2<i32>(-20572i, 5044i) << (vec2<u32>(12715u, arg_1) % vec2<u32>(32u)))), abs(vec2<i32>(arg_0, ~(-arg_0))));
    var var_1 = Struct_1(~_wgslsmith_add_i32(reverseBits(i32(-1i) * -30303i), ~(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-455f + -1018f))), vec3<bool>(true, !any(arg_2.zz), arg_2.x), arg_3.x, 1f);
    var_1 = Struct_1(0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - 748f)), var_1.e)))), vec3<bool>(false || (0u < firstTrailingBit(0u)), arg_2.x, true), countOneBits(min(~(~101420u), ~(~0u))), var_1.e);
    var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), !vec3<bool>(true, all(select(vec4<bool>(var_1.c.x, arg_2.x, false, true), vec4<bool>(true, arg_2.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, true, arg_2.x, true))), var_1.c.x), var_1.d, _wgslsmith_f_op_f32(-var_1.e));
    var var_2 = arg_2.x;
    return !arg_2.x || !(arg_2.x && !(!arg_2.x));
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1039f), select(vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -503f) >= _wgslsmith_f_op_f32(515f * arg_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(true, all(vec2<bool>(true, false)), any(vec2<bool>(false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_3(-2147483647i, 0u, vec3<bool>(false, false, false), vec2<u32>(16430u, u_input.a.x))), vec3<bool>(true, true, true))), u_input.a.x, arg_0.x);
    let var_1 = vec4<u32>(var_0.d, ~abs(_wgslsmith_add_u32(var_0.d, ~var_0.d)), u_input.a.x, ((_wgslsmith_clamp_u32(u_input.a.x, 39815u, var_0.d) >> (var_0.d % 32u)) | var_0.d) ^ 46819u);
    var var_2 = var_1.x <= u_input.a.x;
    let var_3 = var_0;
    var var_4 = var_3;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, var_4.c.x)), arg_0))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = -103f;
    let var_1 = 70407u;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) - _wgslsmith_f_op_f32(exp2(arg_1.x)))), 2340f, arg_1.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1328f, 1726f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, -591f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_1.x, 1460f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -202f, arg_0.b))))));
    var_3 = vec3<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(-1132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))));
    return _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(616f + var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(9626i, 882f, vec3<bool>(true, false, false), u_input.a.x, -532f), vec2<f32>(-652f, 232f))) + _wgslsmith_f_op_f32(f32(-1f) * -288f)) == _wgslsmith_f_op_f32(min(-794f, -1722f))) && false;
    var var_1 = Struct_1(-2147483647i ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 14470i, -30688i, -1i) >> (~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)), ~vec4<i32>(1i, 1i, 1i, 1i)), 654f, !vec3<bool>(func_3(countOneBits(11687i), u_input.a.x, vec3<bool>(true, false, false), u_input.a), true, true), countOneBits(u_input.a.x | ~1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f + -945f))))));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(127091u, u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x)), vec3<u32>(min(9380u, u_input.a.x), min(1u, 8898u), 41401u) ^ ~(vec3<u32>(u_input.a.x, 0u, 1u) ^ vec3<u32>(4294967295u, var_1.d, var_1.d))), select(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 50720u, 7646u), vec3<u32>(u_input.a.x, 79505u, u_input.a.x), false) | vec3<u32>(var_1.d, 66671u, 4294967295u), vec3<u32>(~8078u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u))), vec3<u32>(countOneBits(_wgslsmith_mod_u32(0u, 12442u)), firstLeadingBit(u_input.a.x) & 4294967295u, 48876u), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, var_1.e, var_1.b, var_1.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, 1291f, -670f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.e, var_1.b, var_1.b), vec4<f32>(425f, var_1.e, -1194f, var_1.b))), vec4<f32>(_wgslsmith_div_f32(1695f, var_1.b), _wgslsmith_f_op_f32(var_1.b + -902f), -649f, 1f))));
    let var_4 = !vec3<bool>(all(var_1.c.zx), false, true);
    var var_5 = 13711u;
    let var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2039f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f))), vec3<f32>(var_1.e, var_1.e, _wgslsmith_div_f32(var_1.e, var_3.x)));
    var_1 = Struct_1(var_1.a, -1552f, select(var_4, select(select(vec3<bool>(var_4.x, var_4.x, var_4.x), var_1.c, vec3<bool>(false, true, var_1.c.x)), select(select(vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(true, false, true), var_4), var_1.c, !vec3<bool>(true, var_1.c.x, var_1.c.x)), var_4), !((true & var_4.x) | true)), abs(~0u), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, var_2, 0u, ~var_2));
}

