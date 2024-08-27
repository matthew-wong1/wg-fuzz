struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) > arg_0), vec3<u32>(4294967295u, u_input.c.x, select(u_input.c.x << (~u_input.c.x % 32u), ~(~1u), true)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 11846u), var_0.b.x);
    let var_3 = !(arg_0 < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -220f)), _wgslsmith_f_op_f32(abs(211f)))));
    let var_4 = u_input.e.xxx;
    return 43899i;
}

fn func_3() -> f32 {
    let var_0 = Struct_5(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c >> (vec2<u32>(u_input.c.x, 16720u) % vec2<u32>(32u)), u_input.c), ~u_input.c.x), 1u, min(firstLeadingBit(97595u >> (u_input.c.x % 32u)), 1u)), vec3<bool>(true, true, select(true, true, true) != true), Struct_2(Struct_1(true && all(vec3<bool>(true, true, true))), vec3<u32>(u_input.c.x, min(select(u_input.c.x, u_input.c.x, false), 1u), countOneBits(~64387u))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(u_input.c.x, 13907u, 1u) ^ ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec2<bool>(false, any(vec3<bool>(true, true, false)) & select(false, true, true)), 17511u ^ u_input.c.x));
    var var_1 = true;
    var_1 = !var_0.c.a.a;
    var var_2 = 1i;
    let var_3 = u_input.e.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-333f, 1903f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744f + 836f) + _wgslsmith_div_f32(-1691f, -266f)) * -1379f));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(-7406i, ~(i32(-1i) * -56228i)), select(_wgslsmith_add_i32(func_2(1111f), -1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, 16958i), 0i), arg_1.a)) | (-1i ^ _wgslsmith_add_i32(0i, _wgslsmith_div_i32(u_input.e.x, ~u_input.b.x)));
    var var_1 = !(!vec2<bool>(true, func_2(331f) > abs(-25796i)));
    let var_2 = reverseBits(u_input.e.yz);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-954f - -234f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-335f, -301f))))), _wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f + -854f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(abs(-285f)))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    return StorageBuffer(-2147483647i, u_input.c.x, vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(u_input.a.x, 18820i)), -(var_2.x ^ -13391i)), reverseBits(12456i), _wgslsmith_div_i32(u_input.e.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 588f), _wgslsmith_f_op_f32(451f * var_3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, -1540f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1886f * var_3.x), -1381f, _wgslsmith_f_op_f32(func_3()), var_3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-877f, -283f, var_3.x, var_3.x), vec4<f32>(-264f, 193f, -392f, -133f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1330f, var_3.x, var_3.x, var_3.x) + vec4<f32>(-1602f, 2340f, -1523f, var_3.x))), !(!vec4<bool>(false, true, true, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(any(vec2<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))), Struct_1(!all(vec4<bool>(true, false, true, true))));
}

