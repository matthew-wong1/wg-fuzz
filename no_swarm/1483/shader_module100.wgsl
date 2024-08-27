struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> bool {
    return all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -682f))), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-global1.x))));
    return vec2<bool>(all(vec4<bool>(true, true, true, true)), false);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<f32> {
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_1(select(!vec3<bool>(false, true, global1.x <= 1000f), vec3<bool>(true, any(!arg_1), func_1()), all(vec2<bool>(u_input.a.x != 34685i, false))), select(arg_0.c.xz, func_3(Struct_4(~arg_0.b.x, vec3<u32>(u_input.b, 4294967295u, arg_0.b.x))), arg_0.c.xx), arg_2.x);
    var var_1 = u_input.d.x ^ ~1i;
    global0 = array<vec4<u32>, 24>();
    let var_2 = vec2<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 1448f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(trunc(1000f)))))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_2)), vec3<f32>(1095f, 663f, -2574f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(Struct_5(_wgslsmith_mult_u32(27600u, 0u) > ~u_input.b, u_input.c, vec3<bool>(true, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(1595f <= global1.x, true), (u_input.a.x <= -2147483647i) | func_1()), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1222f, -1398f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, global1.x))))))));
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    let var_0 = min(~select(-vec3<i32>(-22235i, -5807i, u_input.a.x), vec3<i32>(-27965i, u_input.d.x, u_input.d.x), true) << (countOneBits(u_input.c) % vec3<u32>(32u)), u_input.d);
    let var_1 = ~40295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~vec2<u32>(4294967295u, var_1))), global0[_wgslsmith_index_u32(u_input.b, 24u)] ^ max(select(max(global0[_wgslsmith_index_u32(24657u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), global0[_wgslsmith_index_u32(1300u, 24u)], false), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9911u, u_input.b), u_input.c), 24u)])), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x));
}

