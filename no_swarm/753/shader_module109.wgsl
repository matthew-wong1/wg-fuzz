struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-75232i, 103015i, 99024i, 1i, 2147483647i, 0i, 1i, -78729i, -1i, -24853i, -1i, -54837i, 2147483647i);

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(24577u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-29164i, -16288i), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(29804u, 13u)], u_input.c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), u_input.c.zz))), ~(-(4776i >> (u_input.a.x % 32u))), global0[_wgslsmith_index_u32(47730u, 13u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(28981u, 29221u, 1u), countOneBits(vec3<u32>(u_input.a.x, 80969u, u_input.a.x)))), 13u)]), 35411i);
}

