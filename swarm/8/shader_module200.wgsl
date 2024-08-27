struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(1i, 760i), vec2<i32>(0i, -6507i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -7640i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -3030i), vec2<i32>(0i, 53586i), vec2<i32>(i32(-2147483648), -4599i), vec2<i32>(1i, 2518i), vec2<i32>(3424i, i32(-2147483648)), vec2<i32>(32230i, 0i), vec2<i32>(26390i, -1i), vec2<i32>(5376i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -27675i), vec2<i32>(1i, -29675i), vec2<i32>(-39431i, 42745i), vec2<i32>(4654i, 2147483647i), vec2<i32>(19153i, -1i), vec2<i32>(77062i, 1i), vec2<i32>(56467i, 23508i), vec2<i32>(0i, -1i), vec2<i32>(9227i, 34705i), vec2<i32>(-1i, -29929i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 24>();
    global1 = array<vec2<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, 346f, 629f) + vec3<f32>(1074f, 835f, 2790f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(549f, -1717f, -782f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1552f, 496f, -329f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(726f, 115f, -287f) * vec3<f32>(711f, 504f, -577f)))))), _wgslsmith_add_i32(u_input.b.x, u_input.a), _wgslsmith_add_u32(588u, 1u), vec3<f32>(274f, _wgslsmith_f_op_f32(select(1061f, _wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(-135f + 110f)), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-737f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - -1523f)))));
}

