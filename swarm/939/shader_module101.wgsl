struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, true, false, false, false, true, true, false, true, false, true, true, false, false, true, true, false, false, true, false, true, false, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_4(vec4<u32>(select(4672u, 44964u & u_input.a.x, false), arg_0, _wgslsmith_div_u32(0u << (arg_1 % 32u), reverseBits(arg_1)), ~(~arg_0)) ^ _wgslsmith_div_vec4_u32(abs(~vec4<u32>(3722u, 23634u, arg_0, u_input.a.x)), ~vec4<u32>(arg_0, arg_0, 4712u, arg_0)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f + 138f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1538f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, -444f)) * vec2<f32>(-1042f, -1781f))))), ~select(16930u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(arg_0, arg_0)), any(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 26u)]))), Struct_1(4294967295u, !select(vec3<bool>(global0[_wgslsmith_index_u32(16972u, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, false)), 1194u, any(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, true), true))), global0[_wgslsmith_index_u32(~arg_0 >> (1u % 32u), 26u)]);
    var var_1 = !((_wgslsmith_add_u32(reverseBits(37170u), ~arg_1) != abs(var_0.a.x ^ 0u)) == global0[_wgslsmith_index_u32(select(arg_1, _wgslsmith_sub_u32(u_input.a.x, arg_0), true), 26u)]);
    let var_2 = Struct_5(Struct_2(-2147483647i, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, var_0.a.x, arg_1), vec3<u32>(1u, 1u, u_input.a.x)), u_input.a.x), ~arg_1, _wgslsmith_dot_vec4_u32(~var_0.a, vec4<u32>(arg_0, arg_0, 19185u, 11865u))), var_0.d), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1, 73853u, 48742u), vec4<u32>(1u, u_input.a.x, var_0.a.x, arg_0)), 4294967295u), 0u), global0[_wgslsmith_index_u32(abs(u_input.a.x), 26u)]);
    var_0 = Struct_4(vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec4_u32(var_0.a, select(~var_0.a, reverseBits(vec4<u32>(arg_1, 65192u, 17521u, 60687u)), select(vec4<bool>(true, true, var_0.e, var_0.e), vec4<bool>(var_0.d.b.x, var_0.d.b.x, var_2.a.c.b.x, var_2.d), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], var_2.a.c.d, var_0.d.d, true)))), ((33948u << (var_2.c % 32u)) & 1u) & u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -1126f)), 0u, var_2.a.c, global0[_wgslsmith_index_u32(47859u, 26u)]);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, 391f, 774f, -1646f), vec4<f32>(var_2.b, var_2.b, 1220f, 1000f), var_2.a.c.d)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, var_2.b, 1000f, var_2.b), vec4<f32>(183f, -835f, var_2.b, var_0.b.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_2.b, var_0.b.x, var_0.b.x) - vec4<f32>(-983f, var_2.b, var_0.b.x, 1188f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(587f, var_2.b, var_0.b.x, var_2.b))))))));
    return vec2<f32>(var_2.b, _wgslsmith_f_op_f32(var_0.b.x - -1119f));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec4<u32> {
    var var_0 = arg_0.b;
    global0 = array<bool, 26>();
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_mod_u32(~(22741u << (u_input.a.x % 32u)) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(14230u, u_input.a.x, 0u, arg_0.a), vec4<u32>(85683u, u_input.a.x, arg_0.c, u_input.a.x))) % 32u), 0u), !(!select(arg_0.b, select(arg_0.b, arg_0.b, false), any(vec4<bool>(arg_2, false, arg_2, arg_0.d)))), _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x >> (arg_0.a % 32u), 1u)), false);
    let var_3 = Struct_4(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.a, 86094u, u_input.a.x, 36472u) ^ ~vec4<u32>(u_input.a.x, var_2.a, u_input.a.x, 0u), min(firstTrailingBit(vec4<u32>(115217u, arg_0.a, u_input.a.x, u_input.a.x)), vec4<u32>(arg_0.a, u_input.a.x, 17117u, 56735u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1163f, -990f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(45091u, _wgslsmith_mod_u32(var_2.a, arg_0.c))))), ~_wgslsmith_mult_u32(31393u, ~(~arg_0.c)), Struct_1(abs(~21239u), vec3<bool>(all(vec4<bool>(var_2.d, global0[_wgslsmith_index_u32(arg_0.c, 26u)], arg_2, true)), false, false), _wgslsmith_add_u32(u_input.a.x, var_2.c), !(!(!var_0.x))), true);
    return var_3.a >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.c, var_3.c) & (u_input.a.x | 14096u), ~_wgslsmith_sub_u32(var_2.a, 0u)), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_2.a, var_3.a.x), var_2.a), 1u), 10601u) % vec4<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    let var_0 = -1i;
    global0 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-2891f - 1000f), -178f) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, -753f), _wgslsmith_f_op_f32(f32(-1f) * -1133f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - 797f))), -1181f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(762f, 1468f), _wgslsmith_div_f32(898f, 1284f), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2435f, 306f, arg_1, arg_1)))))));
    var var_3 = Struct_4(vec4<u32>(arg_0 << (_wgslsmith_dot_vec4_u32(func_2(Struct_1(u_input.a.x, vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0, 26u)]), arg_0, false), arg_3, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<u32>(1u, 4294967295u, arg_0, arg_0)) % 32u), ~func_2(Struct_1(u_input.a.x, vec3<bool>(global0[_wgslsmith_index_u32(4263u, 26u)], arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), 1u, false), firstLeadingBit(arg_3), false).x, select(_wgslsmith_mod_u32(~4294967295u, 4294967295u >> (1u % 32u)), ~arg_0 ^ u_input.a.x, true), arg_0), var_1.xy, 46282u, Struct_1(max(u_input.a.x, 4294967295u), !(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(67706u, 26u)])), abs(~arg_0), _wgslsmith_f_op_f32(f32(-1f) * -365f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-308f)), 268f))), 115561u != arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b.x)) * var_3.b.x), true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let var_0 = Struct_4(~countOneBits(vec4<u32>(~u_input.a.x, select(52514u, 8854u, global0[_wgslsmith_index_u32(4294967295u, 26u)]), ~56326u, _wgslsmith_mult_u32(7012u, 37497u))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1045f * 133f)))))), u_input.a.x, Struct_1(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 20738u, u_input.a.x), vec4<u32>(52859u, 0u, 4294967295u, 4294967295u)), min(u_input.a.x, 0u))), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true), ~countOneBits(reverseBits(1u)), any(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(69837u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true, true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), global0[_wgslsmith_index_u32(0u, 26u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true)))), false);
    let var_1 = max(-46129i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(40999i, arg_2) ^ reverseBits(vec2<i32>(-1i, arg_1)), reverseBits(vec2<i32>(39785i, 6138i)))));
    global0 = array<bool, 26>();
    return Struct_3(Struct_2(2147483647i, var_0.a.x, Struct_1(4294967295u, select(var_0.d.b, !vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false, global0[_wgslsmith_index_u32(1u, 26u)]), var_0.d.b), 4294967295u, false)), Struct_2(52828i, ~(u_input.a.x << (firstTrailingBit(var_0.c) % 32u)), var_0.d), Struct_2(-6858i, 44535u, var_0.d), _wgslsmith_f_op_f32(-988f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(432f - 218f), -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -2094f)) - vec2<f32>(_wgslsmith_f_op_f32(1081f * _wgslsmith_f_op_f32(abs(285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(~1u, _wgslsmith_f_op_f32(f32(-1f) * -1459f), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true), i32(-1i) * -7411i)), _wgslsmith_f_op_f32(abs(-502f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-517f * 391f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 2147483647i, ~abs(-1i));
    global0 = array<bool, 26>();
    let var_1 = u_input.a;
    global0 = array<bool, 26>();
    var var_2 = var_0.a;
    let var_3 = var_0.a.a;
    let var_4 = ~firstTrailingBit(var_1);
    global0 = array<bool, 26>();
    var var_5 = vec2<i32>(~var_3, firstTrailingBit(52948i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-max(select(vec4<i32>(var_0.c.a, var_2.a, 1670i, 2147483647i), vec4<i32>(var_3, var_0.c.a, var_0.b.a, var_2.a), vec4<bool>(var_2.c.b.x, false, var_0.b.c.d, var_2.c.b.x)), vec4<i32>(var_5.x, -11852i, 1i, var_5.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -10985i, var_3, var_0.c.a) >> (vec4<u32>(0u, var_2.b, 0u, var_1.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, 2147483647i, -2147483647i, 1i), vec4<i32>(3933i, 1i, var_5.x, var_3))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(var_0.a.c.a, u_input.a.x, var_2.b, var_4.x)), ~var_0.c.c.c, u_input.a.x, var_1.x) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, -16897i, 1682i, -1i) & vec4<i32>(-1i, -11154i, var_5.x, var_5.x), reverseBits(vec4<i32>(0i, 0i, var_5.x, -43652i)))), vec4<i32>(-2147483647i, -1i, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-12473i, 1i), max(vec2<i32>(2147483647i, var_0.c.a), vec2<i32>(-2147483647i, 2147483647i)))), var_3), var_2.b, select(1i, var_3, all(select(select(vec4<bool>(var_0.a.c.b.x, global0[_wgslsmith_index_u32(var_1.x, 26u)], false, global0[_wgslsmith_index_u32(var_2.c.a, 26u)]), vec4<bool>(true, true, var_0.a.c.d, var_0.b.c.b.x), vec4<bool>(var_2.c.d, global0[_wgslsmith_index_u32(var_1.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)], var_2.c.b.x)), vec4<bool>(true, false, true, true), true))));
}

