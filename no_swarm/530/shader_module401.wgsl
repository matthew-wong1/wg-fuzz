struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, false, false, false, false, true, true, false, true, true, false, true, true, true, false, false, true, false, true, true, true, false, false, true, false, false);

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<f32>(-1000f, 1023f), 4622u)), Struct_2(Struct_1(vec2<f32>(252f, 1458f), 11302u)), Struct_2(Struct_1(vec2<f32>(1449f, 1000f), 52031u)), Struct_2(Struct_1(vec2<f32>(-647f, -545f), 1u)), Struct_2(Struct_1(vec2<f32>(630f, 672f), 16348u)), Struct_2(Struct_1(vec2<f32>(-408f, -736f), 10889u)), Struct_2(Struct_1(vec2<f32>(1278f, -668f), 27227u)), Struct_2(Struct_1(vec2<f32>(1948f, 233f), 4625u)), Struct_2(Struct_1(vec2<f32>(2657f, -301f), 38446u)), Struct_2(Struct_1(vec2<f32>(626f, -714f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(822f, 1537f), 25521u)), Struct_2(Struct_1(vec2<f32>(-1118f, -903f), 10392u)), Struct_2(Struct_1(vec2<f32>(-693f, -2156f), 24408u)), Struct_2(Struct_1(vec2<f32>(749f, 714f), 2103u)), Struct_2(Struct_1(vec2<f32>(1452f, 1071f), 1u)), Struct_2(Struct_1(vec2<f32>(-867f, -478f), 74398u)), Struct_2(Struct_1(vec2<f32>(-266f, 214f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(255f, 694f), 32788u)), Struct_2(Struct_1(vec2<f32>(-1777f, 1048f), 2858u)), Struct_2(Struct_1(vec2<f32>(-1101f, -709f), 1u)), Struct_2(Struct_1(vec2<f32>(1135f, -608f), 20138u)), Struct_2(Struct_1(vec2<f32>(-616f, 995f), 22112u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = array<bool, 27>();
    global1 = array<Struct_2, 22>();
    let var_0 = ~vec4<u32>(arg_0.x, _wgslsmith_sub_u32(4294967295u | ~arg_0.x, arg_0.x), arg_0.x, 4294967295u);
    global1 = array<Struct_2, 22>();
    var var_1 = global1[_wgslsmith_index_u32(~30028u, 22u)];
    return ~vec3<u32>(0u, select(var_0.x | arg_0.x, var_1.a.b, !global0[_wgslsmith_index_u32(var_1.a.b, 27u)]) ^ arg_0.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 58154u, arg_0.x), ~vec3<u32>(9779u, var_1.a.b, 7142u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<bool, 27>();
    let var_0 = !vec4<bool>(!select(!global0[_wgslsmith_index_u32(57836u, 27u)], global0[_wgslsmith_index_u32(arg_1.b, 27u)], false), any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 27u)], true, global0[_wgslsmith_index_u32(arg_0.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])) && (arg_0.x >= ~arg_0.x), true | all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1296f)))) < arg_1.a.x);
    var var_1 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) >= _wgslsmith_f_op_f32(abs(-2053f))));
    global1 = array<Struct_2, 22>();
    global0 = array<bool, 27>();
    return firstLeadingBit(arg_1.b);
}

fn func_1() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(func_3(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_add_vec3_u32(func_2(vec2<u32>(0u, 0u)), vec3<u32>(1u, 1u, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(12138u, 62245u, 22919u), vec3<u32>(31198u, 1u, 82658u)), vec3<u32>(1u, 1u, 1u)), ~4294967295u, ~func_2(vec2<u32>(4294967295u, 4294967295u)).x)), Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(440f * 110f), -958f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1576f - 1545f) + 1979f)), 0u)), 22u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a * vec2<f32>(var_0.a.a.x, var_0.a.a.x)) * var_0.a.a), max(abs(66182u), 11632u << (select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2191u, 4294967295u, var_0.a.b), vec3<u32>(0u, var_0.a.b, var_0.a.b)), true) % 32u)));
    var var_2 = var_0.a.a.x;
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_0 = -3565f;
    global1 = array<Struct_2, 22>();
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(func_1()) > -853f, false);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1343f, 863f) + vec2<f32>(-2054f, 262f)))))), ~_wgslsmith_div_u32(0u, 4294967295u));
    let var_3 = vec2<i32>(27929i, _wgslsmith_div_i32(1i | u_input.b, ~u_input.b));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(func_1()))), ~(~var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_sub_i32(-8543i, -u_input.b), ~var_3.x)));
}

