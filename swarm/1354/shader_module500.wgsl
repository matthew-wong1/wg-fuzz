struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: i32;

var<private> global2: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1057f, -495f, -1106f), vec3<f32>(-812f, -694f, -956f), vec3<f32>(-1283f, -1160f, -185f), vec3<f32>(-1000f, -1723f, -1000f), vec3<f32>(-636f, 557f, -505f), vec3<f32>(-643f, -1000f, 1326f), vec3<f32>(-548f, -1215f, -1156f), vec3<f32>(-576f, 1017f, 1049f), vec3<f32>(-120f, 926f, -1810f), vec3<f32>(620f, 396f, 200f), vec3<f32>(-1697f, -583f, 1000f), vec3<f32>(-1074f, 2070f, -740f), vec3<f32>(1000f, -429f, 580f), vec3<f32>(-653f, 105f, 418f), vec3<f32>(-109f, 921f, -554f), vec3<f32>(-1303f, 325f, 197f), vec3<f32>(233f, 124f, 1474f), vec3<f32>(1060f, 799f, 1059f), vec3<f32>(-1054f, -606f, -2380f), vec3<f32>(-762f, 373f, 1702f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_div_u32(32428u, u_input.b.x), arg_0.c.x | arg_0.b)), arg_0.b, u_input.b.zww, 108f, arg_0.e);
    var var_1 = arg_0;
    var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_2 = reverseBits(_wgslsmith_add_u32(~u_input.c, var_1.a));
    global2 = array<vec3<f32>, 20>();
    return _wgslsmith_sub_i32(arg_0.e.x, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.e.x, var_1.e.x) ^ _wgslsmith_mult_i32(var_0.e.x, -5234i), var_0.e.x), -(-4455i << (~var_2 % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = true;
    var var_1 = func_2(Struct_1(2453u, ~arg_0.c.x, _wgslsmith_div_vec3_u32(u_input.b.yyz, u_input.b.wyx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + -1000f))), -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, 15061i), vec4<i32>(1i, arg_1, 1i, arg_0.e.x)), vec4<i32>(-36576i, arg_0.e.x, arg_0.e.x, arg_1))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 49580u, ~(u_input.d << (11697u % 32u)), func_1(Struct_1(u_input.b.x, u_input.b.x, u_input.b.yzz, 323f, vec4<i32>(0i, 35254i, 4610i, -2147483647i)), ~56100i) | abs(17632u)), vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 61700u, ~4294967295u, 1u), ~u_input.b), _wgslsmith_div_u32(func_1(Struct_1(u_input.a.x, u_input.b.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -823f, vec4<i32>(0i, -2147483647i, 20998i, -68641i)), _wgslsmith_add_i32(7380i, 1i)), 55984u), _wgslsmith_mod_u32(~u_input.b.x, 20880u)));
    var_0 = ~u_input.a.x;
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-563f + -100f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(2125f)));
}

