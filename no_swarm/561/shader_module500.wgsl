struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1832f)), arg_2)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(arg_2 + -1039f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1055f, arg_2))))), any(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1451f, _wgslsmith_f_op_f32(abs(arg_2)))) - _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -683f))))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b & 781u, 85586u), ~(~vec2<u32>(u_input.b, u_input.b) << ((vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)))), -1i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) * vec3<f32>(-986f, 1000f, arg_2)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 1771f) * vec3<f32>(arg_2, arg_2, arg_2))) - vec3<f32>(_wgslsmith_div_f32(-590f, -143f), _wgslsmith_f_op_f32(-arg_2), -923f)))));
    let var_1 = Struct_1(vec2<f32>(arg_2, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(_wgslsmith_div_f32(1714f, var_0.e.x), 2059f))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.e.x)), -1551f)), -628f))), ~(~min(vec2<u32>(33806u, 1u), ~var_0.c)), abs(~(~var_0.d >> (~var_0.c.x % 32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(178f, _wgslsmith_f_op_f32(min(-806f, var_0.a.x)), _wgslsmith_div_f32(247f, 257f)) + var_0.e), var_0.e, !(!arg_0.x) || !(!arg_0.x))));
    var var_2 = _wgslsmith_div_u32(var_1.c.x, var_1.c.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -189f)), var_0.a))), var_0.a.x, min(firstTrailingBit(vec2<u32>(59864u, ~var_1.c.x)), var_1.c), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.e))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(222f - var_1.b), 786f, 1f))));
    let var_3 = !select(!select(vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), true), 821f < arg_2), select(select(select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(true, false, true, arg_0.x), arg_0.x), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(arg_0)), vec4<bool>(arg_0.x, true & arg_0.x, true, !arg_0.x)), false);
    return arg_2;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1389f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(976f, 184f, false))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-612f, -358f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(870f, -1693f), vec2<f32>(1000f, -1126f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - _wgslsmith_f_op_f32(func_3(vec2<bool>(var_0, false), u_input.a.x, -2075f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -705f)))), 133f)), ~vec2<u32>(u_input.b, u_input.b), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -269f)), 1f, _wgslsmith_f_op_f32(floor(-1308f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1169f)), _wgslsmith_f_op_f32(ceil(1849f)), _wgslsmith_div_f32(999f, -1488f))), select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, true)), !vec3<bool>(true, false, var_0), u_input.b <= 41182u), select(!vec3<bool>(true, true, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, false), true), vec3<bool>(false, false, false))))));
    var var_2 = select(!select(select(vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(false, var_0, false, true), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), var_0)), !vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, false, any(vec2<bool>(var_0, var_0)), all(vec3<bool>(var_0, false, true)))), select(!select(!vec4<bool>(var_0, false, false, false), !vec4<bool>(var_0, false, true, true), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, var_0, var_0, var_0), var_0)), !vec4<bool>(var_0, var_0 | var_0, !var_0, all(vec2<bool>(var_0, var_0))), 41475u < _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b))), all(!(!vec3<bool>(var_0, true, true))) || false);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(938f, var_1.a.x)))), -1576f)));
    var var_4 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(~(_wgslsmith_add_u32(var_1.c.x, var_1.c.x) ^ countOneBits(50666u)), 25592u, ~abs(1u)), _wgslsmith_sub_u32(var_1.c.x, reverseBits(_wgslsmith_sub_u32(~u_input.b, u_input.b ^ 1u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(279f, var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f * _wgslsmith_f_op_f32(max(498f, _wgslsmith_div_f32(1000f, -1257f))))), var_1.c, -_wgslsmith_div_i32(-31391i, _wgslsmith_add_i32(select(2147483647i, 2147483647i, var_0), reverseBits(var_1.d))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.e.x, var_1.b, var_2.x))), _wgslsmith_f_op_f32(floor(var_1.e.x)), -199f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2().d;
    let var_2 = Struct_1(vec2<f32>(589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1421f - var_0.b) * _wgslsmith_f_op_f32(sign(var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1061f + _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, var_0.d, -53684i, 1i), u_input.a), _wgslsmith_div_f32(613f, 1660f))))), ~abs(var_0.c), abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 23423i, -1i) << (vec3<u32>(var_0.c.x, var_0.c.x, 43u) % vec3<u32>(32u)), vec3<i32>(var_0.d, 1i, -27971i)), -1i)), var_0.e);
    let var_3 = vec3<bool>(true, !(!(-var_0.d > (u_input.a.x ^ 0i))), !(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, var_0.c.x), vec3<u32>(var_2.c.x, var_0.c.x, var_2.c.x)), ~var_2.c.x) > (_wgslsmith_clamp_u32(var_2.c.x, 84232u, var_2.c.x) | firstLeadingBit(0u))));
    var var_4 = 7504u;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yy, abs(vec2<i32>(2147483647i, 3257i))), firstTrailingBit(u_input.a.xy)) << (var_5.c % vec2<u32>(32u)));
}

