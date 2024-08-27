struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(-956f, 876f, Struct_1(vec3<bool>(true, true, false), vec4<u32>(22957u, 43111u, 0u, 0u), -14028i, vec2<f32>(-1151f, 1278f)), vec4<i32>(i32(-2147483648), i32(-2147483648), -11397i, 1i)), Struct_5(2068f, 1000f, Struct_1(vec3<bool>(false, true, false), vec4<u32>(26096u, 78290u, 11267u, 11087u), 2147483647i, vec2<f32>(-348f, -524f)), vec4<i32>(-1i, 1i, 1i, 19473i)), Struct_5(-1239f, 453f, Struct_1(vec3<bool>(false, true, true), vec4<u32>(58267u, 2667u, 0u, 0u), 2147483647i, vec2<f32>(-691f, -1739f)), vec4<i32>(2147483647i, -1i, -1i, 43800i)), Struct_5(-344f, 226f, Struct_1(vec3<bool>(true, true, false), vec4<u32>(0u, 86920u, 1u, 67653u), 0i, vec2<f32>(515f, -550f)), vec4<i32>(-36033i, 2147483647i, 2147483647i, 63134i)), Struct_5(-735f, 961f, Struct_1(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 7176u, 70719u, 0u), 2147483647i, vec2<f32>(1000f, 400f)), vec4<i32>(-18796i, -18125i, 0i, -12335i)), Struct_5(866f, -538f, Struct_1(vec3<bool>(false, false, true), vec4<u32>(12622u, 29233u, 4294967295u, 4294967295u), -1i, vec2<f32>(-2418f, -1000f)), vec4<i32>(0i, 44762i, i32(-2147483648), 42926i)), Struct_5(246f, -182f, Struct_1(vec3<bool>(false, true, true), vec4<u32>(58695u, 29052u, 34194u, 8889u), 2147483647i, vec2<f32>(-677f, 453f)), vec4<i32>(1i, 1i, 40135i, 0i)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: i32) -> vec4<u32> {
    return arg_0.d.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(2147483647i, u_input.b, true), u_input.c.x, _wgslsmith_sub_vec4_u32(select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(u_input.c.x, u_input.c.x, 15890u, 56678u)), countOneBits(func_1(Struct_4(true, vec4<f32>(1881f, -127f, -1538f, 1577f), 955f, Struct_2(1000f, u_input.c.x, Struct_1(vec3<bool>(false, true, true), vec4<u32>(5084u, 10999u, 1u, u_input.c.x), 0i, vec2<f32>(1000f, 1000f)), true), Struct_1(vec3<bool>(true, true, true), vec4<u32>(18482u, 1u, 1u, u_input.c.x), u_input.a, vec2<f32>(827f, 1289f))), vec4<u32>(0u, u_input.c.x, u_input.c.x, 4294967295u), global0[_wgslsmith_index_u32(1u, 7u)], -2147483647i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), true)), vec4<u32>(u_input.c.x, u_input.c.x & u_input.c.x, 4294967295u, 0u) ^ ~vec4<u32>(15613u, 59630u, u_input.c.x, u_input.c.x)));
}

