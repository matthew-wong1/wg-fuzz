struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-2289i, 1i, i32(-2147483648), -9313i), -945f, false, vec3<f32>(-1776f, 804f, 330f));

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 1u, 30886u, 4114u, 1u, 0u, 4294967295u, 1u, 42702u);

var<private> global3: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 4294967295u), vec2<u32>(11887u, 4294967295u), vec2<u32>(35030u, 4294967295u), vec2<u32>(1570u, 16028u), vec2<u32>(0u, 1u));

var<private> global4: array<vec4<i32>, 31>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(-1860f - _wgslsmith_div_f32(global1.b, global1.d.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b + global1.b), -861f)), !(global1.b >= -1000f) | false), vec2<bool>(false, false), false);
    global2 = array<u32, 9>();
    let var_1 = reverseBits(~select(abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 22716u, 18031u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(16498u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]), vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 9u)], 4294967295u)), !vec3<bool>(false, global1.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(var_1, vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(13568u, 4294967295u, var_1.x, 70603u), abs(vec4<u32>(global2[_wgslsmith_index_u32(42890u, 9u)], global2[_wgslsmith_index_u32(58575u, 9u)], 1u, var_1.x))), firstLeadingBit(3478u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.d - global1.d))), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(global1.b + -1636f), _wgslsmith_f_op_f32(global1.b - global1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1251f, global1.d.x, -408f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -1439f, 2282f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -843f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-946f, global1.b) * _wgslsmith_f_op_f32(513f - 1565f)))));
}

