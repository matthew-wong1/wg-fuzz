struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global2: array<Struct_5, 25>;

var<private> global3: array<u32, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> i32 {
    global2 = array<Struct_5, 25>();
    global1 = array<vec3<bool>, 6>();
    let var_0 = arg_0;
    global2 = array<Struct_5, 25>();
    var var_1 = arg_0;
    return countOneBits(-6235i) << (u_input.a.x % 32u);
}

fn func_2(arg_0: Struct_5) -> i32 {
    global1 = array<vec3<bool>, 6>();
    global2 = array<Struct_5, 25>();
    let var_0 = arg_0;
    global2 = array<Struct_5, 25>();
    global1 = array<vec3<bool>, 6>();
    return _wgslsmith_mod_i32(-_wgslsmith_div_i32(func_3(-1209f), 1i | var_0.b.b), 43541i) & firstTrailingBit(-23009i);
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<i32>(~(-1i), u_input.b, func_2(global2[_wgslsmith_index_u32(~37795u, 25u)]), u_input.b);
    global1 = array<vec3<bool>, 6>();
    let var_1 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(4294967295u, u_input.a.x, 1u), _wgslsmith_div_vec3_u32(u_input.a.zyy, u_input.a.xyx)), _wgslsmith_mult_vec3_u32(u_input.a.xyy, vec3<u32>(~global3[_wgslsmith_index_u32(u_input.a.x, 27u)], ~11029u, ~global3[_wgslsmith_index_u32(78509u, 27u)]))) << (~(~global3[_wgslsmith_index_u32(1u, 27u)]) % 32u), 27u)], 27u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(f32(-1f) * -459f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-660f + 1490f) - _wgslsmith_f_op_f32(560f * -1672f)))));
    var_0 = abs(vec4<i32>(-var_0.x, _wgslsmith_mult_i32(26225i, var_0.x), 6286i, func_3(_wgslsmith_f_op_f32(ceil(-1000f)))));
    return StorageBuffer(vec3<f32>(-2588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1233f * 1253f) - _wgslsmith_f_op_f32(f32(-1f) * -799f)) - -1387f), 490f), _wgslsmith_f_op_f32(min(427f, _wgslsmith_f_op_f32(598f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1219f, 267f) + _wgslsmith_div_f32(1233f, 1024f))))), _wgslsmith_sub_u32(~78506u, _wgslsmith_sub_u32(0u, u_input.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1f)), -1492f, true)), u_input.a.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2064f, -161f))))))));
    global3 = array<u32, 27>();
    let x = u_input.a;
    s_output = func_1();
}

