struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: i32;

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 30u)]));
    global0 = array<f32, 30>();
    let var_1 = Struct_2(arg_0.x, arg_0.yxy, Struct_1(vec2<i32>(15953i, firstLeadingBit(arg_0.x) & ~arg_0.x)));
    let var_2 = -(34232i | arg_0.x) & firstLeadingBit(14589i);
    let var_3 = Struct_5(vec3<bool>(true, true, true));
    return -2147483647i;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global2 = array<Struct_3, 30>();
    let var_0 = min(~vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.zzw, vec3<u32>(u_input.a.x, 63116u, 130382u))), _wgslsmith_div_u32(abs(4294967295u), ~u_input.a.x), 1u, ~max(91750u, u_input.a.x)), u_input.a);
    let var_1 = global2[_wgslsmith_index_u32(~var_0.x, 30u)];
    global0 = array<f32, 30>();
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(select(var_1.d.a, vec2<i32>(func_2(vec4<i32>(-24934i, -2147483647i, var_1.c.x, 0i)), _wgslsmith_mod_i32(-2147483647i, 60070i)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<i32>(max(-2147483647i, 2147483647i), 2147483647i)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(625f, 947f, true));
    global0 = array<f32, 30>();
    var var_1 = ~vec4<i32>(firstLeadingBit(21293i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -4194i), vec3<i32>(43081i, 12938i, 0i)), -22925i, firstLeadingBit(1i)), -max(vec3<i32>(-31692i, -3871i, 16663i), vec3<i32>(1i, -1i, -40454i))), -21i);
    global2 = array<Struct_3, 30>();
    var var_2 = var_1.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(164f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(242f, 193f, global0[_wgslsmith_index_u32(4294967295u, 30u)]) * vec3<f32>(508f, global0[_wgslsmith_index_u32(38173u, 30u)], global0[_wgslsmith_index_u32(40629u, 30u)])), vec3<f32>(1681f, -597f, global0[_wgslsmith_index_u32(1u, 30u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1017f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -775f) + vec3<f32>(-2319f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -982f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 39031u), 30u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 30u)])), 2526f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -810f, global0[_wgslsmith_index_u32(4294967295u, 30u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -910f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) * vec3<f32>(-256f, global0[_wgslsmith_index_u32(6051u, 30u)], global0[_wgslsmith_index_u32(51491u, 30u)])))))), firstTrailingBit(reverseBits(0i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1539f - -2110f), global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 993f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)])))), 30u)]))));
}

