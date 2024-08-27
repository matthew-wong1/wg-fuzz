struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec3<i32> = vec3<i32>(4481i, -1i, -2876i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    global1 = arg_0;
    global0 = array<f32, 31>();
    global1 = (arg_0 & arg_0) >> (vec3<u32>(29309u, 34820u, 60166u) % vec3<u32>(32u));
    global1 = arg_0;
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(-select(~arg_0, ~vec3<i32>(arg_0.x, global1.x, arg_0.x), any(vec3<bool>(true, false, true))), arg_0), _wgslsmith_sub_i32(u_input.b, ~(-u_input.b << (u_input.a.x % 32u))));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 31u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<i32>(u_input.b, u_input.b, 0i) | -vec3<i32>(-2147483647i, u_input.b, -1i));
}

