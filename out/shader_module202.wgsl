struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_0;
    var_0 = arg_1;
    var var_2 = vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.e.x)) - 1309f))) + _wgslsmith_f_op_f32(-arg_1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(-arg_1.e.x));
    let var_3 = vec4<i32>(u_input.d.x, -2147483647i, u_input.b, u_input.d.x & 0i);
    return _wgslsmith_f_op_f32(f32(-1f) * -336f);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = 527f;
    var_0 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -188f))), -2709f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2165f + _wgslsmith_f_op_f32(-arg_1.x)), -1876f, all(vec4<bool>(true, true, true, true))))));
    let var_2 = _wgslsmith_f_op_f32(-561f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1457f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(740f, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))))));
    return vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(arg_0, 1u) & u_input.c.x, 19023u), ~max(_wgslsmith_clamp_u32(u_input.e.x, arg_0, arg_0 & u_input.c.x), u_input.e.x), ~reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_0, 13833u, 25479u), ~vec4<u32>(u_input.a, 1u, arg_0, arg_0))), u_input.e.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.e, vec4<u32>(firstTrailingBit(~1u), u_input.a, 0u, select(u_input.c.x >> (1u % 32u), 0u, false)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_clamp_u32(18308u, 12462u, 1u), _wgslsmith_mult_u32(0u, 1u), 1u), func_3(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2240f, 303f, -241f)))) % vec4<u32>(32u)), _wgslsmith_mult_u32(u_input.c.x, 0u) <= ((u_input.c.x << (u_input.e.x % 32u)) | ~1u), 1u);
    var var_1 = -192f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f - 588f) - 913f))))));
    let var_2 = 4262u;
    var_1 = _wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(801f)))) * _wgslsmith_f_op_f32(floor(-1401f)))));
    return -1308f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1208f)) * _wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(u_input.e.x, u_input.c.x), vec4<u32>(u_input.c.x, 11482u, 4294967295u, u_input.c.x), false, 16174u), Struct_2(u_input.c.zy, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec4<u32>(u_input.e.x, 8118u, 12652u, u_input.c.x), true, u_input.e.x), false, 1u, vec2<f32>(-720f, 1175f)))))), _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2417f))), _wgslsmith_f_op_f32(func_2()))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1209f, -1555f, -1736f, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 248f, 1274f, var_0.x) + vec4<f32>(157f, var_0.x, var_0.x, 1324f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~((vec2<i32>(2147483647i, u_input.d.x) << (vec2<u32>(1508u, 0u) % vec2<u32>(32u))) & firstTrailingBit(u_input.d.yy))));
}

