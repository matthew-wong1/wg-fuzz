struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: array<u32, 26>;

var<private> global2: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(~_wgslsmith_mult_i32(6847i, u_input.a), _wgslsmith_sub_i32(u_input.a | 2147483647i, i32(-1i) * -8600i), -3961i)), abs(vec3<i32>(17326i, min(u_input.a, u_input.d) | 1i, -18059i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f + 1142f))) - -329f));
    var var_2 = ~(firstLeadingBit(~_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)])) << (~u_input.c.x % 32u));
    global0 = array<vec4<bool>, 21>();
    var_2 = ~global1[_wgslsmith_index_u32(~u_input.c.x, 26u)];
    global1 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1, var_1, var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * var_1)), -u_input.b, u_input.c.zzy);
}

