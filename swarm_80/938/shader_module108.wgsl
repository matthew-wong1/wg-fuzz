struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~abs(u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, 53296u, 33989u, u_input.a.x), ~u_input.a)), min(u_input.a, u_input.a)), firstTrailingBit(firstTrailingBit(~u_input.a))), 14u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-281f, -1009f), _wgslsmith_f_op_f32(min(1418f, 572f)), _wgslsmith_f_op_f32(520f - -1229f), -447f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, 146f, 162f, 1044f) * vec4<f32>(973f, -269f, 981f, -1389f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1614f)), -270f, _wgslsmith_f_op_f32(1689f * 192f), -1587f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(726f)) - _wgslsmith_f_op_f32(-424f * -107f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-463f)) * -2342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-899f + 459f)))), -2626f, _wgslsmith_f_op_f32(min(632f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(796f)) - -847f)))));
    var var_2 = 21491u;
    let var_3 = var_1.x;
    global0 = _wgslsmith_div_i32(-2109i, ~u_input.b);
    return arg_0.c.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(u_input.a.x, true, vec2<bool>(true, true));
    var var_1 = global1[_wgslsmith_index_u32(43676u, 14u)];
    global1 = array<Struct_1, 14>();
    let var_2 = vec3<bool>(var_0.b & any(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b, false, true, var_0.b), false)), func_3(Struct_2(~_wgslsmith_mult_u32(var_0.a, 4294967295u), any(vec3<bool>(var_0.c.x, true, false)), select(select(vec2<bool>(true, var_0.b), var_0.c, var_0.c), vec2<bool>(false, false), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.c.x))))), !(!var_0.c.x));
    var var_3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, u_input.a.x | 31559u), vec2<u32>(var_0.a, abs(select(var_1.a.x, 0u, var_0.b))));
    return -5057i;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = func_2() ^ u_input.b;
    let var_0 = Struct_1(~firstLeadingBit(firstLeadingBit(~u_input.a.yz)));
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    let var_1 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, countOneBits(u_input.a.x)), u_input.a.xwz));
    return (~(~1u) | (~(4294967295u | var_0.a.x) ^ ~1u)) < 62055u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_2(u_input.a.x, false, !vec2<bool>(true, func_1(vec3<bool>(false, true, false))));
    let var_1 = !vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_0.b, false), vec4<bool>(true, true, true, true))), false, true, false);
    global0 = 64398i;
    var var_2 = ~(~(~max(u_input.a.xww, vec3<u32>(5827u, 22344u, var_0.a)))) >> (vec3<u32>(~var_0.a | ~(var_0.a << (u_input.a.x % 32u)), _wgslsmith_mult_u32(1u, abs(4294967295u)), _wgslsmith_div_u32(select(~77457u, u_input.a.x, true), ~u_input.a.x)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xww, 1000f, vec4<u32>(var_2.x, var_2.x, ~(4294967295u ^ ~var_2.x), 0u));
}

