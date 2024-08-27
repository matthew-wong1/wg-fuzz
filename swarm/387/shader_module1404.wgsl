struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(982f, 1237f), vec2<f32>(738f, -836f), vec2<f32>(846f, 1817f), vec2<f32>(-906f, -1026f), vec2<f32>(556f, 556f), vec2<f32>(-175f, -477f), vec2<f32>(1120f, 1305f), vec2<f32>(-1294f, 746f), vec2<f32>(462f, 1305f), vec2<f32>(915f, 1232f), vec2<f32>(434f, 1642f), vec2<f32>(625f, -1000f), vec2<f32>(670f, -168f), vec2<f32>(1701f, 659f), vec2<f32>(-208f, -1413f));

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = abs(~arg_2.b);
    let var_1 = false;
    global1 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.b, arg_0), firstLeadingBit(arg_2.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, -1901f, -323f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1493f, -371f, -580f), vec3<f32>(324f, 1000f, -1311f), vec3<bool>(arg_1.x, false, false))) * vec3<f32>(1204f, 1764f, 1431f))))));
    return 1u;
}

fn func_2() -> u32 {
    global0 = array<vec2<f32>, 15>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = vec4<i32>(-1i, u_input.b.x, -2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(select(u_input.c.x, u_input.c.x, u_input.a.x == -1365i), u_input.c.x), _wgslsmith_add_i32(-9274i, abs(61046i))));
    global0 = array<vec2<f32>, 15>();
    global1 = array<Struct_1, 24>();
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 0u, 20810u, 0u) | vec4<u32>(0u, 33934u, var_0.b, 4294967295u), abs(vec4<u32>(0u, 1u, 13407u, var_0.b))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.b, 26820u), 4294967295u, var_0.b ^ var_0.b), vec3<u32>(func_3(var_0.b, var_0.a.zzy, Struct_1(vec4<bool>(var_0.c, false, false, false), var_0.b, true)), abs(49284u), reverseBits(var_0.b))) % 32u), var_0.b);
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 4294967295u), 1u << (func_2() % 32u)), 24u)];
    let var_1 = false;
    var_0 = global1[_wgslsmith_index_u32(var_0.b, 24u)];
    return StorageBuffer(reverseBits(vec2<i32>(select(abs(u_input.c.x), ~1i, u_input.c.x == u_input.a.x), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(122f * -659f), -274f)))) + _wgslsmith_div_f32(-1620f, _wgslsmith_f_op_f32(f32(-1f) * -1256f))), _wgslsmith_f_op_f32(sign(-354f)), ~17144u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, abs(firstTrailingBit(56995u))), 24u)];
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_mult_u32(1u, ~var_0.b);
    global0 = array<vec2<f32>, 15>();
    global0 = array<vec2<f32>, 15>();
    let x = u_input.a;
    s_output = func_1(var_0.c);
}

