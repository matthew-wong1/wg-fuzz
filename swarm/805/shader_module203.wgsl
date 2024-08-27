struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(false);
    let var_1 = Struct_2(_wgslsmith_mult_u32(countOneBits(_wgslsmith_clamp_u32(~u_input.c.x, 1u, 1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(59790u, u_input.a, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(968u, u_input.c.x, 4294967295u, u_input.a), vec4<u32>(7970u, 1u, 0u, 28918u)), _wgslsmith_add_vec4_u32(vec4<u32>(55884u, u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(0u, 36847u, 0u, 8923u))))), false, !vec4<bool>(var_0.a, false, true && any(vec3<bool>(true, false, false)), select(any(vec4<bool>(true, false, var_0.a, var_0.a)), all(vec3<bool>(false, var_0.a, var_0.a)), true)), var_0, _wgslsmith_f_op_f32(-980f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1679f - 569f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -531f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(702f + var_1.e)), _wgslsmith_f_op_f32(var_1.e + _wgslsmith_div_f32(var_1.e, 566f)), 470f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.e, -210f, _wgslsmith_f_op_f32(816f - 1320f)))), select(vec3<bool>(all(!var_1.c.xxx), true, true | (false | var_0.a)), var_1.c.xww, select(var_1.c.xxz, !select(vec3<bool>(true, false, false), var_1.c.xyy, true), !vec3<bool>(var_0.a, var_0.a, false)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, var_2.x, var_1.e, var_1.e)) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_1.e, 1f, _wgslsmith_div_f32(-578f, var_2.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1566f, -688f, -538f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e, var_2.x, -1400f, var_2.x)))))), vec4<f32>(var_2.x, -309f, -1055f, 496f), var_1.c.x)));
    let var_4 = ~vec3<i32>(-2147483647i, 1i, -1i);
    return -(_wgslsmith_div_i32(1i, ~18371i) << (_wgslsmith_mod_u32(~u_input.c.x, u_input.a & 2895u) % 32u)) << (~var_1.a % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 7588i >> (u_input.c.x % 32u);
    return Struct_1(~(-_wgslsmith_div_i32(u_input.b, 0i)) == ~select(_wgslsmith_mult_i32(var_0, u_input.b), min(var_0, 0i), arg_2.d.a));
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-845f, -1235f, -613f), vec3<f32>(-776f, 2814f, 232f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1705f, 798f, -632f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), 774f, _wgslsmith_f_op_f32(ceil(1669f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(923f, -752f, 911f) + vec3<f32>(493f, -556f, 701f)), vec3<f32>(2000f, 443f, -430f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-534f, 217f, -1761f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-436f, -385f, -152f))))))));
    var var_1 = false;
    let var_2 = -u_input.b;
    let var_3 = func_3(Struct_1(_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + -191f), _wgslsmith_f_op_f32(181f - var_0.x)))), _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(0i, u_input.d.x, var_2)) | reverseBits(select(vec3<i32>(var_2, 39929i, u_input.d.x), vec3<i32>(-36937i, var_2, u_input.d.x), vec3<bool>(false, true, true))), vec3<i32>(~(-77869i), func_2(), 1i)), Struct_2(u_input.c.x, false, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true)), false), Struct_1(!all(vec3<bool>(true, false, false))), var_0.x));
    var_1 = var_3.a && true;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(-1857f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + _wgslsmith_f_op_f32(floor(var_0.x))), 1f, _wgslsmith_f_op_f32(1579f + var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, 1224f, _wgslsmith_f_op_f32(min(-125f, -1327f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -496f, var_0.x, 622f), vec4<f32>(var_0.x, 266f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 2314f, var_0.x, var_0.x))))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = u_input.b;
    var_0 = (-2147483647i << (u_input.a % 32u)) >> (0u % 32u);
    let var_1 = ~vec3<u32>(~u_input.c.x, u_input.a, u_input.c.x);
    var var_2 = firstLeadingBit(vec4<u32>(reverseBits(~(~57643u)), ~(~var_1.x), _wgslsmith_div_u32(var_1.x, abs(_wgslsmith_add_u32(4294967295u, var_1.x))), ~abs(_wgslsmith_add_u32(var_1.x, 26137u))));
    var var_3 = 791f;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f), 2105f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), -859f, vec4<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.x, 1u), 8433u), ~(var_2.x ^ u_input.c.x)), _wgslsmith_div_u32(u_input.a, ~var_1.x), ~(_wgslsmith_mult_u32(u_input.a, u_input.a) << (4294967295u % 32u))), ~abs(var_2.x) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(114f, 1675f, 260f, 159f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1443f, -279f, 160f, -1000f)))), _wgslsmith_f_op_vec4_f32(func_1())))));
}

