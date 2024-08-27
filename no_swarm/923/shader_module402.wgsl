struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-723f, -1641f, 921f), vec3<f32>(583f, -165f, 1801f), vec3<f32>(1000f, -1144f, -1574f), vec3<f32>(-1464f, 440f, 487f), vec3<f32>(2175f, -325f, -179f), vec3<f32>(-1347f, 177f, -984f), vec3<f32>(-793f, -292f, -946f), vec3<f32>(305f, -160f, -369f), vec3<f32>(1215f, -467f, -188f), vec3<f32>(252f, 1180f, 507f));

var<private> global1: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<vec3<f32>, 10>();
    global1 = Struct_3(~global1.a, _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(global1.b, global1.b), -(~vec3<i32>(42435i, arg_0.a, global1.c.a))), Struct_1(5306i, firstTrailingBit(_wgslsmith_clamp_u32(~4885u, 19361u, 0u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1627f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) - _wgslsmith_div_f32(-218f, 264f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(1000f - 900f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1482f + arg_0.c.x))), ~global1.d);
    let var_0 = select(global1.c.d, !(!(all(vec3<bool>(arg_0.d, global1.c.d, arg_0.d)) | global1.c.d)), true);
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    return ~(-(~abs(global1.b.x)));
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global1 = Struct_3(firstTrailingBit(global1.a & global1.a), max(vec3<i32>(func_3(global1.c, 5590u), 2147483647i, -2147483647i), -global1.b << (abs(global1.a.zyw) % vec3<u32>(32u))) ^ -_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 1i), -vec3<i32>(51013i, u_input.a, -6854i)), Struct_1(_wgslsmith_mult_i32(firstLeadingBit(global1.c.a), u_input.a), ~_wgslsmith_dot_vec3_u32(~global1.a.xyy, select(global1.a.wwx, vec3<u32>(30205u, 83309u, 4294967295u), vec3<bool>(false, false, global1.c.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b ^ global1.d.x, 10u)]) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(sign(global1.c.c.x)), _wgslsmith_f_op_f32(-1562f * 175f))), !(!global1.c.d)), global1.a.yz);
    global1 = Struct_3(vec4<u32>(select(global1.d.x, 1u, global1.c.d), global1.a.x, _wgslsmith_sub_u32(global1.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, u_input.b, global1.d.x, 65229u), vec4<u32>(u_input.b, global1.a.x, 33288u, 19739u)), min(u_input.b, 1u))), u_input.b), _wgslsmith_div_vec3_i32(global1.b, -(~(-global1.b))), Struct_1(u_input.a, _wgslsmith_div_u32(~u_input.b, firstTrailingBit(0u >> (u_input.b % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.b, 10u)], vec3<f32>(346f, global1.c.c.x, -214f), vec3<bool>(arg_0, arg_0, true))) + _wgslsmith_f_op_vec3_f32(step(global1.c.c, vec3<f32>(global1.c.c.x, 535f, 415f))))), arg_0), ~vec2<u32>(~(u_input.b & 3862u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1.d.x, global1.d.x, global1.c.b) | vec4<u32>(24387u, u_input.b, global1.d.x, 40597u), ~vec4<u32>(4294967295u, 4294967295u, u_input.b, 17211u))));
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_div_u32(36425u, _wgslsmith_sub_u32(reverseBits(~global1.a.x) << (u_input.b % 32u), abs(~min(u_input.b, var_0))));
    let var_2 = Struct_5(Struct_3(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 78817u, 39387u, 1u), global1.a) << (~vec4<u32>(1u, global1.d.x, var_0, 0u) % vec4<u32>(32u)), select(global1.a, global1.a, global1.c.d && false)), vec3<i32>(-global1.c.a | _wgslsmith_clamp_i32(2147483647i, u_input.a, 10503i), min(-24574i, ~1i), -19847i), Struct_1(90616i, 51078u, global1.c.c, true), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(~global1.c.b, 4294967295u))), Struct_2(global1.c, global1.b, var_0, true), global1.b.x, global1.a, Struct_1(u_input.a, ~((1u | var_0) ^ min(u_input.b, 1u)), vec3<f32>(-1768f, global1.c.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c.c.x), _wgslsmith_f_op_f32(-global1.c.c.x)))), false || all(!vec2<bool>(arg_0, global1.c.d))));
    return max(var_2.d, ~var_2.d);
}

fn func_1() -> f32 {
    let var_0 = Struct_5(Struct_3(func_2(0u != (global1.a.x << (global1.c.b % 32u))), vec3<i32>(0i, global1.b.x, u_input.a), global1.c, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), 1u), ~(~1u))), Struct_2(Struct_1(_wgslsmith_sub_i32(1i, u_input.a), ~u_input.b ^ ~63459u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)]) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-549f, global1.c.c.x, 859f), global0[_wgslsmith_index_u32(global1.d.x, 10u)]))), global1.c.d), global1.b, 0u, global1.c.d), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.c.a, -2147483647i), _wgslsmith_div_i32(select(u_input.a, 18801i, global1.c.d), ~(-2147483647i))), ~vec4<u32>(u_input.b, ~(~4294967295u), global1.a.x, _wgslsmith_div_u32(u_input.b, global1.c.b)), global1.c);
    global1 = Struct_3(~select(func_2(false), ~global1.a ^ vec4<u32>(4294967295u, var_0.e.b, var_0.e.b, 39879u), all(select(vec4<bool>(false, global1.c.d, true, var_0.b.d), vec4<bool>(true, false, var_0.e.d, false), true))), ~var_0.b.b, Struct_1(-2147483647i, u_input.b, vec3<f32>(-143f, var_0.b.a.c.x, 222f), !(!var_0.e.d) & true), max(_wgslsmith_div_vec2_u32(global1.d, vec2<u32>(reverseBits(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.a.x, var_0.b.a.b), vec3<u32>(var_0.a.c.b, global1.a.x, 19375u)))), func_2(true).ww));
    let var_1 = 1u;
    let var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, 2147483647i, 5953i), 1i), (var_0.b.a.a << (6561u % 32u)) ^ u_input.a, -45093i), abs(abs(~(vec4<i32>(u_input.a, 26550i, 0i, global1.b.x) & vec4<i32>(-2147483647i, 37983i, -24586i, 59942i)))));
    let var_3 = !all(!vec4<bool>(var_0.e.d, global1.c.d, true & var_0.b.a.d, global1.c.d | false));
    return -369f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.c, vec3<i32>(-18258i, global1.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-31248i, u_input.a, _wgslsmith_div_i32(-1i, 16492i)), global1.b & vec3<i32>(u_input.a, -826i, 34205i))), global1.a.x, false);
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    let var_1 = global1.c.c.x;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.c.x, var_2, 613f, -939f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 1739f, var_2, var_0.a.c.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 982f, 3559f, -640f))))))), func_2(any(select(select(vec3<bool>(global1.c.d, var_0.d, false), vec3<bool>(true, var_0.d, true), true), select(vec3<bool>(var_0.a.d, false, false), vec3<bool>(global1.c.d, false, true), vec3<bool>(false, var_0.a.d, true)), var_0.d))), abs(u_input.b), global1.c.c.x);
}

