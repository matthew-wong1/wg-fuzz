struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-229f, 106f, -1733f, -1914f, -1000f, -1850f, 742f, 783f, 987f, 790f, 699f, 2131f, 1485f, 703f, 928f, -170f, -188f, 1895f, 924f);

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<vec2<bool>, 14>;

var<private> global3: Struct_3;

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    global3 = global1[_wgslsmith_index_u32(~(~(~firstLeadingBit(35816u))), 9u)];
    let var_0 = all(vec4<bool>(global3.b.x, true, (655f != _wgslsmith_f_op_f32(arg_0.x * -428f)) && !(false || global3.b.x), true));
    var var_1 = 0i;
    global1 = array<Struct_3, 9>();
    var var_2 = 0u;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(710f)))))), -375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-881f)) + arg_0.x)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, 676f, 403f, global0[_wgslsmith_index_u32(arg_1, 19u)]), vec4<f32>(597f, -224f, arg_0.a, global4.a.a.d.x), arg_0.b.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, global4.a.a.d.x, 729f, global4.a.a.b.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(902f, -698f, 116f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(303f, arg_0.a, global3.a, -664f))))))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(global4.a.a.c.x, 13867u, 0u >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(global4.a.a.c.x >> (~global4.a.a.a.x % 32u), u_input.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-839f, -813f))), global4.a.a.b, select(!select(vec2<bool>(false, false), global3.b.zy, vec2<bool>(arg_0.b.x, arg_0.b.x)), select(global2[_wgslsmith_index_u32(~56343u, 14u)], !global2[_wgslsmith_index_u32(arg_1, 14u)], true), vec2<bool>(true != arg_0.b.x, false)))), global4.a.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1587f, global0[_wgslsmith_index_u32(37352u, 19u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(945f, arg_0.a) - vec2<f32>(1917f, 419f)))));
    var var_2 = var_0.x;
    return select(vec3<bool>(all(vec4<bool>(any(global3.b), true, !arg_0.b.x, select(false, arg_0.b.x, true))), arg_0.b.x, arg_0.b.x), !select(vec3<bool>(global3.b.x, global3.b.x, all(global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec3<bool>(!global3.b.x, false, u_input.a.x != u_input.a.x), _wgslsmith_f_op_f32(-563f - global3.a) < var_1.b.x), !global3.b);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    return !(!func_2(Struct_3(_wgslsmith_div_f32(global3.a, -607f), global3.b), 0u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = -42776i;
    global0 = array<f32, 19>();
    global2 = array<vec2<bool>, 14>();
    global1 = array<Struct_3, 9>();
    let var_1 = _wgslsmith_f_op_f32(sign(-1243f));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)] - global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_div_f32(-1263f, 1205f), global3.a, 783f))), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, ~4294967295u, ~4294967295u, _wgslsmith_mult_u32(u_input.a.x, arg_0.c.x)), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global4.a.a);
    global2 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = func_4(Struct_1(var_0.a.c, _wgslsmith_f_op_vec2_f32(step(global4.a.a.d, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.a, global4.a.a.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, global0[_wgslsmith_index_u32(4294967295u, 19u)])))))), _wgslsmith_mult_vec2_u32(vec2<u32>(10814u, u_input.a.x), min(vec2<u32>(global4.a.a.a.x, var_0.a.c.x) | vec2<u32>(4294967295u, global4.a.a.c.x), global4.a.a.c)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global3.a)))), _wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(-622f - var_0.a.d.x)))), Struct_3(707f, select(!vec3<bool>(true, true, global3.b.x), select(vec3<bool>(global3.b.x, false, false), func_1(-1007f, vec2<bool>(global3.b.x, global3.b.x), -144f), !vec3<bool>(global3.b.x, global3.b.x, global3.b.x)), vec3<bool>(false, global3.b.x, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 19u)])), global3.a, -1094f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global4.a.a.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1000f)), vec4<f32>(global3.a, -232f, global0[_wgslsmith_index_u32(var_0.a.c.x, 19u)], global4.a.a.b.x), select(vec4<bool>(global3.b.x, global3.b.x, global3.b.x, global3.b.x), vec4<bool>(global3.b.x, false, false, false), vec4<bool>(false, true, global3.b.x, global3.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, 837f, global3.a, global3.a))), true)));
}

