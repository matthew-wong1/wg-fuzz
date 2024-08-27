struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1303f, -446f, -672f, -228f, -390f, -669f, 1020f, 710f, -1002f, 834f, 136f, -1151f, 438f, 246f, 1375f, -1387f, -948f, 197f, 203f, -1705f, 1000f, -1000f, -370f, 668f, -335f, 577f);

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(vec4<u32>(~1u, global1.b.x, ~(_wgslsmith_add_u32(u_input.a.x, 63935u) ^ ~0u), ~21038u), ~vec4<u32>(~(~u_input.a.x), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(17015u, u_input.a.x, global1.e.x, global1.b.x) << (vec4<u32>(global1.b.x, global1.e.x, 5360u, 67751u) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, global1.e.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 12142u, global1.b.x), vec4<bool>(global1.d.x, global1.d.x, global1.a.x, false))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.yz)));
    let var_1 = -86655i;
    let var_2 = var_1 & var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, global1.c, global1.c)))));
    let var_4 = Struct_5(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(var_2, -2147483647i)), vec2<i32>(1i, var_1)), -_wgslsmith_div_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(u_input.b, -55480i))), ~(vec2<u32>(_wgslsmith_mod_u32(0u, 16306u), max(1u, u_input.a.x)) ^ ~(~u_input.a.zx)));
    return StorageBuffer(1u, _wgslsmith_f_op_vec2_f32(-var_3.zy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], -1818f, -2671f, 2760f), vec4<f32>(586f, 722f, 1198f, global1.c)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, global0[_wgslsmith_index_u32(16760u, 26u)], -1258f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

