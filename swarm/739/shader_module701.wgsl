struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = min(~(~vec2<u32>(4294967295u, 56679u) | (vec2<u32>(0u, u_input.a) ^ vec2<u32>(u_input.a, 0u))) ^ (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(u_input.a, ~33347u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 0u)) | vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 3841u) ^ (vec2<u32>(u_input.a, 14740u) ^ vec2<u32>(u_input.a, u_input.a))) ^ (~firstLeadingBit(vec2<u32>(0u, u_input.a)) & vec2<u32>(1u, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-402f, 288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f)))) - _wgslsmith_f_op_f32(select(409f, _wgslsmith_f_op_f32(1453f * _wgslsmith_f_op_f32(floor(485f))), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(33126u, 7u)], global0[_wgslsmith_index_u32(46173u, 7u)])) && all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)], false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(643f, _wgslsmith_f_op_f32(step(-1528f, 769f)))) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(636f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 9548u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1001f))), -148f, _wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(1f * -1659f)), 1f));
    var var_2 = ~firstLeadingBit(firstTrailingBit(0u & var_1.d)) << (firstTrailingBit(_wgslsmith_mod_u32(~var_0.x, firstLeadingBit(_wgslsmith_add_u32(var_1.d, u_input.a)))) % 32u);
    global0 = array<bool, 7>();
    var var_3 = select(vec3<bool>(true, select(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])), -825f <= var_1.e.x, select(false, true, false)) && all(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)])), all(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.d, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(var_1.d, 7u)], global0[_wgslsmith_index_u32(2392u, 7u)]), global0[_wgslsmith_index_u32(u_input.a, 7u)]))), select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], true), vec3<bool>(true, true, false)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_1.d, 7u)], true)), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(65u, 7u)]), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(35369u, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(48710u, 7u)], false)), u_input.b.x >= u_input.b.x), false), select(vec3<bool>(!any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(var_1.d, 7u)])), _wgslsmith_f_op_f32(var_1.b + 1170f) >= var_1.c, var_1.d >= 1u), select(!select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], false, global0[_wgslsmith_index_u32(101442u, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], true)), vec3<bool>(arg_0 < 2147483647i, true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(40612u, 7u)], true))), any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 7u)], true))), all(vec3<bool>(select(false, false, true), all(vec2<bool>(global0[_wgslsmith_index_u32(15761u, 7u)], global0[_wgslsmith_index_u32(16990u, 7u)])), global0[_wgslsmith_index_u32(12843u, 7u)]))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-244f, var_1.e.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -543f), 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1541f, _wgslsmith_f_op_f32(step(var_1.e.x, 1333f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1513f * _wgslsmith_f_op_f32(f32(-1f) * -857f)), -533f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f))))), _wgslsmith_f_op_f32(-574f * -484f), 28344u, _wgslsmith_f_op_vec4_f32(func_3(u_input.b.x)));
    global0 = array<bool, 7>();
    let var_1 = Struct_1(1456f, _wgslsmith_f_op_f32(trunc(-1514f)), var_0.c, ((~80197u ^ var_0.d) << (var_0.d % 32u)) & ~var_0.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-1607f + _wgslsmith_f_op_f32(1042f * 1000f)), -588f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(-178f, 1920f, false))))), _wgslsmith_f_op_vec4_f32(-var_0.e))));
    var_0 = Struct_1(_wgslsmith_div_f32(var_1.c, var_1.c), 108f, _wgslsmith_f_op_f32(996f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(max(421f, 1033f)))))), ~5935u, var_0.e);
    return Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), var_1.e.x, -103f, max(abs(0u | (0u & u_input.a)), 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.e, var_1.e)) * vec4<f32>(_wgslsmith_div_f32(-1963f, var_1.c), -1266f, 1f, var_1.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1907f, var_0.a, var_1.e.x, 708f))))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], true, false), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(987u, 7u)]), vec4<bool>(false, false, false, true), !global0[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(false || global0[_wgslsmith_index_u32(1u, 7u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], true)), global0[_wgslsmith_index_u32(4294967295u, 7u)] & global0[_wgslsmith_index_u32(var_1.d, 7u)], global0[_wgslsmith_index_u32(64126u, 7u)])))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = func_2(arg_0);
    let var_1 = any(select(vec3<bool>(false, all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(61216u, 7u)], true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(arg_2.d, 7u)]))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d, 7u)], true, global0[_wgslsmith_index_u32(arg_2.d, 7u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(arg_2.d, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), false))), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(7247u, 7u)], false, global0[_wgslsmith_index_u32(48625u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.d, 7u)], false, global0[_wgslsmith_index_u32(1u, 7u)]), global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(u_input.a), 7u)], true, 29748i != u_input.b.x), select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(48197u, 7u)], false), vec3<bool>(true, true, true))), false));
    var_0 = func_2(_wgslsmith_mult_i32(arg_0, 0i << (max(min(var_0.d, 64803u), 47937u << (u_input.a % 32u)) % 32u)));
    var var_2 = func_2(1i);
    global0 = array<bool, 7>();
    return -u_input.b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(u_input.b.x, -342f, func_2(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1275f, 312f, 510f, 274f))), vec4<f32>(1137f, 102f, -338f, 989f))), vec4<f32>(_wgslsmith_f_op_f32(1266f - 116f), _wgslsmith_f_op_f32(sign(-314f)), _wgslsmith_f_op_f32(1000f + -513f), _wgslsmith_div_f32(-1299f, -834f)), global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec4<f32>(218f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-221f)))), 1000f, 1f)));
    var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-43112i, -2147483647i) ^ u_input.b), u_input.b), 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(443f, var_1.x))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1033f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1495f)) + var_1.x), 1059f, -1517f, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 19750u)), abs(~vec4<u32>(1u, u_input.a, 20473u, 4294967295u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(3169u, 17146u, 7434u, 0u), vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + 352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 225f))), 449f));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.e - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-536f, arg_0.e.x, arg_0.a, arg_0.b), arg_2.e))), arg_0.e)) * arg_2.e);
    let var_1 = firstTrailingBit(-select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-34161i, -1i, -1i), vec3<i32>(arg_1, 1i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-56297i, -1i, 1i), vec3<i32>(u_input.b.x, 0i, 49897i)), 1i, _wgslsmith_mult_i32(arg_1, 2147483647i)), -vec4<i32>(2147483647i, u_input.b.x, -15008i, u_input.b.x), any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d, 7u)], false, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(20155u, 7u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], false, true), true))));
    var var_2 = arg_0;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.x), 595f) - arg_2.c)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f - var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(arg_0.e - vec4<f32>(arg_0.b, var_3.x, _wgslsmith_f_op_f32(-var_2.e.x), var_0.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    let var_0 = 21781u;
    var var_1 = -8459i;
    var var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(select(711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f + 471f)), global0[_wgslsmith_index_u32(var_0, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f * 440f) + -774f) - _wgslsmith_f_op_f32(175f - _wgslsmith_f_op_f32(min(835f, -1578f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2130f - 360f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1185f) + _wgslsmith_f_op_f32(sign(-1491f)))), firstTrailingBit(reverseBits(~1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_f_op_f32(trunc(-150f)), _wgslsmith_f_op_f32(788f - -960f), _wgslsmith_f_op_f32(ceil(1021f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, 1010f, -610f, -1004f))))), abs(1i), func_1());
    var_1 = u_input.b.x;
    var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1688f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_div_f32(2282f, var_2.a))))), -1396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1518f, _wgslsmith_f_op_f32(ceil(-1276f)), !global0[_wgslsmith_index_u32(var_2.d, 7u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(594f))))), _wgslsmith_mod_u32(~0u, ~func_2(-13549i).d), func_5(func_5(func_1(), abs(-u_input.b.x), func_2(abs(u_input.b.x))), -_wgslsmith_mult_i32(~u_input.b.x, 2147483647i), Struct_1(_wgslsmith_f_op_f32(-var_2.e.x), 1240f, -1000f, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1418f, 1603f, -158f, var_2.c), vec4<f32>(-1243f, 275f, -531f, var_2.e.x))))).e);
    global0 = array<bool, 7>();
    var_1 = 0i;
    var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-223f + 538f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e.x), 449f, !global0[_wgslsmith_index_u32(8437u, 7u)]))), func_2(abs(-1i)).d, vec4<f32>(471f, var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1().b)), ~(-_wgslsmith_mult_i32(-u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(-2147483647i)).x * _wgslsmith_f_op_f32(-var_2.e.x)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a, var_2.b), _wgslsmith_f_op_f32(-var_2.c))), var_2.c, 2179f, ~(~func_1().d), vec4<f32>(_wgslsmith_f_op_f32(929f * _wgslsmith_f_op_f32(-623f - var_2.b)), var_2.b, _wgslsmith_f_op_f32(-var_2.e.x), var_2.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~52272u, var_2.d >> (var_2.d % 32u));
}

