struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_sub_i32(-(~(~u_input.a)) | ~_wgslsmith_div_i32(-29484i, -u_input.c.x), -_wgslsmith_clamp_i32(abs(-2147483647i), -(~(-1i)), 16908i));
    var var_1 = u_input.c;
    return u_input.c.x << (18467u % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.d.x ^ u_input.d.x, u_input.d.x, 1u), ~vec3<u32>(~arg_0.x, _wgslsmith_sub_u32(4294967295u, arg_0.x), 21619u)), 0i, !arg_1.yww);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(873f)), -750f)))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2187f))))));
    let var_2 = 0u;
    var var_3 = func_3(countOneBits(arg_0.x)) & ~_wgslsmith_div_i32(-60627i, firstTrailingBit(-30090i));
    var var_4 = Struct_1(vec3<u32>(select(arg_0.x, _wgslsmith_dot_vec2_u32(var_0.a.yy | vec2<u32>(var_2, 0u), vec2<u32>(var_2, var_0.a.x) << (arg_0 % vec2<u32>(32u))), all(!var_0.c)), abs(~abs(29568u)), _wgslsmith_div_u32(var_2, var_2)), ~u_input.c.x, vec3<bool>(_wgslsmith_add_u32(~42152u, ~4294967295u) < var_2, -880f != _wgslsmith_div_f32(-850f, _wgslsmith_f_op_f32(step(811f, -1745f))), true));
    return !(!vec4<bool>(true, true, all(!vec4<bool>(false, arg_1.x, false, arg_1.x)), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = true;
    var_0 = any(!select(!func_2(u_input.d, vec4<bool>(true, arg_1, arg_1, true)), !vec4<bool>(true, arg_1, true, arg_1), any(vec2<bool>(arg_1, arg_1))));
    var_0 = arg_1;
    let var_1 = vec2<bool>(true, u_input.d.x == ~(arg_3 | ~u_input.d.x));
    var_0 = 1i == ~select((arg_0.x ^ -29578i) << (firstLeadingBit(u_input.d.x) % 32u), u_input.c.x, any(vec3<bool>(arg_1, arg_1, true)));
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: bool) -> vec2<bool> {
    var var_0 = ~vec2<i32>(abs(~firstLeadingBit(u_input.c.x)), u_input.c.x);
    let var_1 = ~(-(u_input.a ^ _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)));
    let var_2 = -vec2<i32>(-56853i, _wgslsmith_div_i32(-44533i, arg_1) ^ arg_1);
    var_0 = _wgslsmith_clamp_vec2_i32(~u_input.c.wz >> ((~vec2<u32>(arg_0.x, arg_0.x) >> (select(arg_0, u_input.d, arg_2) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(var_2) | abs(-u_input.c.wx), _wgslsmith_mod_vec2_i32(~vec2<i32>(abs(var_1), abs(var_2.x)), max(-vec2<i32>(var_0.x, var_2.x), vec2<i32>(38170i, -1i) ^ abs(var_2))));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~u_input.d.x, ~1u, ~arg_0.x), arg_0.x, 39408u) >> (min(vec3<u32>(firstLeadingBit(u_input.b), 36559u, reverseBits(14771u)), vec3<u32>(~0u, u_input.d.x | 54250u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, arg_0.x)))) % vec3<u32>(32u)), -50496i, func_2(~vec2<u32>(~48370u, ~u_input.d.x), !(!(!vec4<bool>(true, true, false, arg_2)))).xxw);
    return var_3.c.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-454f, -962f)))));
    let var_2 = vec4<bool>(all(select(vec2<bool>(true, true), func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), u_input.d), firstLeadingBit(u_input.c.x), func_1(vec4<i32>(u_input.a, 1i, 17455i, var_0.x), false, var_1, 0u)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))))), true, true & !all(vec4<bool>(false, false, false, false)), any(vec2<bool>(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(var_1 - -111f) < 1f)));
    let var_3 = _wgslsmith_sub_u32(u_input.b ^ u_input.b, u_input.d.x);
    let var_4 = vec4<u32>(~(~abs(60124u)), 35256u, ~u_input.b, ~0u);
    var_0 = vec4<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, firstTrailingBit(var_0.x)), select(-(~6981i), _wgslsmith_mult_i32(2147483647i >> (u_input.d.x % 32u), max(0i, var_0.x)), false)), 50986i, ~abs(var_0.x));
    var_0 = vec4<i32>(-1i, ~(-2147483647i ^ ~var_0.x), -_wgslsmith_clamp_i32(0i, -2147483647i, min(~(-2147483647i), ~u_input.c.x)), _wgslsmith_div_i32(var_0.x << ((var_4.x << (1u % 32u)) % 32u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_4)), 75795u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, -936f, -1134f, 893f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -953f, 347f, -1013f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-305f, 1000f, 449f, var_1), vec4<f32>(var_1, -654f, var_1, var_1)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(var_1))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 338f, var_1, var_1) * vec4<f32>(var_1, var_1, var_1, var_1)), vec4<f32>(var_1, 248f, var_1, 822f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1587f)) * 242f));
}

