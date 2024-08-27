struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-1433f, -401f, -338f), vec3<f32>(450f, 648f, 737f), vec3<f32>(283f, -393f, -1210f), vec3<f32>(-1047f, 581f, -205f), vec3<f32>(1253f, -2029f, -453f), vec3<f32>(-1536f, 996f, -1651f), vec3<f32>(-780f, -1174f, 234f), vec3<f32>(-396f, 1100f, 1064f), vec3<f32>(-437f, 119f, -709f), vec3<f32>(-688f, 504f, -411f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    var var_0 = Struct_1(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), (1u <= (u_input.d & u_input.b.x)) | false, 0u <= ~countOneBits(u_input.b.x)));
    let var_1 = Struct_1(vec4<bool>(var_0.a.x, all(var_0.a), !any(!vec3<bool>(false, false, var_0.a.x)), true));
    return !vec4<bool>(true, (var_0.a.x || !var_1.a.x) | !var_0.a.x, var_0.a.x, ~_wgslsmith_div_i32(u_input.e.x, 1i) <= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-38468i, u_input.e.x), -u_input.e.x, ~u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    var var_0 = Struct_1(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(abs(firstLeadingBit(~0u)), 10u)], u_input.a, _wgslsmith_div_u32(~u_input.d, u_input.c) & min(u_input.a.x ^ ~0u, _wgslsmith_div_u32(~u_input.d, 44946u)), vec3<i32>(3760i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 1i, 13919i), vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x))), u_input.e.x) & select(vec3<i32>(~0i, 2147483647i, -44461i), vec3<i32>(select(1i, u_input.e.x, true), firstTrailingBit(14994i), ~(-39217i)), !var_0.a.xxx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f))));
}

