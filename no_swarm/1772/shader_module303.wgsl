struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 85164u;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<u32, 25> = array<u32, 25>(79126u, 63482u, 1u, 1970u, 4294967295u, 1u, 32213u, 4294967295u, 0u, 4294967295u, 62095u, 17285u, 0u, 1u, 4294967295u, 28680u, 10365u, 1u, 0u, 26300u, 26290u, 31861u, 1u, 57462u, 4294967295u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global2[_wgslsmith_index_u32(firstTrailingBit(~(~(~1u))), 25u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, _wgslsmith_f_op_f32(min(-1831f, -226f)), 188f, 1991f)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-63746i, -2147483647i, u_input.a.x, -38043i), max(vec4<i32>(-33841i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 1i, -69586i, -1i))), vec4<i32>(u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x, countOneBits(u_input.a.x))), select(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(95169i, u_input.a.x, u_input.a.x, 2147483647i), false) | min(-vec4<i32>(u_input.a.x, -1i, 10319i, -1i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
}

