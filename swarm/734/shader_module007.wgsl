struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(9280u, 5862u, 4294967295u), vec3<u32>(19110u, 1u, 4294967295u), vec3<u32>(62607u, 4294967295u, 58171u), vec3<u32>(45818u, 1u, 24260u), vec3<u32>(23748u, 0u, 4294967295u), vec3<u32>(0u, 10528u, 27469u), vec3<u32>(4294967295u, 4294967295u, 14421u), vec3<u32>(11408u, 29239u, 31379u), vec3<u32>(18312u, 46352u, 79319u), vec3<u32>(0u, 0u, 104374u), vec3<u32>(1u, 4294967295u, 28028u), vec3<u32>(63882u, 73761u, 18338u), vec3<u32>(0u, 17934u, 7933u), vec3<u32>(20295u, 44269u, 0u), vec3<u32>(31815u, 44699u, 1u), vec3<u32>(4294967295u, 75489u, 0u), vec3<u32>(1u, 0u, 11915u), vec3<u32>(4294967295u, 0u, 54757u), vec3<u32>(0u, 64529u, 32351u), vec3<u32>(47978u, 0u, 0u), vec3<u32>(1u, 64319u, 1u), vec3<u32>(1u, 24762u, 38450u), vec3<u32>(61346u, 4294967295u, 21061u), vec3<u32>(33276u, 22344u, 71485u), vec3<u32>(50840u, 48101u, 13589u), vec3<u32>(56019u, 0u, 14292u), vec3<u32>(1u, 28389u, 1u), vec3<u32>(3702u, 1u, 39162u), vec3<u32>(24081u, 35698u, 33916u), vec3<u32>(0u, 51395u, 4294967295u), vec3<u32>(85147u, 60460u, 0u));

var<private> global1: array<f32, 29> = array<f32, 29>(-418f, 1884f, -1354f, 994f, -1639f, 1810f, -1000f, -1604f, 1050f, 131f, -1397f, 1662f, 859f, 1071f, 225f, 1110f, -149f, 140f, 316f, -289f, -678f, 927f, 446f, -882f, 652f, -333f, 1000f, -1000f, -963f);

