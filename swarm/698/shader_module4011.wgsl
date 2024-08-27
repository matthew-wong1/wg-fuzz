struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 14>;

var<private> global2: Struct_1 = Struct_1(0i, 22021i, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-208f, -525f));

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(abs(_wgslsmith_mult_u32(4294967295u, u_input.b)));
    global0 = global1[_wgslsmith_index_u32(global3.a, 14u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, 296f, global2.d.x, 1994f) + vec4<f32>(590f, -1097f, global2.d.x, -1148f)) * vec4<f32>(global1[_wgslsmith_index_u32(global3.a, 14u)], global2.d.x, global2.d.x, global2.d.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1409f, global2.d.x, -829f, 508f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.d.x, global2.d.x), _wgslsmith_f_op_f32(ceil(-154f)), global1[_wgslsmith_index_u32(global2.c.x, 14u)], 425f)))));
    let var_1 = !vec2<bool>(any(vec2<bool>(all(vec3<bool>(true, true, true)), false)), all(vec2<bool>(true, true)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(377f * -1172f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-141f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.c, u_input.a), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d.x))) * global2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(1i, -1093i)), ~54138u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)))), -2147483647i);
}

