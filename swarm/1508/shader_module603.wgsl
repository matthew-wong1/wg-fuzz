struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-23800i, i32(-2147483648));

var<private> global1: array<vec3<u32>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_4) -> StorageBuffer {
    var var_0 = ~countOneBits(0u);
    global1 = array<vec3<u32>, 9>();
    global1 = array<vec3<u32>, 9>();
    global1 = array<vec3<u32>, 9>();
    global1 = array<vec3<u32>, 9>();
    return StorageBuffer(max(~abs(1u), 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_0.x, ~9835u, arg_0.x) >> (global1[_wgslsmith_index_u32(~1u, 9u)] % vec3<u32>(32u)), arg_0.wyz, ~vec3<u32>(arg_0.x, arg_0.x, 28474u)), -(~vec4<i32>(1i, u_input.a, abs(u_input.a), select(u_input.a, global0.x, arg_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = func_1(~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(1657u, ~(~21746u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 16042u)), vec2<u32>(0u, 1u)), 46331u), all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))) & true, Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-852f, -696f, true)), _wgslsmith_f_op_f32(1337f * 1060f), 1521f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, -776f, -967f))))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))), !any(vec2<bool>(false, false)))));
}

