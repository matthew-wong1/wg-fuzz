struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_5(Struct_4(arg_3.a.a, Struct_3(var_0.a.b.a), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~15896u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), arg_3.a.e), 61093u << (0u % 32u)), ~firstTrailingBit(arg_1.a.e.x)), !arg_1.a.d, select(arg_2.e, ~(~vec3<u32>(13933u, arg_3.a.c, arg_3.a.e.x)), 1963f != _wgslsmith_f_op_f32(step(912f, -793f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - var_0.b)), min(vec3<i32>(2147483647i, 2147483647i, i32(-1i) * -2147483647i), vec3<i32>(~(~(-4654i)), arg_1.c.x, -1i)), !vec3<bool>(true, any(!vec4<bool>(false, true, arg_3.a.d.x, arg_2.d.x)), arg_1.a.d.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.a, arg_1.b, 231f, -1287f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, 132f, -957f, -976f) * vec4<f32>(arg_0, 277f, -1394f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.b.a, 630f, 648f, 465f))))))), ~vec3<u32>(arg_1.a.e.x, ~_wgslsmith_mult_u32(arg_3.a.c, u_input.b.x), arg_3.a.c), false || (_wgslsmith_clamp_i32(1i, var_0.c.x, firstLeadingBit(arg_1.c.x)) >= var_0.c.x));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1029f, -715f))), arg_2.a, arg_2.c, select(vec4<bool>(all(!arg_2.d.zx), true, true, true), select(select(arg_1.a.d, vec4<bool>(false, false, arg_2.d.x, true), false), !(!vec4<bool>(true, var_1.c, arg_1.a.d.x, var_0.a.d.x)), !select(var_0.a.d, arg_2.d, arg_1.d.x)), !select(!vec4<bool>(arg_3.d.x, var_0.d.x, var_1.c, var_0.d.x), select(arg_1.a.d, arg_3.a.d, var_0.a.d), arg_3.a.d)), ~vec3<u32>(arg_2.c, 58521u, ~arg_3.a.e.x << (_wgslsmith_mod_u32(23238u, 12886u) % 32u)));
    return 527f;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(~(-1i), u_input.a.x << (~3914u % 32u));
    var var_1 = 1600f;
    var_1 = -1776f;
    var var_2 = Struct_3(-1901f);
    var var_3 = arg_0.a;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_2.a, Struct_5(Struct_4(Struct_3(464f), Struct_3(1196f), u_input.b.x, vec4<bool>(true, true, true, false), vec3<u32>(u_input.b.x, 0u, u_input.b.x)), _wgslsmith_f_op_f32(-arg_0.a), u_input.a.zyz ^ vec3<i32>(u_input.a.x, 3974i, u_input.a.x), !vec3<bool>(true, false, arg_1.x)), Struct_4(Struct_3(var_2.a), arg_0, u_input.b.x, !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), reverseBits(vec3<u32>(u_input.b.x, 36508u, 39033u))), Struct_5(Struct_4(arg_0, Struct_3(973f), 15850u, vec4<bool>(true, arg_1.x, true, false), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), arg_0.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, false)))), arg_0.a, var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-arg_0.a))), ~(~vec3<u32>(u_input.b.x, reverseBits(0u), u_input.b.x)), true);
}

fn func_4(arg_0: Struct_1) -> u32 {
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    let var_0 = arg_0.a.x;
    let var_1 = !any(!vec4<bool>(arg_0.c, false & arg_0.c, true, !arg_0.c));
    let var_2 = vec2<u32>(~(func_4(func_2(Struct_3(arg_0.a.x), vec3<bool>(var_1, var_1, true))) | 33178u), u_input.b.x);
    let var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -357f) * _wgslsmith_f_op_f32(min(var_0, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-906f, 596f)) + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(999f, 435f, 1000f, -925f), u_input.b, true), vec4<f32>(-917f, 123f, -166f, -1887f), _wgslsmith_mod_i32(-2147483647i, -19250i))) * _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(step(-225f, -607f)))))), 1000f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(541f, 1350f) * 1181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f * -1854f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f - -493f) + _wgslsmith_f_op_f32(f32(-1f) * -144f)) + _wgslsmith_f_op_f32(step(-409f, _wgslsmith_f_op_f32(max(-1000f, 1446f)))))));
    let var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(1f - -728f)), vec3<bool>(true && all(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, false), any(vec2<bool>(false, false)))), false));
    let var_2 = _wgslsmith_dot_vec4_i32(reverseBits(u_input.a), u_input.a);
    var var_3 = Struct_3(var_1.a.x);
    let var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(79506u, vec4<f32>(_wgslsmith_f_op_f32(sign(-628f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), var_4), _wgslsmith_f_op_f32(-263f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1342f) - _wgslsmith_f_op_f32(297f - -1297f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, -725f) + _wgslsmith_f_op_f32(-433f - var_1.a.x)))), u_input.a.x);
}

