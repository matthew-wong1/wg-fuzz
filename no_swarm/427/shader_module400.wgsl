struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 15337u, 21164u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = countOneBits(~0u);
    global0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~global0.wz, ~global0.xw), 0u, var_1, countOneBits(~4294967295u));
    let var_2 = vec2<i32>(1i, -(_wgslsmith_sub_i32(~(-93066i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))) ^ _wgslsmith_sub_i32(firstTrailingBit(24733i), -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2455f, 1136f, 233f, 1042f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 808f, -1877f, 1328f)))));
}

