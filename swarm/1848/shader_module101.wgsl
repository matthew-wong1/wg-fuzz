struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 30> = array<f32, 30>(-309f, 181f, -713f, -1424f, -1819f, -593f, 747f, 173f, 646f, 1000f, 869f, -264f, 1338f, -131f, 1522f, 1000f, -405f, -1221f, 119f, -401f, 319f, 1664f, 116f, -847f, 1360f, -680f, -725f, -979f, 524f, -414f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<i32>(34053i, -15781i)), Struct_2(vec2<i32>(6550i, -8841i)), Struct_2(vec2<i32>(0i, 0i)), Struct_2(vec2<i32>(2147483647i, -1i)), Struct_2(vec2<i32>(45009i, -1i)), Struct_2(vec2<i32>(0i, 1i)), Struct_2(vec2<i32>(1i, -32261i)), Struct_2(vec2<i32>(13979i, 0i)), Struct_2(vec2<i32>(-22753i, 2147483647i)), Struct_2(vec2<i32>(1i, 0i)), Struct_2(vec2<i32>(0i, 76840i)), Struct_2(vec2<i32>(i32(-2147483648), 71023i)), Struct_2(vec2<i32>(14708i, 2147483647i)), Struct_2(vec2<i32>(0i, -28244i)), Struct_2(vec2<i32>(-9753i, 23043i)), Struct_2(vec2<i32>(0i, 0i)), Struct_2(vec2<i32>(-17524i, 43351i)), Struct_2(vec2<i32>(2147483647i, -41275i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global1 = array<f32, 30>();
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, -var_0) | _wgslsmith_div_i32(reverseBits(var_0 ^ -1553i), -25258i), _wgslsmith_clamp_i32(56132i, ~reverseBits(-1i) | var_0, 1i));
    return 1i;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_3();
    global1 = array<f32, 30>();
    var var_1 = max(~(~(arg_3.a.yw << (_wgslsmith_sub_vec2_u32(global2.a.yx, arg_3.a.zy) % vec2<u32>(32u)))), vec2<u32>(abs(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(global2.a.x, 4294967295u), 39944u)), ~arg_3.a.x));
    var var_2 = Struct_3(vec4<u32>(~(~firstLeadingBit(0u)), (_wgslsmith_dot_vec2_u32(arg_3.a.wz, arg_3.a.wz) ^ select(global2.a.x, 4294967295u, arg_0.x)) ^ 1u, _wgslsmith_div_u32(abs(~arg_3.a.x), 1u), 4294967295u), firstLeadingBit(select(_wgslsmith_dot_vec3_i32(u_input.c, ~vec3<i32>(10190i, -2147483647i, 14329i)), _wgslsmith_dot_vec3_i32(vec3<i32>(21574i, var_0, arg_2.a.x), vec3<i32>(2318i, var_0, -2147483647i)) << (var_1.x % 32u), all(select(vec3<bool>(false, true, true), arg_0.ywx, vec3<bool>(arg_1, arg_0.x, false))))));
    let var_3 = Struct_3(reverseBits(~vec4<u32>(1u << (arg_3.a.x % 32u), 0u, ~4294967295u, firstLeadingBit(47668u))), -43231i);
    return Struct_1(~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_3.a.x, var_2.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 0u, 0u), var_2.a.wzw)), var_1.x, 4294967295u, var_3.a.x), max(var_3.a.x, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(46682u, 0u), vec2<u32>(var_3.a.x, global2.b))), var_2.a.xw)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), 1263f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1293f) * vec2<f32>(1053f, 836f)))))));
    let var_1 = true && (108775u < ((~1u << (arg_1.b % 32u)) | 1u));
    var var_2 = select(_wgslsmith_clamp_i32(-31983i, u_input.c.x, _wgslsmith_add_i32(-2147483647i, arg_2.x)) | (-1i | u_input.b.x), ~(arg_2.x ^ 0i), all(vec3<bool>(true, true, true))) << (_wgslsmith_mod_u32(~global2.a.x, arg_1.a.x) % 32u);
    let var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, -137f, global1[_wgslsmith_index_u32(arg_1.a.x, 30u)], -1000f) + vec4<f32>(global1[_wgslsmith_index_u32(global2.a.x, 30u)], arg_0, -882f, arg_3)), vec4<f32>(arg_3, global1[_wgslsmith_index_u32(global2.b, 30u)], 985f, global1[_wgslsmith_index_u32(0u, 30u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.a.x, 30u)], arg_0, 912f, arg_3) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1019f, var_0.x, arg_3)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, var_0.x, var_0.x) - vec4<f32>(-858f, 1107f, var_0.x, 269f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, 690f, -380f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1296f, arg_3, var_0.x, arg_0)))))));
    return global3[_wgslsmith_index_u32(global2.a.x ^ 67452u, 18u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(arg_1.a, arg_0.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1104f, global1[_wgslsmith_index_u32(9481u, 30u)])), _wgslsmith_f_op_f32(select(421f, global1[_wgslsmith_index_u32(arg_1.a.x, 30u)], true)), var_0.b != arg_0.a.x)) + -166f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.a.x, 30u)] - -1258f))), _wgslsmith_f_op_f32(f32(-1f) * -369f), all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(global2.a.x, 30u)], global1[_wgslsmith_index_u32(2187u, 30u)]), vec2<f32>(global1[_wgslsmith_index_u32(global2.b, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(true, false))) + vec2<f32>(1125f, -924f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(548f, 274f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(8935u, 30u)])))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, 992f)))), vec2<f32>(_wgslsmith_f_op_f32(-785f * global1[_wgslsmith_index_u32(global2.a.x, 30u)]), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0.a.x, 30u)]))))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-415f, global1[_wgslsmith_index_u32(global2.b, 30u)], false)), 689f, select(true, true, true))) * _wgslsmith_div_f32(-490f, -415f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.x)))));
    return func_4(_wgslsmith_f_op_f32(trunc(var_1.x)), Struct_1(~(~arg_1.a), _wgslsmith_sub_u32(arg_1.a.x, 2737u)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.b, -23185i, 50846i, arg_0.a.x), vec4<i32>(u_input.a.x, 1i, _wgslsmith_mod_i32(var_0.b, arg_0.a.x), -50923i))), 444f);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_3) -> vec2<u32> {
    global3 = array<Struct_2, 18>();
    let var_0 = true;
    let var_1 = firstLeadingBit((_wgslsmith_add_u32(global2.b, arg_2.b) ^ _wgslsmith_clamp_u32(arg_1.x, 0u, 56359u)) << (_wgslsmith_mult_u32(97355u, _wgslsmith_mult_u32(arg_3.a.x, 4294967295u)) % 32u)) | ~4294967295u;
    global0 = _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~(min(5553u, var_1) | ((var_1 | 1u) << ((global2.b | 1u) % 32u))), 30u)], 1402f));
    var var_2 = func_2(vec4<bool>(select(var_0, false, true), var_0, select(true, var_0, all(vec4<bool>(var_0, true, var_0, true))), var_0), var_0, Struct_2(max(select(vec2<i32>(arg_0.a.x, arg_3.b), abs(u_input.b), true), ~(u_input.b >> (global2.a.ww % vec2<u32>(32u))))), arg_3);
    return vec2<u32>(~(~5293u), 62719u | arg_2.a.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_6(func_5(func_4(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_1.b, 30u)])), func_2(vec4<bool>(false, true, true, true), false, global3[_wgslsmith_index_u32(7597u, 18u)], Struct_3(vec4<u32>(global2.b, 0u, 1u, global2.a.x), arg_2.x)), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -114f)), Struct_3(~vec4<u32>(72919u, global2.a.x, arg_1.b, 95115u), abs(-2147483647i))), global2.a, Struct_4(Struct_1(vec4<u32>(arg_1.b, global2.a.x, 6993u, global2.b) & vec4<u32>(15179u, global2.b, 4294967295u, 34123u), _wgslsmith_div_u32(global2.a.x, 21192u)), 1u), Struct_3(~vec4<u32>(11569u, 1u, 19007u, global2.b), _wgslsmith_clamp_i32(~(-33908i), -2147483647i, arg_0.x))), ~((_wgslsmith_sub_vec2_u32(global2.a.xw, arg_1.a.xx) << ((vec2<u32>(4294967295u, 0u) & vec2<u32>(53217u, arg_1.a.x)) % vec2<u32>(32u))) & vec2<u32>(~global2.a.x, arg_1.a.x))), 30u)];
    var var_1 = ~global2.a;
    var var_2 = true;
    var_1 = abs(global2.a);
    var_2 = false;
    return _wgslsmith_clamp_i32(arg_2.x, -u_input.b.x, 5598i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(310f, 1406f, global1[_wgslsmith_index_u32(19440u, 30u)], global1[_wgslsmith_index_u32(global2.a.x, 30u)]), vec4<f32>(-875f, global1[_wgslsmith_index_u32(global2.b, 30u)], global1[_wgslsmith_index_u32(global2.a.x, 30u)], -583f), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -1722f, global1[_wgslsmith_index_u32(163u, 30u)], global1[_wgslsmith_index_u32(global2.a.x, 30u)]) * vec4<f32>(global1[_wgslsmith_index_u32(global2.b, 30u)], global1[_wgslsmith_index_u32(9655u, 30u)], -1915f, 264f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a, vec2<i32>(func_1(u_input.c, Struct_1(global2.a, global2.b), -vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 2147483647i)), -69327i), true), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(global2.a), min(vec4<u32>(1u, 4294967295u, 0u, global2.b), vec4<u32>(0u, global2.b, global2.b, 0u))), global2.a), global2.b));
}

