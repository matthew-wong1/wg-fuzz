struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-847f, 509f, 247f, 1000f, 266f, 612f, -1359f, 197f, 111f, 940f, -1000f, 1751f, -1311f, -1218f, -1425f, -311f);

var<private> global1: array<f32, 13> = array<f32, 13>(-1144f, 344f, 1310f, 2257f, 1138f, -970f, 1216f, -1381f, -1749f, -1371f, 371f, 1191f, -365f);

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    var var_0 = vec2<bool>(select(true, false, !arg_2), arg_2);
    var_0 = vec2<bool>(!(!(all(vec3<bool>(arg_2, true, false)) & false)), arg_2);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 13u)])))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16794u, 13u)])), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_1, 16u)])), vec2<bool>(!any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(12664u, arg_1), 16u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0[_wgslsmith_index_u32(56350u, 16u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1898f, 461f), vec2<f32>(1172f, 1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 16u)]))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, 10322u), 16u)])), global1[_wgslsmith_index_u32(arg_1, 13u)]);
    let var_2 = var_1;
    global2 = var_2.c.x;
    return 1082f;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.c.x;
    let var_1 = _wgslsmith_div_u32(16550u >> (~firstLeadingBit(abs(arg_2)) % 32u), arg_2);
    let var_2 = vec2<bool>(false, arg_3.c.x);
    global0 = array<f32, 16>();
    var var_3 = _wgslsmith_mod_i32(u_input.a, u_input.a);
    return any(select(select(!vec3<bool>(false, var_0, true), vec3<bool>(var_0, arg_3.c.x, arg_3.c.x), !arg_3.c.x), select(!vec3<bool>(false, arg_3.c.x, false), vec3<bool>(true, true, true), !vec3<bool>(var_0, false, true)), select(vec3<bool>(var_0, false, false), vec3<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(arg_3.c.x, var_2.x, true), vec3<bool>(var_2.x, var_0, true))))) | false;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<f32> {
    global1 = array<f32, 13>();
    let var_0 = select(vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(35830u, 16u)], -930f) * vec2<f32>(global1[_wgslsmith_index_u32(34507u, 13u)], 1653f)))), ~reverseBits(60804u), 125913u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1478f, global1[_wgslsmith_index_u32(1u, 13u)]) - vec2<f32>(-1477f, 1856f)), _wgslsmith_f_op_f32(func_3(4294967295u, 27475u, arg_0.x, vec4<i32>(1i, arg_1.x, 1i, u_input.a))), !arg_0.yy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], -400f), vec2<f32>(-1158f, -433f), true)), _wgslsmith_f_op_f32(-657f * global0[_wgslsmith_index_u32(6937u, 16u)]))), true, true), select(arg_0, vec3<bool>(true | (false & arg_0.x), !arg_0.x, select(all(arg_0.zx), false, arg_0.x | true)), arg_0.x), select(!select(!arg_0, select(vec3<bool>(true, false, false), arg_0, true), true), select(select(select(arg_0, arg_0, arg_0), select(arg_0, vec3<bool>(true, arg_0.x, false), true), all(vec4<bool>(true, true, true, false))), arg_0, !(!arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26687u, 16u)]))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(494f)))));
    global2 = any(vec2<bool>(!var_0.x, arg_0.x));
    global0 = array<f32, 16>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 13u)]))))))) * 199f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, global0[_wgslsmith_index_u32(0u, 16u)]) * _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, var_1)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, global0[_wgslsmith_index_u32(0u, 16u)]))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, global1[_wgslsmith_index_u32(0u, 13u)]), vec2<f32>(-197f, -863f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, global1[_wgslsmith_index_u32(0u, 13u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, -1000f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], var_1))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(27342u, 16u)], -1058f) + vec2<f32>(400f, global0[_wgslsmith_index_u32(27651u, 16u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, var_1) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], -1293f)))))));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 13u)])), -2091f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2178f, arg_0))))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-924f, -1188f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -414f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) + 258f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.d, _wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), ~vec3<i32>(u_input.a, u_input.a, u_input.a))), var_0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], -462f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 13u)], 1506f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1197f, -278f))))))));
    global1 = array<f32, 13>();
    var var_2 = var_0;
    var var_3 = var_0;
    return var_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = arg_0.c.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(434f)) * _wgslsmith_div_f32(arg_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1134f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 13u)])) + -515f), arg_0.a.x) - vec3<f32>(_wgslsmith_f_op_f32(369f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(486u, 16u)], -1000f))), _wgslsmith_f_op_f32(1771f + 1416f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(756f * -759f))) - arg_0.d.x)));
    var var_1 = select(countOneBits(~(~4294967295u)), select(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 40000u, 4294967295u), vec3<u32>(31354u, 35539u, 59859u))), ~_wgslsmith_mod_u32(1u, select(67324u, 1u, false)), u_input.a < -(~(-3959i))), all(!vec3<bool>(true, true, all(vec3<bool>(false, true, arg_0.c.x)))));
    var var_2 = vec3<u32>(1u, 1u, 1u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(442u, 13u)], global1[_wgslsmith_index_u32(var_2.x, 13u)])))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(var_2.x, 1u, 0u), ~30589u, all(select(!vec4<bool>(false, false, arg_1.c.x, arg_0.c.x), select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(false, arg_1.c.x, arg_0.c.x, true), false), vec4<bool>(true, false, arg_1.c.x, true))), vec4<i32>(_wgslsmith_div_i32(u_input.a, 64015i), -u_input.a, 22689i >> (0u % 32u), _wgslsmith_sub_i32(u_input.a, 0i)) | _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, -24248i)))), arg_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(74852u, 0u, arg_1.c.x != false, ~vec4<i32>(1i, -1i, 2147483647i, 1i))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 13u)] * _wgslsmith_f_op_f32(sign(-2418f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1013f, _wgslsmith_f_op_f32(f32(-1f) * -338f))) - -1237f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -1082f) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], 825f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2050f, 1450f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 16u)])) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~28858u, 13u)] * _wgslsmith_f_op_f32(-808f - global0[_wgslsmith_index_u32(0u, 16u)]))), !vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 16u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, -210f)))), _wgslsmith_f_op_f32(f32(-1f) * -814f)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1299f, -2302f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(101101u, 13u)], 979f) + vec2<f32>(-768f, 326f))))), 1036f, !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1588f, global0[_wgslsmith_index_u32(1u, 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(109f)) * global0[_wgslsmith_index_u32(~1u, 16u)])));
    let var_1 = func_5(var_0, var_0);
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b)), -468f), vec2<bool>(any(!vec3<bool>(var_1.c.x, true, var_1.c.x)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_5(var_1, Struct_1(var_0.d, global1[_wgslsmith_index_u32(0u, 13u)], vec2<bool>(true, var_1.c.x), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), var_1.e)).a) * var_0.a), var_0.e), func_5(Struct_1(var_0.a, -583f, !(!var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.d))), _wgslsmith_f_op_f32(519f * 162f)), var_1));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1128f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 102f))))), var_0.a.x, !vec2<bool>(var_2.c.x, false), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.e, var_2.d.x), _wgslsmith_div_f32(-1072f, global0[_wgslsmith_index_u32(9323u, 16u)]))))), var_0.d.x);
    let var_4 = firstTrailingBit(vec3<u32>(select(22158u, ~1u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(5022u, min(4294967295u, 63970u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(17896u, 1u, 1u, 4294967295u), vec4<u32>(55473u, 4294967295u, 0u, 39129u))), vec4<u32>(60052u, ~15117u, ~82299u, 49472u)), ~select(max(6003u, 37170u), ~10538u, var_3.c.x)));
    let var_5 = func_5(var_2, func_5(func_5(func_5(var_1, Struct_1(var_2.a, -937f, vec2<bool>(var_2.c.x, var_0.c.x), var_1.a, -428f)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.d), _wgslsmith_f_op_f32(func_3(46988u, var_4.x, false, vec4<i32>(1i, 1i, -2564i, u_input.a))), var_0.c, vec2<f32>(739f, global0[_wgslsmith_index_u32(var_4.x, 16u)]), global0[_wgslsmith_index_u32(var_4.x, 16u)])), Struct_1(vec2<f32>(-275f, -2341f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstTrailingBit(var_4.x), 13u)] - _wgslsmith_f_op_f32(max(516f, var_2.a.x))), vec2<bool>(57144i < u_input.a, any(vec3<bool>(false, var_3.c.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.d)), _wgslsmith_f_op_f32(-676f - _wgslsmith_f_op_f32(158f + var_3.e)))));
    let var_6 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(var_4.x, 13u)], _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(-563f, -1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, global0[_wgslsmith_index_u32(var_4.x, 16u)], 949f)))), select(select(vec3<bool>(var_5.c.x, var_3.c.x, var_1.c.x), vec3<bool>(true, true, var_2.c.x), vec3<bool>(var_3.c.x, true, var_5.c.x)), !vec3<bool>(var_3.c.x, true, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_5.d.x, -2159f, 596f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a.x, -1478f, -1453f) + vec3<f32>(var_0.e, global0[_wgslsmith_index_u32(var_4.x, 16u)], -1312f))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-min(vec4<i32>(-2147483647i, 19686i, -7908i, u_input.a), vec4<i32>(0i, 0i, u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -6429i, u_input.a, 291i), vec4<i32>(u_input.a, u_input.a, -37614i, 41397i)))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), _wgslsmith_div_vec4_i32((vec4<i32>(1i, 2147483647i, u_input.a, -5770i) | vec4<i32>(u_input.a, -17899i, 2762i, u_input.a)) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 0i, 2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(11801i, u_input.a, 1i, u_input.a), ~vec4<i32>(1977i, u_input.a, -47939i, 28064i)))), max(1i, _wgslsmith_sub_i32(-(u_input.a | 1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -1i, -33314i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) ^ vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a)))), _wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(34623i, u_input.a, 2032i, u_input.a), vec4<i32>(u_input.a, u_input.a, 8442i, u_input.a)), vec4<i32>(-1i, u_input.a, u_input.a, 11641i), !var_5.c.x) ^ (abs(vec4<i32>(u_input.a, -1i, -8260i, u_input.a)) & (vec4<i32>(-24619i, 34205i, 2147483647i, 1i) & vec4<i32>(-42243i, -1i, 60216i, u_input.a))), min(~vec4<i32>(u_input.a, u_input.a, 36768i, u_input.a), firstLeadingBit(vec4<i32>(0i, u_input.a, 0i, 81351i))) << (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, var_4.x), vec4<u32>(1u, 4294967295u, var_4.x, var_4.x))) % vec4<u32>(32u))));
}

