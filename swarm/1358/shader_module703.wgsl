struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<u32, 19>;

var<private> global2: f32 = -378f;

var<private> global3: array<u32, 29> = array<u32, 29>(536u, 30491u, 9205u, 2452u, 0u, 0u, 0u, 1u, 1u, 9256u, 68162u, 0u, 14993u, 163370u, 1u, 175u, 27732u, 45135u, 0u, 0u, 4294967295u, 0u, 797u, 0u, 64415u, 1u, 1u, 0u, 71001u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    return -129f;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = ~min(arg_2.wxz, arg_2.wzz);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_add_u32(4294967295u, select(countOneBits(arg_2.x), abs(global1[_wgslsmith_index_u32(arg_2.x, 19u)]), !arg_0.x)), ~(~(~vec3<u32>(1u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 19u)], 29u)], 29u)], 19u)], 19u)], 29u)], 13231u))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1531f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(97413u << (arg_2.x % 32u), 7u)]))) * 1221f);
    var var_2 = vec2<f32>(-618f, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 934f)))));
    var var_3 = 89790u;
    return _wgslsmith_f_op_vec2_f32(-arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 29>();
    global1 = array<u32, 19>();
    global3 = array<u32, 29>();
    var var_0 = 81658u;
    let var_1 = Struct_1((~(-vec4<i32>(0i, -1i, u_input.a.x, u_input.a.x)) << (vec4<u32>(0u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 4294967295u, ~4294967295u, global3[_wgslsmith_index_u32(~97u, 29u)]) % vec4<u32>(32u))) ^ ~(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)));
    global3 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~83248u, 19u)], 7u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23166u, 1u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(86694u, 29u)], 29u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 19u)])), 7u)]), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, true), _wgslsmith_dot_vec2_i32(u_input.a.xz, var_1.a.wz), max(vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(73825u, 19u)], global3[_wgslsmith_index_u32(1u, 29u)]), vec4<u32>(50112u, 112261u, 0u, 1u)), vec2<f32>(558f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 7u)]))))), -55968i, -12307i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) - _wgslsmith_f_op_f32(-429f + global0[_wgslsmith_index_u32(26660u, 7u)])), global0[_wgslsmith_index_u32(0u, 7u)])));
}

