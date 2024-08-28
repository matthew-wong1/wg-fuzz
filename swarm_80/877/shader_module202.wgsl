struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 3>;

var<private> global2: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<u32>) -> vec2<i32> {
    return _wgslsmith_sub_vec2_i32(~(-select(vec2<i32>(-44435i, u_input.b), vec2<i32>(u_input.b, u_input.b), false)), vec2<i32>(-2147483647i, -16503i) & vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(18597i, u_input.b, -2147483647i)))) | countOneBits(~vec2<i32>(30938i, ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(47590u, 3u)], ~(vec2<i32>(-37146i, ~u_input.a) & func_1(vec2<u32>(1u, 1u))), firstLeadingBit(vec2<i32>(1i, -1i)));
}

