struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 28>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(831f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -428f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(53458u, 28u)])) - vec2<f32>(global1[_wgslsmith_index_u32(abs(11238u), 28u)], _wgslsmith_f_op_f32(172f - global1[_wgslsmith_index_u32(62560u, 28u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1500f, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<f32>(-1000f, global1[_wgslsmith_index_u32(53188u, 28u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1101f, -321f) + vec2<f32>(-679f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)])))))));
    var var_1 = u_input.a | u_input.a;
    global1 = array<f32, 28>();
    let var_2 = Struct_1(any(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(38609u, 28u)], -214f, -119f) * vec4<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 1000f, global1[_wgslsmith_index_u32(35178u, 28u)])), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -242f, 378f, global1[_wgslsmith_index_u32(1u, 28u)]))) + vec4<f32>(705f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], _wgslsmith_f_op_f32(1154f * var_0.x), _wgslsmith_f_op_f32(step(124f, -1412f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1345f, -382f, -197f, -287f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-200f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 408f, -676f)))))))), Struct_1(!var_2.a || true), Struct_2(var_2.a, ~(~7498i), ~(~var_1.x), Struct_1(var_1.x != _wgslsmith_mult_i32(-1i, 5831i)), u_input.b.x), var_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 28u)])))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global1 = array<f32, 28>();
    var var_1 = u_input.b.xz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1844f)));
    var_2 = -1000f;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(true));
    var var_1 = vec3<u32>(u_input.b.x, min(_wgslsmith_mult_u32(min(u_input.b.x, ~u_input.b.x), u_input.b.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x)), ~u_input.b)), u_input.b.x);
    var var_2 = global1[_wgslsmith_index_u32(1u, 28u)];
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 6496u), 28u)] * _wgslsmith_f_op_f32(step(476f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 31739u), 28u)]))))));
    global1 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, -vec2<i32>(u_input.c.x, u_input.c.x)), reverseBits(vec2<i32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~52554u >> (~var_1.x % 32u), 28u)] + global1[_wgslsmith_index_u32(4294967295u, 28u)]));
}

