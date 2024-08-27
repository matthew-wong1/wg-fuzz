struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(1i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.a, -5332i) | vec2<i32>(47334i, -2147483647i))), 2147483647i), vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42438u, 94116u), vec2<u32>(0u, 0u)), 10591u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(19449u, 119874u), vec2<u32>(4294967295u, 40901u))), 13630u, ~(~57041u)));
}

