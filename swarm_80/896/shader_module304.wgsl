struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    var var_0 = _wgslsmith_mod_u32(~(_wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec3_u32(arg_3.a, vec3<u32>(17874u, 53110u, 40637u))) & ~reverseBits(u_input.b.x)), 49669u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(789f)));
    let var_2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x + var_1.a) + _wgslsmith_div_f32(-759f, -1141f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a, arg_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) - _wgslsmith_f_op_f32(select(-392f, var_1.a, true))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1239f, var_1.a), _wgslsmith_f_op_f32(arg_3.b.x - 1249f)))))));
    var_0 = 1u;
    return -433f;
}

fn func_2() -> Struct_5 {
    let var_0 = -1818f;
    return Struct_5(~vec3<u32>(_wgslsmith_add_u32(~4294967295u, u_input.b.x), ~_wgslsmith_mult_u32(0u, 41568u), _wgslsmith_sub_u32(reverseBits(26111u), countOneBits(u_input.b.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 376f, 876f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 1012f, var_0))))))), ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), var_0) + vec3<f32>(_wgslsmith_f_op_f32(func_3(25789u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, var_0, var_0, var_0)), Struct_4(vec2<bool>(true, false)), Struct_5(vec3<u32>(u_input.c, 7832u, 52019u), vec3<f32>(var_0, 560f, -1651f), 19342i, vec3<f32>(165f, var_0, var_0)))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_5) -> f32 {
    var var_0 = u_input.b.x;
    var var_1 = func_2();
    var_0 = arg_0.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, var_1.b.x) * _wgslsmith_f_op_f32(round(1149f))))), 150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - -1000f)));
    var var_3 = Struct_1(func_2().d.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2)) + 1347f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1380f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1919f) + _wgslsmith_f_op_f32(step(-1000f, -347f))), _wgslsmith_f_op_f32(1062f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1508f, 738f))))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1121f, -1406f, true)) + _wgslsmith_f_op_f32(trunc(-349f))) - _wgslsmith_f_op_f32(153f * _wgslsmith_f_op_f32(floor(335f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 45917u), false, Struct_3(true), Struct_5(vec3<u32>(u_input.c, u_input.b.x, 0u), vec3<f32>(556f, 701f, 736f), -26882i, vec3<f32>(494f, -1000f, 1677f)))) + _wgslsmith_div_f32(-791f, 761f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1488f * _wgslsmith_div_f32(-232f, 642f)))));
    var var_2 = vec2<u32>(_wgslsmith_add_u32(abs(94450u), _wgslsmith_div_u32(4294967295u, abs(~u_input.c))), ~(~(_wgslsmith_div_u32(25511u, 4294967295u) >> (0u % 32u))));
    let var_3 = vec4<bool>(all(vec2<bool>(true, true)) || select(true, !all(vec3<bool>(true, true, false)), false), true & all(vec2<bool>(true, true)), !(!(!any(vec4<bool>(false, true, false, true)))), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1843f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1650f - var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1397f);
    var_0 = func_2().b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(-54271i, u_input.a, 2147483647i, u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-5691i, -7656i, -1i, u_input.a), firstLeadingBit(vec4<i32>(-11178i, u_input.a, -1i, u_input.a)))) | u_input.a, 15379u, firstLeadingBit(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.x)) - 1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.x, var_1.x, var_3.x)) * -184f))));
}

