struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<f32>, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1632f) + -647f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(select(2060f, 294f, true))))), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(519f)))), u_input.b.x), Struct_1(-284f, select(arg_1.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, arg_1.x, u_input.c, u_input.a.x)), arg_0.x)), _wgslsmith_f_op_f32(1f - 958f));
    global1 = array<vec2<f32>, 3>();
    global1 = array<vec2<f32>, 3>();
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(max(u_input.a.yzx, ~vec3<u32>(0u, var_0.b, 51252u))), u_input.a.wyz), var_0.b, u_input.a.x);
    global1 = array<vec2<f32>, 3>();
    return !vec3<bool>(any(vec2<bool>(true, !arg_0.x)), any(vec2<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true)), arg_0.x);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> bool {
    let var_0 = arg_0;
    let var_1 = -190f;
    global1 = array<vec2<f32>, 3>();
    var var_2 = func_3(vec2<bool>(false, u_input.d == (1i & ~arg_1)), u_input.b);
    var var_3 = vec4<u32>(~u_input.b.x, 1u, abs(~u_input.a.x), ~_wgslsmith_dot_vec4_u32(~min(vec4<u32>(94733u, 44569u, 1u, u_input.c), vec4<u32>(2365u, 31375u, u_input.a.x, u_input.a.x)), min(~u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 77703u, 37953u), u_input.a))));
    return !any(!vec4<bool>(var_0, var_0 == true, false, !var_2.x));
}

fn func_1(arg_0: f32) -> u32 {
    global0 = 1u;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-329f, 1505f, arg_0, arg_0) * vec4<f32>(arg_0, arg_0, -923f, 2059f)), vec4<f32>(arg_0, 1756f, -1190f, arg_0), func_2(true, u_input.d, global1[_wgslsmith_index_u32(u_input.c, 3u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1806f, 123f, 2258f, arg_0), vec4<f32>(arg_0, arg_0, -782f, arg_0)) * vec4<f32>(_wgslsmith_div_f32(160f, arg_0), 1431f, _wgslsmith_f_op_f32(-1392f + -1000f), _wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), 981f, _wgslsmith_f_op_f32(floor(arg_0))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1613f), ~(~(~(1u & u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -438f)), max(u_input.c, _wgslsmith_add_u32(0u, min(1u, u_input.b.x)))), Struct_1(_wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(1599f - -558f)), 0u), _wgslsmith_f_op_f32(-413f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(step(-932f, 340f)), select(true, false, false))))));
    return ~min(abs(_wgslsmith_mod_u32(var_1.d.b, ~52090u)), abs(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(-105f - 1000f));
    let var_0 = Struct_2(-716f, ~(~abs(1u)), Struct_1(2669f, ~countOneBits(u_input.a.x)), Struct_1(-1878f, 22685u), 863f);
    var var_1 = false;
    global1 = array<vec2<f32>, 3>();
    global1 = array<vec2<f32>, 3>();
    let var_2 = vec4<i32>(u_input.d, firstLeadingBit(7693i), u_input.d, 65229i);
    global0 = 101018u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(firstLeadingBit(4294967295u), max(var_0.d.b, ~29290u), true), _wgslsmith_add_u32(reverseBits(select(48633u, 1u, true)), ~u_input.a.x & 37722u), ~_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_clamp_u32(34877u, var_0.c.b, var_0.d.b))));
}

