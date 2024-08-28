struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<i32, 11>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    global0 = array<vec3<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-363f - 133f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1204f, -554f)) + -283f), _wgslsmith_f_op_f32(max(-1279f, -1126f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-7430i, 1i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.c, 11u)]), vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c, 11u)])), vec2<i32>(global1[_wgslsmith_index_u32(0u, 11u)], -2147483647i))) & _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b, 2147483647i)), -vec2<i32>(26223i, 5459i) ^ select(vec2<i32>(29882i, global1[_wgslsmith_index_u32(49422u, 11u)]), vec2<i32>(7366i, -2147483647i), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, -945f, -1146f, 188f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, -1378f, 1000f, -204f)))))));
}