var<private> global2: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global2 = _wgslsmith_f_op_f32(888f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 29u)] * global1[_wgslsmith_index_u32(u_input.c.x, 29u)]) * global1[_wgslsmith_index_u32(u_input.c.x, 29u)])));
    global0 = array<vec3<u32>, 31>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 1u, 1u, ~u_input.c.x)), select(~vec4<u32>(0u, u_input.c.x, u_input.c.x, 39351u), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(71184u, 1u, 25174u, u_input.c.x)), u_input.c), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)) & ~firstTrailingBit(u_input.c)), 29u)];
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(~24707i, -arg_0, _wgslsmith_div_i32(u_input.b, u_input.d.x), arg_0 | u_input.d.x), _wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, arg_1, u_input.d.x, u_input.d.x)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, arg_1, u_input.d.x, arg_1), vec4<i32>(arg_0, arg_0, arg_0, 0i)), -vec4<i32>(u_input.b, u_input.a.x, 0i, u_input.a.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))))));
    var var_2 = Struct_1(select(true, (u_input.c.x <= firstTrailingBit(4294967295u)) != true, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zyw, vec3<u32>(u_input.c.x, 1u, u_input.c.x)), 29u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)]), global1[_wgslsmith_index_u32(~4294967295u, 29u)]))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 959f, -882f) * vec3<f32>(-1107f, 895f, -921f))))))), (~vec4<u32>(u_input.c.x, 4294967295u, 17520u, 1u) & _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(38511u, u_input.c.x, u_input.c.x, 73744u), vec4<u32>(1u, 138864u, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec4_u32(u_input.c, u_input.c))) | vec4<u32>(0u, 62852u, 1u, select(~109u, u_input.c.x, true)), vec4<i32>(_wgslsmith_mult_i32(-50239i, -(2147483647i << (u_input.c.x % 32u))), u_input.d.x, ~u_input.b, 0i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1521f, 786f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(334f, global1[_wgslsmith_index_u32(12331u, 29u)])), global1[_wgslsmith_index_u32(~1u, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(957f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)])))))));
    return reverseBits(u_input.c.x << (340u % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(!any(vec2<bool>(!arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1144f, -886f, -776f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 456f, -493f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * -787f), -1399f, _wgslsmith_f_op_f32(abs(-459f))))), vec4<u32>(37868u, _wgslsmith_mult_u32(u_input.c.x, func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_2.x), u_input.a), _wgslsmith_add_i32(-42216i, 9673i))), u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(39294u, 0u, 1u), ~global0[_wgslsmith_index_u32(1u, 31u)]) ^ u_input.c.x), vec4<i32>(_wgslsmith_mod_i32(1i | arg_2.x, 71512i), 44186i | abs(u_input.b), arg_2.x, ~(~_wgslsmith_div_i32(u_input.d.x, arg_2.x))), arg_0);
    global2 = -1491f;
    var var_2 = all(select(select(!(!vec4<bool>(arg_1, arg_1, var_1.a, false)), !vec4<bool>(true, arg_1, arg_1, false), var_1.a), select(vec4<bool>(any(vec3<bool>(arg_1, var_1.a, arg_1)), !arg_1, -504f < global1[_wgslsmith_index_u32(7998u, 29u)], any(vec4<bool>(true, var_1.a, arg_1, false))), !(!vec4<bool>(arg_1, var_1.a, false, false)), !vec4<bool>(var_1.a, var_1.a, false, arg_1)), var_1.a != any(select(vec3<bool>(arg_1, var_1.a, true), vec3<bool>(var_1.a, true, arg_1), var_1.a))));
    var var_3 = any(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, var_1.a), select(vec3<bool>(var_1.a, false, false), vec3<bool>(false, true, var_1.a), vec3<bool>(true, var_1.a, arg_1)))), any(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(var_1.a, arg_1), vec2<bool>(arg_1, false))), false));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 270f, arg_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 279f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(7580u, 29u)], -602f))) - _wgslsmith_f_op_vec3_f32(-var_1.b)))))));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = Struct_1(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)]) * vec3<f32>(-653f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 1324f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec3<f32>(1050f, 962f, 2319f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(159f, 1649f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], -1329f, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(-956f, global1[_wgslsmith_index_u32(4294967295u, 29u)], 204f, global1[_wgslsmith_index_u32(32155u, 29u)]), arg_0, vec4<i32>(1i, -34919i, u_input.d.x, u_input.b))))))), _wgslsmith_clamp_vec4_u32(u_input.c, ~u_input.c | vec4<u32>(_wgslsmith_add_u32(1u, 61054u), u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), vec4<u32>(u_input.c.x, 73851u, 26101u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c.x), select(vec3<u32>(67704u, u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 31u)], true)))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1151i, -1i), firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(u_input.b, u_input.b, 49319i), -2147483647i), vec4<i32>(abs(u_input.d.x), max(u_input.b, 31534i), 0i, max(-1i, u_input.a.x)), firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.d.x)) << (reverseBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 29u)] * global1[_wgslsmith_index_u32(44687u, 29u)])), _wgslsmith_f_op_f32(749f + -1842f), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 719f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], -1938f))), true, min(vec4<i32>(82860i, 18536i, u_input.a.x, -2147483647i), vec4<i32>(u_input.b, 1i, -1i, 0i)))).x, _wgslsmith_f_op_f32(max(-374f, _wgslsmith_f_op_f32(ceil(1098f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-619f, -1000f, _wgslsmith_f_op_f32(abs(-681f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 29u)] * global1[_wgslsmith_index_u32(52437u, 29u)])))));
    global0 = array<vec3<u32>, 31>();
    let var_1 = var_0;
    let var_2 = !(!select(vec2<bool>(false, arg_0), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, var_1.a), arg_0), all(vec3<bool>(var_0.a, var_0.a, true))), !(!var_0.a)));
    var var_3 = var_0.c.x;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x != 15497i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, 412f, -236f)))), abs(u_input.c) << (_wgslsmith_add_vec4_u32(~(~u_input.c), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(30537u, 1u, 18021u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 51746u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(func_1(true), u_input.d.x), u_input.d.x >> (3073u % 32u), firstTrailingBit(-1i), 3446i) << (~min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 60572u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 67900u, u_input.c.x)), u_input.c ^ u_input.c) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(1346f, 1436f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(42915u, 29u)], global1[_wgslsmith_index_u32(42671u, 29u)]), _wgslsmith_div_f32(1193f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 2617f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec4<f32>(global1[_wgslsmith_index_u32(14954u, 29u)], 1172f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)]) - vec4<f32>(-262f, 912f, global1[_wgslsmith_index_u32(4294967295u, 29u)], 1258f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2695f, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])))))));
    var var_1 = countOneBits(~max(vec4<u32>(39527u, u_input.c.x, 3778u, u_input.c.x), var_0.c)) >> (_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 21358u) | vec4<u32>(var_0.c.x, 69289u, var_0.c.x, var_0.c.x), vec4<u32>(~u_input.c.x, var_0.c.x, 21450u, var_0.c.x)), _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.c.x, 101934u, 2928u, 82664u), vec4<u32>(u_input.c.x, 51275u, var_0.c.x, 1u)), u_input.c)) % vec4<u32>(32u));
    var var_2 = ~vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(~select(global0[_wgslsmith_index_u32(1u, 31u)], vec3<u32>(var_1.x, 4294967295u, 4294967295u), vec3<bool>(true, var_0.a, false)), vec3<u32>(var_1.x, u_input.c.x, var_0.c.x) >> (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_0.c.x, var_0.c.x), 31u)] % vec3<u32>(32u))), _wgslsmith_mult_u32(u_input.c.x, min(firstLeadingBit(43380u), u_input.c.x)));
    var var_3 = !var_0.a;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, var_0.b)), u_input.c, firstTrailingBit(-(~vec4<i32>(3496i, 45192i, var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29770u, 29u)]), 194f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24335u, 29u)] - 1279f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.wwx, vec3<u32>(u_input.c.x, 4294967295u, 5989u)), 29u)]))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(285f, 226f), _wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28079u, 29u)]), _wgslsmith_f_op_f32(min(var_0.b.x, 329f)))))));
    let var_4 = !select(select(!(!vec3<bool>(false, true, var_0.a)), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a), true), vec3<bool>(1012f < global1[_wgslsmith_index_u32(var_2.x, 29u)], var_0.a != var_0.a, true)), !(!select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, true))), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) >= select(var_2.x << (30508u % 32u), var_2.x, false));
    var var_5 = Struct_1(!(!(-14015i < (-1i & var_0.d.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-513f)), var_0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))))), ~(vec4<u32>(var_0.c.x, ~4294967295u, u_input.c.x, ~31538u) & vec4<u32>(~1u, min(17019u, var_2.x), var_2.x & 20686u, u_input.c.x)), ~(var_0.d ^ ~var_0.d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(-var_0.e))))));
    var_5 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b, var_5.b)))))), u_input.c, vec4<i32>(2147483647i, ~_wgslsmith_dot_vec2_i32(abs(var_0.d.yw), var_0.d.xx), var_5.d.x, -1i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_0.e, var_0.e, !(global1[_wgslsmith_index_u32(1u, 29u)] == -264f))))));
    let x = u_input.a;
    s_output = StorageBuffer(14728i);
}

