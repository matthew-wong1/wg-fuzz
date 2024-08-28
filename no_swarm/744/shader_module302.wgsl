struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -639f;

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1782f, -1186f, 487f), vec3<f32>(-385f, 1467f, -1150f), vec3<f32>(-784f, 1324f, 248f), vec3<f32>(1392f, 719f, -651f), vec3<f32>(1288f, -728f, -1874f), vec3<f32>(1958f, -229f, -369f), vec3<f32>(1548f, 1508f, -257f), vec3<f32>(-603f, -1000f, -764f), vec3<f32>(514f, 671f, 698f), vec3<f32>(484f, -781f, -1103f), vec3<f32>(-1427f, 287f, 393f), vec3<f32>(-648f, -680f, 694f), vec3<f32>(-371f, 1570f, -298f), vec3<f32>(240f, 842f, -404f), vec3<f32>(-533f, -1355f, -459f), vec3<f32>(-970f, -440f, -1000f), vec3<f32>(-251f, 1000f, -946f), vec3<f32>(890f, 1470f, 693f), vec3<f32>(852f, -271f, -674f), vec3<f32>(-1045f, -192f, -458f));

var<private> global2: array<Struct_1, 13>;

var<private> global3: u32 = 34887u;

var<private> global4: array<vec4<i32>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = ~firstLeadingBit(~vec3<u32>(18472u, ~u_input.c, u_input.d));
    var var_1 = select(reverseBits(countOneBits(u_input.d)), 0u, !arg_2 & (arg_2 || true));
    let var_2 = global2[_wgslsmith_index_u32(58609u, 13u)];
    let var_3 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 0u, u_input.c, var_0.x) ^ vec4<u32>(59614u, var_0.x, u_input.d, var_2.a.x)), vec4<u32>(0u, select(4294967295u, u_input.d, false), 7487u, u_input.d | 7666u)), _wgslsmith_mult_u32(~reverseBits(u_input.d), 0u)), arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
    let var_4 = 24318u & ~countOneBits(~abs(var_2.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, arg_1.x)));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0.a;
    var_0 = ~reverseBits(arg_0.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c))));
    var_0 = arg_0.a;
    let var_1 = vec4<f32>(-575f, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(20562i, _wgslsmith_div_vec3_f32(vec3<f32>(264f, 910f, -1306f), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_0.x, 20u)])), true))), 971f);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -469f, -659f, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1222f, arg_0.c, var_1.x, 769f)), _wgslsmith_f_op_vec4_f32(ceil(var_1)), select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(true, true, arg_0.b, false)))), !(false | arg_0.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(var_1)))) * var_1)), var_1));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<vec3<f32>, 20>();
    global0 = arg_0;
    let var_0 = global2[_wgslsmith_index_u32(arg_2.x, 13u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~(~abs(u_input.d))), ~var_0.a.x), 13u)];
    var var_2 = global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(0u, u_input.c)), ~firstTrailingBit(var_1.a.x)) ^ ~12658u), 13u)];
    return global2[_wgslsmith_index_u32(1u, 13u)];
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 13>();
    var var_0 = vec3<u32>(~(6283u | u_input.c) >> (~1u % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, 45223u), vec3<u32>(u_input.d, u_input.d, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d))), _wgslsmith_sub_u32(countOneBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 38505u, u_input.c, 4294967295u), vec4<u32>(u_input.d, u_input.c, u_input.c, 4294967295u))) ^ u_input.d) | ~(((vec3<u32>(u_input.d, u_input.c, u_input.d) & vec3<u32>(4533u, 0u, u_input.d)) ^ min(vec3<u32>(25986u, 1u, u_input.c), vec3<u32>(0u, u_input.c, 0u))) ^ (~vec3<u32>(u_input.c, u_input.d, u_input.d) & vec3<u32>(4460u, u_input.d, 15611u)));
    let var_1 = func_4(368f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.x), var_0.xx), true, _wgslsmith_f_op_f32(select(651f, 153f, true))))))), vec3<u32>(~0u, abs(_wgslsmith_mod_u32(~0u, u_input.c >> (1u % 32u))), 4294967295u));
    let var_2 = -334f;
    let var_3 = Struct_1(vec2<u32>(countOneBits(reverseBits(5189u) ^ ~var_1.a.x), ~var_0.x & ~(var_0.x >> (0u % 32u))), var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(177f + _wgslsmith_f_op_f32(f32(-1f) * -722f)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -305f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) - -1000f);
    global3 = u_input.c;
    let var_0 = Struct_1(select(~(~select(vec2<u32>(17260u, u_input.c), vec2<u32>(46581u, u_input.c), true)), func_4(190f, vec4<f32>(_wgslsmith_f_op_f32(abs(-407f)), -513f, _wgslsmith_f_op_f32(-1000f * -592f), _wgslsmith_f_op_f32(f32(-1f) * -1076f)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 1u, u_input.c), firstLeadingBit(vec3<u32>(0u, 202u, 57543u)))).a, select(vec2<bool>(select(false, false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), vec2<bool>(true, false)), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1587f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185f - -576f)))));
    let var_1 = 1u;
    global4 = array<vec4<i32>, 13>();
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 450f) * vec2<f32>(var_0.c, -1053f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(413f, 813f), vec2<f32>(3251f, -1208f), vec2<bool>(true, var_0.b)))))), select(41764u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1, 0u, 0u, 0u), vec4<u32>(var_1, u_input.d, var_0.a.x, var_1), vec4<bool>(var_0.b, false, false, true)), vec4<u32>(u_input.d, u_input.d, var_1, var_1) & vec4<u32>(4294967295u, 0u, 70977u, 1u)), max(firstLeadingBit(83326u), _wgslsmith_mod_u32(1u, 28027u)), 1u), var_0.b), u_input.a, vec3<i32>(u_input.a & ~(-1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(firstLeadingBit(48216u), 13u)], ~vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i)), -max(u_input.a, -1i)), -1i));
}

