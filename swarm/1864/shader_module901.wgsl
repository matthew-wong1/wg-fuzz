struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> f32 {
    global1 = max(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, arg_0.c.b)), vec2<i32>(u_input.a, u_input.a)), abs(_wgslsmith_mod_i32(-1i, arg_0.c.b)))), -firstLeadingBit(-_wgslsmith_mod_i32(arg_0.c.b, 33925i)));
    global1 = -((i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.b, -11985i), vec2<i32>(2147483647i, -2147483647i))) >> (max(_wgslsmith_mult_u32(82971u, 0u), ~1u) % 32u));
    var var_0 = Struct_1(arg_0.c.a, -2147483647i);
    let var_1 = Struct_1(arg_0.c.a, _wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.a, u_input.b, 2248i), ~vec3<i32>(arg_0.c.b, -31756i, var_0.b)), vec3<i32>(-42625i, -max(26950i, var_0.b), firstTrailingBit(max(-39420i, arg_0.c.b)))));
    global1 = i32(-1i) * -var_1.b;
    return -1403f;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<bool> {
    global1 = 1i;
    global1 = -33673i;
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-839f, _wgslsmith_f_op_f32(-618f - 837f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1123f, -519f, arg_0.b.x)))), _wgslsmith_f_op_f32(func_3(arg_0, firstLeadingBit(global0[_wgslsmith_index_u32(63537u, 7u)]), Struct_2(0u), 0u))))));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = arg_0;
    return arg_1.wwx;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mod_u32(arg_3, arg_0.c.a.x)), 35428u) >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(23615u, global0[_wgslsmith_index_u32(arg_0.d, 7u)], 1u, global0[_wgslsmith_index_u32(0u, 7u)]))), ~(~vec4<u32>(34992u, arg_2.x, 1u, 36550u))), 7u)], arg_1, arg_0.b.x);
    global0 = array<u32, 7>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1734f))), 278f) + -2067f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-246f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -693f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1382f * 380f) - _wgslsmith_f_op_f32(f32(-1f) * -222f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1175f)))));
    global0 = array<u32, 7>();
    var var_2 = var_0;
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 10283u, arg_2.x), arg_0.c.a), -2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    global1 = 26160i;
    let var_0 = func_4(Struct_3(arg_0, select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), func_2(Struct_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 7u)], 7u)], 7u)], vec3<bool>(true, false, false), Struct_1(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(0u, 7u)], 86630u, 11018u), u_input.a), global0[_wgslsmith_index_u32(63676u, 7u)]), vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 7u)], 7u)], global0[_wgslsmith_index_u32(1609u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 1u), 12723i)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), false), Struct_1(vec4<u32>(4294967295u, 24259u, arg_0, global0[_wgslsmith_index_u32(arg_0, 7u)]) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 34528u, 1u, 0u), vec4<u32>(arg_0, arg_0, global0[_wgslsmith_index_u32(65229u, 7u)], 0u)) % vec4<u32>(32u)), u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 7u)], 1u), vec2<u32>(arg_0, global0[_wgslsmith_index_u32(0u, 7u)]))), 7u)]), false, select(_wgslsmith_clamp_vec2_u32(~min(vec2<u32>(21060u, arg_0), vec2<u32>(global0[_wgslsmith_index_u32(72757u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52517u, 7u)], 7u)], 7u)])), ~min(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 45084u)), max(vec2<u32>(arg_0, 118978u), vec2<u32>(9068u, 90249u) >> (vec2<u32>(9319u, arg_0) % vec2<u32>(32u)))), ~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(16337u, 25635u)), select(vec2<u32>(1u, global0[_wgslsmith_index_u32(arg_0, 7u)]), vec2<u32>(arg_0, arg_0), false)), select(vec2<bool>(arg_0 != 10127u, all(vec3<bool>(true, false, true))), vec2<bool>(true, true), !func_2(Struct_3(global0[_wgslsmith_index_u32(arg_0, 7u)], vec3<bool>(false, true, true), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 7u)], arg_0, 1u, arg_0), u_input.b), 1212u), vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 7u)], 1u, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(arg_0, 7u)]), u_input.a)).xx)), 4294967295u);
    var var_1 = !(!(!func_2(Struct_3(2770u, vec3<bool>(false, false, true), Struct_1(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(119202u, 7u)], 7u)], 11941u, 26199u), var_0.b), var_0.a.x), vec4<bool>(true, false, false, true), Struct_1(var_0.a, 1694i)).xx));
    var_1 = vec2<bool>(var_1.x, var_1.x);
    let var_2 = false;
    return Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 7u)], 2886u, var_0.a.x)) << (var_0.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], var_0.a.x, arg_0), var_0.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, 0u, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<u32>(0u, 14035u, 4294967295u, 5134u)) & var_0.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    var var_0 = func_2(Struct_3(func_4(Struct_3(54358u, !vec3<bool>(arg_0.b.x, arg_0.b.x, false), Struct_1(vec4<u32>(arg_1.a, 1u, arg_1.a, arg_1.a), 7517i), arg_1.a), arg_0.b.x, ~vec2<u32>(global0[_wgslsmith_index_u32(arg_0.c.a.x, 7u)], 45097u), ~arg_0.d).a.x, !select(select(arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, true), arg_0.b.x), arg_0.b, false), Struct_1(vec4<u32>(_wgslsmith_mult_u32(arg_0.d, 25022u), arg_0.a, 11246u, ~12819u), 59758i), 60608u), !(!vec4<bool>(true, arg_0.b.x, true, !arg_0.b.x)), arg_0.c).yy;
    var var_1 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i ^ u_input.a, -12844i, arg_0.c.b), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_0.c.b, 2147483647i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, arg_2), vec3<i32>(arg_0.c.b, arg_2, arg_0.c.b)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, u_input.b, arg_2), vec3<i32>(u_input.a, arg_0.c.b, arg_0.c.b)), vec3<i32>(arg_2, -65568i, 26050i)) ^ (vec3<i32>(-1i) * -vec3<i32>(-33374i, arg_0.c.b, arg_2)));
    global0 = array<u32, 7>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(min(1090f, _wgslsmith_f_op_f32(-1023f + 328f))))));
    let var_3 = 8517i;
    return arg_0.b;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_i32(arg_0, u_input.b);
    global1 = _wgslsmith_mult_i32(func_4(Struct_3(0u, !arg_2, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43083u, 7u)], 7u)], 7u)], 7u)], 7u)], 18024u, global0[_wgslsmith_index_u32(4800u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70116u, 7u)], 7u)], 7u)]) & vec4<u32>(0u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5857u, 7u)], 7u)]), 2147483647i), 43661u), false, func_4(Struct_3(~63917u, !arg_2, func_4(Struct_3(global0[_wgslsmith_index_u32(1u, 7u)], vec3<bool>(arg_2.x, arg_2.x, false), Struct_1(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56027u, 7u)], 7u)], 7u)], 55968u, 45769u), -1i), global0[_wgslsmith_index_u32(0u, 7u)]), arg_2.x, vec2<u32>(1u, 1u), 1610u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]), (false && arg_2.x) | (global0[_wgslsmith_index_u32(1122u, 7u)] > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51148u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 4294967295u).a.zw, ~1u).b, func_4(Struct_3(min(global0[_wgslsmith_index_u32(15059u, 7u)], 38960u), select(vec3<bool>(arg_2.x, false, false), vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false)), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 1u, 30229u, 91718u), arg_0), ~1u), any(vec4<bool>(true, arg_2.x, true, arg_2.x)), select(~vec2<u32>(71970u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77336u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44155u, 7u)], 7u)]) << (vec2<u32>(4294967295u, 460u) % vec2<u32>(32u)), any(vec4<bool>(arg_2.x, arg_2.x, false, true))), global0[_wgslsmith_index_u32(0u, 7u)]).b | 56269i);
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1))));
    var var_2 = firstLeadingBit(64108u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f - 728f)) * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    global0 = array<u32, 7>();
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(abs(~u_input.a), u_input.a & (i32(-1i) * -4897i))), u_input.b);
    var var_1 = select(var_0.x & _wgslsmith_mult_i32(-39393i, 1i), 18094i, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(~(~var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(490f))), !func_5(Struct_3(global0[_wgslsmith_index_u32(5295u, 7u)], vec3<bool>(false, true, true), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 53787u, global0[_wgslsmith_index_u32(20880u, 7u)], 921u), -19185i), 0u), func_1(global0[_wgslsmith_index_u32(7430u, 7u)], vec2<f32>(-539f, -1601f)), u_input.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) + _wgslsmith_f_op_f32(781f - 1100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(623f))), _wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(19661u, 7u)], vec3<bool>(true, true, false), Struct_1(vec4<u32>(83599u, 0u, global0[_wgslsmith_index_u32(879u, 7u)], 1u), u_input.a), 1u), ~4294967295u, Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19215u, 7u)], 7u)], 7u)], 7u)], 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52245u, 7u)], 7u)], 7u)], 7u)], 112325u), 7u)])), -546f)));
    var var_3 = Struct_1(vec4<u32>(1u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~5895u, 7u)], 19188u, select(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(1176u, 7u)], 7762u, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(17357u, 7u)], 4294967295u, 32322u, global0[_wgslsmith_index_u32(1u, 7u)])), true)), ~global0[_wgslsmith_index_u32(min(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)]), select(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77386u, 7u)], 7u)], 7u)], 7u)], true)), 7u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 7u)], 1u)), -var_0.x);
    var var_4 = func_4(Struct_3(1u, func_5(Struct_3(~global0[_wgslsmith_index_u32(36320u, 7u)], vec3<bool>(true, true, true), func_4(Struct_3(var_3.a.x, vec3<bool>(true, true, true), Struct_1(vec4<u32>(12659u, 0u, var_3.a.x, 1u), var_0.x), 0u), false, vec2<u32>(7297u, var_3.a.x), var_3.a.x), ~var_3.a.x), func_1(1u, _wgslsmith_f_op_vec2_f32(abs(var_2.yz))), _wgslsmith_clamp_i32(-1i, 0i, -44356i) >> (abs(35783u) % 32u)), Struct_1(vec4<u32>(~global0[_wgslsmith_index_u32(76561u, 7u)], 1u, firstLeadingBit(global0[_wgslsmith_index_u32(12344u, 7u)]), 1u | var_3.a.x), -1i), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.a.x, 7u)], 7u)], 7u)], 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(17833u, 7u)], 47646u, global0[_wgslsmith_index_u32(92771u, 7u)]))) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], var_3.a.x, var_3.a.x, 2162u), var_3.a), 7u)]), !(!(~var_3.b != 499i)), func_4(Struct_3(~var_3.a.x, func_2(Struct_3(global0[_wgslsmith_index_u32(83086u, 7u)], vec3<bool>(true, false, false), Struct_1(var_3.a, u_input.a), global0[_wgslsmith_index_u32(11510u, 7u)]), vec4<bool>(true, true, false, false), func_4(Struct_3(var_3.a.x, vec3<bool>(false, true, false), Struct_1(vec4<u32>(36632u, 4294967295u, 4294967295u, var_3.a.x), -1i), 4294967295u), false, vec2<u32>(var_3.a.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), 4294967295u)), Struct_1(~vec4<u32>(var_3.a.x, global0[_wgslsmith_index_u32(var_3.a.x, 7u)], var_3.a.x, var_3.a.x), -29392i), _wgslsmith_div_u32(var_3.a.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] % 32u), global0[_wgslsmith_index_u32(var_3.a.x, 7u)])), any(vec2<bool>(41006u != var_3.a.x, true)), var_3.a.wy, ~(~1u) & (_wgslsmith_dot_vec2_u32(var_3.a.zy, vec2<u32>(101417u, 0u)) ^ global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_3.a.x), 7u)])).a.yw, ~7543u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f - -1241f)))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0, vec2<i32>(var_0.x, var_4.b)), var_0 >> (vec2<u32>(var_4.a.x, var_3.a.x) % vec2<u32>(32u))), _wgslsmith_mult_i32(firstLeadingBit(2147483647i), max(-61160i, -1i))), vec2<i32>(~countOneBits(-2147483647i), 8870i)));
}

