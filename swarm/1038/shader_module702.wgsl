struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, true, true, true, false, false, true, true, true, false, true, true, false, false, true, false, false, true, true, false, true, true, true, true, true, true, true);

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(37231u, 38041u, 18017u, 4294967295u), vec4<u32>(54795u, 17035u, 124318u, 57085u), vec4<u32>(17927u, 15909u, 68400u, 59842u), vec4<u32>(191u, 3186u, 1198u, 69160u), vec4<u32>(1u, 25991u, 48496u, 4294967295u), vec4<u32>(18778u, 23923u, 0u, 0u), vec4<u32>(0u, 0u, 19507u, 14903u), vec4<u32>(43758u, 61911u, 73544u, 39730u), vec4<u32>(0u, 1u, 1u, 53822u), vec4<u32>(45533u, 1u, 4294967295u, 1u), vec4<u32>(2973u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 95195u, 119787u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<bool, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))), Struct_1(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4179u, 32u)], false, arg_0), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(24171u, 32u)], global0[_wgslsmith_index_u32(42523u, 32u)], false), true), !vec4<bool>(arg_0, false, true, true), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_0, false), vec4<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.c, 32u)], false), true), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 32u)], false, false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], true, true, global0[_wgslsmith_index_u32(u_input.c, 32u)]))), u_input.a.x, !(!any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(9072u, 32u)], false, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-278f * -866f))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-345f)) + _wgslsmith_f_op_f32(round(395f))), _wgslsmith_f_op_f32(min(-729f, _wgslsmith_f_op_f32(196f + 415f)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(39324u, ~u_input.c), 32u)]), Struct_1(vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(~u_input.c, 32u)], true), countOneBits(-2147483647i), false, vec4<f32>(1f, -901f, _wgslsmith_f_op_f32(-1143f + -351f), _wgslsmith_f_op_f32(216f + -2102f)), 10464i <= -_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), Struct_1(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, arg_0, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(67378u, 32u)], true, global0[_wgslsmith_index_u32(u_input.c, 32u)]), vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.c, 32u)], true)), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(72096u, 32u)], true), false), vec4<bool>(true, true, true, true)), 2147483647i, !arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1259f, -414f, -855f, 538f))))), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(35084u, 32u)]), true))), Struct_1(!(!(!vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(24083u, 32u)]))), -u_input.a.x, false, vec4<f32>(1f, 1f, 1f, 1f), global0[_wgslsmith_index_u32(u_input.c, 32u)]));
    let var_1 = var_0.b;
    var var_2 = var_1.d.wx;
    global1 = array<vec4<u32>, 12>();
    return min(u_input.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(u_input.c, 10125u, u_input.c))), ~reverseBits(vec3<u32>(0u, u_input.c, 1u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 4294967295u), 71351u) >> (firstLeadingBit(u_input.c ^ 31055u) % 32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.c, 0u)), vec2<u32>(max(~(1u ^ u_input.c), ~56459u), 33626u));
    let var_1 = 1297f;
    global0 = array<bool, 32>();
    let var_2 = -_wgslsmith_mod_i32(u_input.b.x, u_input.a.x);
    global0 = array<bool, 32>();
    return Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(~(~u_input.c) ^ (var_0 >> (func_3(true) % 32u)), 32u)], !global0[_wgslsmith_index_u32(7994u, 32u)], global0[_wgslsmith_index_u32(~(~(~u_input.c)), 32u)]), ~_wgslsmith_mod_i32(var_2, -_wgslsmith_div_i32(var_2, -27201i)), any(vec4<bool>((var_0 ^ var_0) <= ~var_0, all(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(83009u, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 32u)], false), global0[_wgslsmith_index_u32(u_input.c, 32u)])), ~var_2 >= var_2, !global0[_wgslsmith_index_u32(~1u, 32u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1518f, 1980f, -860f, -279f) - vec4<f32>(var_1, var_1, var_1, 647f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 2183f, var_1) * vec4<f32>(var_1, var_1, -2546f, var_1))))), any(select(vec2<bool>(true, true), !select(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(80114u, 32u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(17800u, 32u)])), vec2<bool>(true, false))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_2.d.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.d.x, arg_3.c.d.x)) + _wgslsmith_f_op_vec2_f32(select(arg_2.d.wx, arg_3.e.d.yy, vec2<bool>(false, arg_3.b.c))))), false))));
    let var_1 = func_2();
    var var_2 = min(_wgslsmith_dot_vec4_u32(~vec4<u32>(11078u, u_input.c, u_input.c, u_input.c), vec4<u32>(_wgslsmith_div_u32(31658u, u_input.c), countOneBits(1u), 0u, (70412u | u_input.c) & abs(65771u))), firstLeadingBit(18594u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(func_2().d.x)), Struct_1(arg_3.d.a, -abs(arg_3.b.b), all(select(vec4<bool>(var_1.a.x, true, arg_3.e.e, arg_2.a.x), arg_2.a, !arg_0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.d.x, var_1.d.x, 639f, 158f)), vec4<f32>(_wgslsmith_f_op_f32(1063f - -748f), -478f, _wgslsmith_f_op_f32(-1000f - -1612f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true & (_wgslsmith_dot_vec2_i32(u_input.a.xw, arg_1) >= 1i)), Struct_1(select(!vec4<bool>(arg_0, false, true, arg_3.c.c), vec4<bool>(false, false, arg_3.a <= 288f, arg_3.d.d.x > 404f), vec4<bool>(any(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.c, 32u)], true)), all(vec4<bool>(false, false, false, false)), !arg_2.a.x, !arg_2.e)), _wgslsmith_mult_i32((arg_1.x >> (u_input.c % 32u)) << (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u), abs(-5410i)), all(func_2().a.yz), vec4<f32>(1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.d.x)), _wgslsmith_f_op_f32(-579f - 642f), func_2().d.x), false), func_2(), arg_2);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.d.x, _wgslsmith_div_f32(var_0.x, func_2().d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-245f * _wgslsmith_f_op_f32(abs(var_3.c.d.x))), -2222f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(841f)))))));
    return global1[_wgslsmith_index_u32(u_input.c, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)];
    global1 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, ~4294967295u >> (~var_0.x % 32u), u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(~38379u, ~(u_input.c << (var_0.x % 32u)), ~var_0.x, 0u), vec4<u32>(u_input.c, ~(28713u << (u_input.c % 32u)), var_0.x, u_input.c)));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1, vec4<u32>(4294967295u, 34644u, var_0.x, u_input.c), vec4<u32>(4294967295u, var_0.x, var_0.x, 0u)), func_1(false, vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(90649u, 32u)], false, global0[_wgslsmith_index_u32(92827u, 32u)], false), 1i, global0[_wgslsmith_index_u32(var_1.x, 32u)], vec4<f32>(-741f, 1003f, -282f, 1562f), global0[_wgslsmith_index_u32(var_0.x, 32u)]), Struct_2(-923f, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], true), 11643i, global0[_wgslsmith_index_u32(var_0.x, 32u)], vec4<f32>(-684f, 177f, 528f, 966f), false), Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 32u)], true), u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 32u)], vec4<f32>(-521f, 983f, -1213f, -374f), false), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, global0[_wgslsmith_index_u32(19063u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]), u_input.b.x, true, vec4<f32>(-480f, 504f, -1027f, 1243f), false), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(28351u, 32u)], false, global0[_wgslsmith_index_u32(var_0.x, 32u)]), -29295i, false, vec4<f32>(-128f, -590f, -1158f, 1699f), global0[_wgslsmith_index_u32(var_1.x, 32u)])))), vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.c, 53796u), var_1.x, firstLeadingBit(u_input.c), _wgslsmith_mult_u32(1u, var_1.x))) | vec4<u32>(33993u, abs(0u), u_input.c, 41299u), select(vec4<u32>(~u_input.c >> (min(var_0.x, 4294967295u) % 32u), 1u, 0u ^ select(u_input.c, 17759u, global0[_wgslsmith_index_u32(53151u, 32u)]), select(43978u, 84643u, global0[_wgslsmith_index_u32(23684u, 32u)] == true)), select(global1[_wgslsmith_index_u32(firstLeadingBit(21883u), 12u)] >> (vec4<u32>(u_input.c, var_0.x, 1u, var_1.x) % vec4<u32>(32u)), select(global1[_wgslsmith_index_u32(var_0.x, 12u)], vec4<u32>(0u, 4294967295u, 0u, var_1.x), vec4<bool>(true, true, false, true)) >> (select(global1[_wgslsmith_index_u32(var_0.x, 12u)], vec4<u32>(u_input.c, var_0.x, 1u, 0u), global0[_wgslsmith_index_u32(0u, 32u)]) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(var_0.x, 32u)]), global0[_wgslsmith_index_u32(var_0.x, 32u)]));
    global0 = array<bool, 32>();
    let var_3 = _wgslsmith_f_op_f32(round(1373f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, -(u_input.b.x ^ 2147483647i), -_wgslsmith_clamp_i32(-u_input.a.x, abs(u_input.b.x), u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, _wgslsmith_div_f32(-273f, var_3)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, var_3), vec2<f32>(188f, var_3))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_3)), _wgslsmith_f_op_f32(var_3 - 229f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, -532f), _wgslsmith_f_op_vec2_f32(vec2<f32>(906f, 1095f) - vec2<f32>(859f, -1679f))))), global0[_wgslsmith_index_u32(u_input.c, 32u)])), u_input.c);
}

