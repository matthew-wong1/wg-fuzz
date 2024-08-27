struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-657f, -390f, 1079f, -875f, 1698f, 488f, 667f, -703f, -251f, -1384f, -116f, -490f, 1670f, 2088f, 137f, 1000f, 1000f, 1028f, 943f, 1756f);

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(13652i, -19829i), vec2<i32>(-43748i, 86118i), vec2<i32>(52584i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-8679i, 2147483647i), vec2<i32>(i32(-2147483648), -42148i), vec2<i32>(21549i, 2799i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 3539i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -9767i), vec2<i32>(-29525i, -25432i), vec2<i32>(42255i, -7770i), vec2<i32>(1i, 23726i), vec2<i32>(i32(-2147483648), 42907i), vec2<i32>(i32(-2147483648), 19461i), vec2<i32>(1i, 0i), vec2<i32>(-12456i, 2147483647i), vec2<i32>(-5167i, -51078i));

var<private> global3: u32 = 88712u;

var<private> global4: array<vec2<i32>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(77779u, 20u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 20u)])) + vec2<f32>(_wgslsmith_f_op_f32(floor(-659f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33536u, 20u)] - 1076f)))));
    global2 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(976f * global0[_wgslsmith_index_u32(countOneBits(abs(4294967295u)), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(0u, ~1u, 1u) >> (4294967295u % 32u), ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 419f) - var_1.x))), 560f, _wgslsmith_f_op_vec2_f32(var_1.wx - var_1.yz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(19714u, 20u)], 746f) + vec4<f32>(-635f, var_0.x, 1184f, 446f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, var_1.x, global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(29192u, 20u)], 251f, 260f, 368f)))))));
}

