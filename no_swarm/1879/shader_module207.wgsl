struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: bool;

var<private> global2: array<i32, 25>;

var<private> global3: Struct_1 = Struct_1(-10235i);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-89480i), Struct_1(0i), Struct_1(43542i), Struct_1(-13841i), Struct_1(1i), Struct_1(17710i), Struct_1(-51205i), Struct_1(2147483647i), Struct_1(-58724i), Struct_1(-4146i), Struct_1(-6701i), Struct_1(1i), Struct_1(25459i), Struct_1(-1i), Struct_1(12268i), Struct_1(-59561i), Struct_1(2147483647i), Struct_1(-27592i), Struct_1(-23125i), Struct_1(1999i), Struct_1(-1i), Struct_1(-18272i), Struct_1(-16116i), Struct_1(10658i), Struct_1(-1i), Struct_1(22218i), Struct_1(2147483647i), Struct_1(0i), Struct_1(i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<i32, 25>();
    global3 = Struct_1(2147483647i);
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 21u)];
    let var_2 = Struct_1(-(~select(-56348i, 1i, any(vec4<bool>(var_0, var_0, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 21u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(4294967295u, u_input.a.x)), 21u)]), vec2<f32>(698f, _wgslsmith_f_op_f32(f32(-1f) * -1510f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2273f, global0[_wgslsmith_index_u32(u_input.a.x << (102192u % 32u), 21u)]))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)] * global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, global0[_wgslsmith_index_u32(0u, 21u)])) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -601f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 163f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, 982f, 576f, 431f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2897f, 520f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2918f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(15874u, 21u)], -644f) + vec4<f32>(1725f, global0[_wgslsmith_index_u32(0u, 21u)], -490f, -1804f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -469f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])))))), ~u_input.a.x, -global2[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 25u)]);
}

