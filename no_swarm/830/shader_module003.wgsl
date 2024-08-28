struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false));

var<private> global2: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<i32> {
    let var_0 = abs(74477u);
    global0 = Struct_3(_wgslsmith_div_i32(global2.a, 27151i) ^ _wgslsmith_div_i32(global2.a, firstTrailingBit(global2.b.x)), global0.b, vec3<i32>(-_wgslsmith_div_i32(-14443i, 28975i), 2147483647i, global0.a), global0.d);
    var var_1 = Struct_4(Struct_3(~52183i, global0.b, abs(-_wgslsmith_add_vec3_i32(global0.c, vec3<i32>(u_input.a, -1i, -22127i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-957f - 198f))))), firstTrailingBit(-_wgslsmith_div_i32(-28517i, u_input.a) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0, var_0), _wgslsmith_clamp_u32(var_0, 4294967295u, var_0)) % 32u)), Struct_3(max(_wgslsmith_add_i32(4426i, countOneBits(u_input.a)), 40112i), Struct_2(2147483647i, _wgslsmith_sub_vec2_i32(~vec2<i32>(global0.c.x, 0i), select(global2.b, vec2<i32>(0i, -43141i), false))), vec3<i32>(-_wgslsmith_sub_i32(39093i, global0.c.x), global2.b.x, 57131i | global2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1495f)), _wgslsmith_f_op_f32(-global0.d))));
    var var_2 = 0u;
    var var_3 = var_1.a;
    return vec4<i32>(~27173i, reverseBits(global2.b.x) >> (countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(814u, var_0, 7531u), vec3<u32>(var_0, var_0, var_0))) % 32u), ~countOneBits(-global0.b.b.x) >> (_wgslsmith_clamp_u32(var_0, ~var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 34484u, var_0), ~vec3<u32>(var_0, 90229u, 1u))) % 32u), -6024i);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global2 = global0.b;
    let var_0 = Struct_1(true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * global0.d), true));
    var var_1 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(15720u, ~39405u, _wgslsmith_clamp_u32(5073u, 1u, 0u)));
    global1 = array<vec4<bool>, 11>();
    global1 = array<vec4<bool>, 11>();
    return var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    var var_0 = func_2(!(_wgslsmith_f_op_f32(min(arg_0.x, -1000f)) == global0.d), true);
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 8159u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 49506u, 1u), vec4<u32>(3640u, 4294967295u, 4294967295u, 4294967295u)))), 1580u, 0u), abs(vec3<u32>(~11109u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(0u) << (~9667u % 32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 1000f, global0.d, arg_0.x), vec4<f32>(arg_0.x, 758f, 1844f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, arg_0.x, 1198f, -1492f) * vec4<f32>(global0.d, arg_0.x, -1233f, 805f))))));
    var var_4 = global0.b;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b;
    let var_0 = abs(~firstTrailingBit(vec3<u32>(func_1(vec2<f32>(1075f, -1047f), global2.a), _wgslsmith_sub_u32(4294967295u, 0u), 4294967295u)));
    let var_1 = func_2(true, !all(vec3<bool>(true, true, true)));
    var var_2 = all(!vec2<bool>(var_1.a, var_1.a));
    let var_3 = var_0.zz ^ var_0.yx;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, 1000f, global0.d)) + vec3<f32>(188f, 188f, -835f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, global0.d) + _wgslsmith_f_op_f32(-global0.d))), -561f, global0.d));
    global1 = array<vec4<bool>, 11>();
    var var_5 = var_4.xz;
    global1 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1i);
}

