struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> Struct_3 {
    var var_0 = select(!vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), false), vec2<bool>(true, true), true);
    var var_1 = 2147483647i;
    return Struct_3(countOneBits(u_input.b.x >> (22086u % 32u)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = select(!vec2<bool>(true, true & (false || arg_0.e.x)), vec2<bool>(true, select(all(arg_0.d), true, arg_0.d.x) | false), false);
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c.x) + -817f);
    let var_3 = 741f;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(398f, var_3)), _wgslsmith_f_op_f32(floor(1101f)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, 1000f) + _wgslsmith_f_op_f32(-arg_0.a.x))), var_1.c.x, var_3, _wgslsmith_f_op_f32(arg_0.c.c.x - -1809f)) + _wgslsmith_f_op_vec4_f32(arg_0.c.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c))));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 - -1757f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-699f, arg_0, 261f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(160f, arg_0, var_0.x) - vec3<f32>(1483f, 1000f, arg_0))) + vec3<f32>(-592f, -1000f, _wgslsmith_f_op_f32(-var_0.x)))), arg_1.a << (~_wgslsmith_dot_vec3_u32(u_input.b.wzx, vec3<u32>(48857u, 79630u, 0u)) % 32u), Struct_1(u_input.b.x, 107475u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(arg_0, -575f, -402f), u_input.b.x, Struct_1(arg_1.a, 0u, vec4<f32>(arg_0, var_0.x, arg_0, var_0.x)), vec2<bool>(false, false), vec2<bool>(false, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1195f), arg_0, _wgslsmith_f_op_f32(round(852f)), -1000f))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), var_0.x >= 482f)), vec2<bool>(false, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)))));
    var var_2 = !(!select(!select(vec3<bool>(true, var_1.d.x, var_1.d.x), vec3<bool>(var_1.e.x, true, var_1.e.x), vec3<bool>(true, var_1.e.x, var_1.d.x)), vec3<bool>(var_1.d.x, all(vec2<bool>(var_1.e.x, var_1.d.x)), all(vec4<bool>(var_1.e.x, false, var_1.d.x, true))), max(2147483647i, u_input.c) > u_input.a.x));
    var var_3 = !vec3<bool>(var_2.x && var_2.x, _wgslsmith_mod_u32(u_input.b.x, ~var_1.b) <= 4600u, !any(select(var_1.d, vec2<bool>(var_2.x, true), var_2.zx)));
    var_0 = var_1.c.c.wwz;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = select(arg_2, !arg_2, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0)))) < _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(192f, -407f)))));
    let var_1 = arg_1;
    let var_2 = var_0.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(1935f - arg_0))))), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(var_1.a, 12972u) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))))), Struct_1(4294967295u, firstLeadingBit(var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, _wgslsmith_f_op_f32(abs(-209f)), arg_0, 348f))), arg_2.zy, var_0.yy);
    var_0 = !(!(!vec3<bool>(true, true, all(var_3.d))));
    return StorageBuffer(u_input.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(710f)) - _wgslsmith_f_op_f32(-1049f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1749f, 277f) - _wgslsmith_f_op_f32(-264f + -908f)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) * -493f)), func_1()), vec3<bool>(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(1759f, -554f, -1000f), u_input.b.x, Struct_1(u_input.b.x, u_input.b.x, vec4<f32>(517f, -1856f, 604f, -841f)), vec2<bool>(true, false), vec2<bool>(true, false)))).x < _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(-1431f))), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true));
}

