struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | ((u_input.a.x == _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, 1i, u_input.c.x), select(u_input.c.wwy, vec3<i32>(1i, 46756i, u_input.b), false))) && !any(vec4<bool>(true, true, true, false)));
    global0 = array<vec3<bool>, 11>();
    global0 = array<vec3<bool>, 11>();
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(~u_input.e.xx), vec2<u32>(u_input.e.x, 106713u) ^ firstLeadingBit(vec2<u32>(u_input.d, 6431u))) << (1u % 32u);
    var var_2 = -_wgslsmith_mult_i32(abs(1i), 12513i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 234f, -325f)))) * vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1631f, global1.a.x, global1.a.x) * vec3<f32>(global1.a.x, 831f, global1.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.x, -199f, 250f), vec3<f32>(global1.a.x, -1140f, 207f))), false)))), 22261u);
}

