struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_0 = arg_3;
    global0 = array<u32, 5>();
    return var_0.a.zyz;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-countOneBits(-2147483647i), firstTrailingBit(_wgslsmith_sub_i32(max(-37422i, u_input.c), min(u_input.c, 2147483647i))), _wgslsmith_dot_vec3_i32(select(func_1(Struct_4(vec4<u32>(4294967295u, 0u, 35779u, 0u), vec2<i32>(u_input.c, -2147483647i)), true, false, Struct_1(vec4<i32>(u_input.e, 2147483647i, u_input.e, -1i), u_input.b.xx)), ~vec3<i32>(u_input.c, u_input.e, -3233i), true), ~(-vec3<i32>(-1i, 42082i, u_input.c)))), vec3<u32>(71953u, ~(40241u & u_input.b.x) & (global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], 5u)]), 5u)] ^ abs(4294967295u)), global0[_wgslsmith_index_u32(0u, 5u)]));
}

