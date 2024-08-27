struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(1076f, 798f), vec2<f32>(-292f, 981f), vec2<f32>(551f, 891f), vec2<f32>(452f, -1199f), vec2<f32>(382f, -946f), vec2<f32>(-1000f, -1203f), vec2<f32>(844f, -1662f), vec2<f32>(2147f, 1000f), vec2<f32>(-1123f, -461f), vec2<f32>(-1140f, 1562f), vec2<f32>(1244f, -303f), vec2<f32>(-624f, 289f), vec2<f32>(-747f, 679f), vec2<f32>(227f, -2034f), vec2<f32>(365f, 386f), vec2<f32>(603f, -1000f), vec2<f32>(921f, 950f), vec2<f32>(-818f, -1330f), vec2<f32>(-267f, -1611f), vec2<f32>(1000f, 3045f), vec2<f32>(435f, 318f), vec2<f32>(1723f, 311f), vec2<f32>(640f, 1531f), vec2<f32>(1592f, -391f), vec2<f32>(368f, 130f), vec2<f32>(-380f, -1000f), vec2<f32>(-134f, -349f), vec2<f32>(-1733f, -577f), vec2<f32>(440f, -1518f), vec2<f32>(1000f, 625f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, _wgslsmith_f_op_f32(-1228f * 920f), _wgslsmith_f_op_f32(select(1000f, -143f, true)))), ~min(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 18763u), vec4<u32>(6530u, arg_0.x, 0u, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(528f, _wgslsmith_div_f32(-1247f, 1001f))) - -1612f)), Struct_1(vec3<f32>(1f, 354f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f + -266f), -1815f)), vec4<u32>(countOneBits(_wgslsmith_mult_u32(16427u, arg_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x) << (vec2<u32>(36067u, arg_0.x) % vec2<u32>(32u)), select(arg_0, vec2<u32>(6243u, arg_0.x), vec2<bool>(false, false))), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20908u, 0u), ~vec2<u32>(35637u, 5852u))), 1000f), ~vec3<u32>(~3464u, arg_0.x, 1u) & ~u_input.a.wzx, vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_1 = u_input.a.x;
    global1 = array<vec2<f32>, 30>();
    let var_2 = 93752u;
    global0 = 1334f;
    return 20078u;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = ~(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.wyy, vec3<u32>(arg_0.a, arg_0.a, 1u)), vec3<u32>(~u_input.a.x, arg_0.a, _wgslsmith_add_u32(1u, 1u))) << (1u % 32u));
    var var_1 = ~(~func_3(vec2<u32>(var_0, u_input.a.x)) << (countOneBits(_wgslsmith_sub_u32(22083u, u_input.a.x)) % 32u));
    var var_2 = 4294967295u >> (var_0 % 32u);
    var_1 = ~_wgslsmith_add_u32(45271u, ~firstTrailingBit(~0u));
    var_1 = 0u;
    return arg_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    global1 = array<vec2<f32>, 30>();
    var var_0 = func_2(Struct_3(26208u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1009f, -601f, 734f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), -1806f, _wgslsmith_f_op_f32(f32(-1f) * -1365f)))), arg_0, 537f);
    let var_2 = var_1;
    var var_3 = -35205i;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) - vec3<f32>(var_2.c, var_2.c, var_2.c)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(626f, -667f, var_1.a.x)))), min(abs(u_input.a), ~(~vec4<u32>(49360u, var_0.a, 4294967295u, arg_0.x))), _wgslsmith_f_op_f32(trunc(var_2.a.x))), Struct_1(var_2.a, vec4<u32>(var_0.a, ~func_2(Struct_3(1u)).a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 74210u), var_2.b.xy), arg_0.x), 1f), firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~arg_0.zzy)), select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(false, true)), false), select(vec2<bool>(any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, true, true))), vec2<bool>(true, true), false)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec2<f32>, 30>();
    let var_0 = func_2(Struct_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(arg_0.a.b, u_input.a)), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0.b.a * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-277f + arg_0.b.c), _wgslsmith_f_op_f32(func_1(u_input.a, 64508i).b.a.x * _wgslsmith_f_op_f32(f32(-1f) * -2327f)), 667f))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a.x, var_1.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(47683u, u_input.a.x, 4294967295u) | vec3<u32>(arg_0.b.b.x, arg_0.c.x, 4294967295u), vec3<u32>(4294967295u, 51176u, 0u)), 30u)]))));
    let var_3 = u_input.c.x;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~u_input.c.x < 2147483647i, true, _wgslsmith_dot_vec4_u32(min(u_input.a & vec4<u32>(17279u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), ~vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)) > u_input.a.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, 1494f, 732f) + vec3<f32>(1406f, 1021f, -871f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-918f, -1155f, 124f), vec3<f32>(777f, 440f, 164f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1513f, -1058f, -638f))))), vec4<u32>(min(reverseBits(4294967295u), ~u_input.a.x), u_input.a.x, u_input.a.x, ~u_input.a.x ^ 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1537f), _wgslsmith_f_op_f32(-2152f * -985f), false)))), func_4(func_1(~u_input.a, min(-u_input.c.x, ~u_input.b))), vec3<u32>(1u, 1u, func_2(Struct_3(~0u)).a), vec2<bool>(!(~u_input.a.x > u_input.a.x), any(vec3<bool>(true, true, true))));
    var var_2 = !(!all(vec3<bool>(false, var_1.d.x, false))) & true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a.a), ~var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c + 1168f)));
    let var_4 = var_3.b;
    let var_5 = abs(vec3<u32>(var_3.b.x, ~func_2(func_2(Struct_3(1u))).a, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(-46594i, 43104i, u_input.c.x), _wgslsmith_add_vec3_i32(~select(vec3<i32>(18411i, 2147483647i, u_input.d), vec3<i32>(u_input.b, 16679i, u_input.b), vec3<bool>(false, var_1.d.x, var_1.d.x)), vec3<i32>(1i, -7918i, u_input.c.x))), -1768i, var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.c))))), var_1.a.b.x);
}

