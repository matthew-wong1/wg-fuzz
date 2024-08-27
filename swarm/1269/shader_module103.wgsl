struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 12>;

var<private> global2: array<bool, 15> = array<bool, 15>(true, false, true, true, false, true, true, false, true, false, true, true, false, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(1595f, global0.x, true)), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -952f, global0.x), vec3<f32>(1607f, -685f, 1220f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(962f, -590f, 1656f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 820f, -417f), vec3<f32>(global0.x, -801f, -533f))) + vec3<f32>(-1396f, global0.x, global0.x)))))));
    let var_0 = select(select(!vec3<bool>(all(vec4<bool>(false, global2[_wgslsmith_index_u32(90311u, 15u)], global2[_wgslsmith_index_u32(arg_2, 15u)], global2[_wgslsmith_index_u32(arg_1.a, 15u)])), any(vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 15u)], false, true, global2[_wgslsmith_index_u32(arg_2, 15u)])), false), select(vec3<bool>(any(vec2<bool>(false, false)), 50989u == arg_2, true), vec3<bool>(true, global2[_wgslsmith_index_u32(28106u, 15u)], true), global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 15u)]), !(!vec3<bool>(global2[_wgslsmith_index_u32(13409u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(5102u, 15u)]))), !(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))), true);
    let var_1 = Struct_2(_wgslsmith_add_u32(~(~(~u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(arg_2, arg_2), ~12101u), ~u_input.b.zyy)), arg_1.a);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 168f, _wgslsmith_f_op_f32(global0.x + -1224f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1461f, 1589f, 1419f)) - vec3<f32>(1740f, -1268f, global0.x)), vec3<f32>(-346f, -1000f, _wgslsmith_f_op_f32(global0.x + global0.x)), all(!vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false, true)))))));
    global2 = array<bool, 15>();
    return 45150u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_3(vec2<i32>(-(~arg_0.x), firstLeadingBit(~global1[_wgslsmith_index_u32(reverseBits(arg_1.a), 12u)])), arg_1, ~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(35114u, arg_1.b), arg_1.b)), ~(-min(_wgslsmith_add_i32(u_input.d.x, 31202i), i32(-1i) * -12906i)));
    var var_1 = Struct_2(min(u_input.c, u_input.c) & 19134u, 44861u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -751f, -1398f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -788f, global0.x), vec3<f32>(643f, global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, 1102f, 2885f) * vec3<f32>(-1412f, -348f, global0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1171f, 283f), vec3<f32>(var_2.x, var_2.x, 4160f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(638f))), _wgslsmith_f_op_f32(-1706f - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1046f, global0.x)) - _wgslsmith_f_op_f32(sign(-344f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.x, global0.x, global2[_wgslsmith_index_u32(var_1.b, 15u)])))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2059f + -1191f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1821f * global0.x), 266f), 755f), global2[_wgslsmith_index_u32(~0u, 15u)]))));
    var var_3 = Struct_1(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(899f * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(670f)), _wgslsmith_f_op_f32(f32(-1f) * -427f)))), var_2.x), min(u_input.b, max(u_input.b, vec4<u32>(4294967295u, arg_1.b, var_1.b, arg_1.a | var_1.b))), min(vec3<u32>(0u, 1u, 0u), u_input.b.zxx) ^ (firstTrailingBit(~vec3<u32>(u_input.b.x, 106023u, 2677u)) & (abs(vec3<u32>(4242u, u_input.b.x, 4294967295u)) ^ ~vec3<u32>(0u, arg_1.b, 76746u))), var_1.b, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.a), vec4<u32>(abs(~var_3.b.x), firstLeadingBit(1u), abs(func_3(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(var_3.b.x, 12u)]), arg_1, firstLeadingBit(u_input.c), _wgslsmith_div_i32(var_3.e, u_input.d.x))), ~46750u), ~vec3<u32>(countOneBits(arg_1.b), u_input.c, select(var_3.b.x, var_3.b.x, true)) ^ u_input.b.ywy, arg_1.b, -global1[_wgslsmith_index_u32(17136u, 12u)]);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = 4830i;
    return abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.a.x, countOneBits(1i)), select(global1[_wgslsmith_index_u32(abs(u_input.b.x), 12u)], _wgslsmith_dot_vec4_i32(-vec4<i32>(5504i, 52963i, var_0, arg_0), arg_2), true)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-270f, 900f, global0.x) - vec3<f32>(global0.x, -475f, 986f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, -396f)), _wgslsmith_f_op_f32(global0.x * global0.x), global0.x)))));
    let var_0 = -(~(-41079i));
    var var_1 = 40805i << (u_input.b.x % 32u);
    global1 = array<i32, 12>();
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -210f, 1791f) - vec3<f32>(-507f, -164f, -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-386f, _wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(select(global0.x, global0.x, arg_3.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -3076f, -907f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, -188f, 1224f)))), true))));
    return 36680u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1319f, 380f, arg_0, -648f))) + arg_2.a)) + vec4<f32>(1f, _wgslsmith_f_op_f32(-global0.x), arg_2.a.x, 253f)), ~min(u_input.b, _wgslsmith_clamp_vec4_u32(arg_2.b | vec4<u32>(1u, u_input.c, 14362u, 29935u), reverseBits(vec4<u32>(arg_1.x, arg_2.c.x, 1u, u_input.c)), arg_2.b >> (arg_2.b % vec4<u32>(32u)))), ~firstLeadingBit(u_input.b.zyx), func_5(global2[_wgslsmith_index_u32(u_input.c, 15u)], _wgslsmith_clamp_i32(-reverseBits(arg_2.e), -_wgslsmith_dot_vec2_i32(arg_3, arg_3), func_4(countOneBits(arg_3.x), _wgslsmith_f_op_f32(1325f - 1066f), select(vec4<i32>(arg_3.x, u_input.a.x, -32979i, u_input.a.x), vec4<i32>(-35911i, 1i, global1[_wgslsmith_index_u32(arg_2.d, 12u)], arg_3.x), global2[_wgslsmith_index_u32(arg_2.d, 15u)]), func_2(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 12u)], u_input.d.x), Struct_2(1u, 5032u)))), Struct_2(min(~arg_1.x, func_3(u_input.a, Struct_2(0u, 4294967295u), arg_2.b.x, arg_2.e)), ~arg_2.d), vec3<bool>(global2[_wgslsmith_index_u32(~(~38745u), 15u)], true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(7487u), 3390u), 15u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_2.e, _wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(1i, u_input.a.x))), countOneBits(~arg_3)) << (arg_2.c.x % 32u));
    var var_1 = global1[_wgslsmith_index_u32(abs(min(27114u, 0u)), 12u)];
    let var_2 = Struct_2(min(arg_2.c.x, ~u_input.c), ~(~(~18769u)));
    let var_3 = reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(select(u_input.e, u_input.e, vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(arg_2.c.x, 15u)], global2[_wgslsmith_index_u32(arg_2.b.x, 15u)]))), u_input.e), select(~global1[_wgslsmith_index_u32(11135u, 12u)], u_input.e.x, false), -_wgslsmith_mult_i32(var_0.e, -2147483647i) & arg_3.x));
    var var_4 = Struct_1(arg_2.a, u_input.b, arg_2.b.wzz << (countOneBits(~var_0.b.yzz ^ vec3<u32>(8587u, 62804u, var_2.b)) % vec3<u32>(32u)), _wgslsmith_mod_u32(1u, u_input.c), 40089i);
    return 71163u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global0.x, vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.c) << (reverseBits(u_input.b.x) % 32u), countOneBits(u_input.b.x), u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, global0.x, -422f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, 768f, global0.x)), any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)], true)))), ~vec4<u32>(u_input.c, 0u, u_input.b.x, 101284u), u_input.b.wyz, (u_input.c | u_input.c) | abs(1u), _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 12u)], u_input.e.x, global1[_wgslsmith_index_u32(u_input.c, 12u)]))), vec2<i32>(1i, -2147483647i)), u_input.b.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), -125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1160f, _wgslsmith_f_op_f32(f32(-1f) * -147f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(trunc(global0.x)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f * _wgslsmith_f_op_f32(round(global0.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(global0.zz)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, 1383f))))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f) * -964f), _wgslsmith_f_op_f32(max(-1579f, _wgslsmith_f_op_f32(-global0.x))), -265f))), u_input.b, u_input.b.yyx, _wgslsmith_sub_u32(func_3(~vec2<i32>(-6005i, u_input.a.x), Struct_2(~u_input.c, _wgslsmith_add_u32(u_input.c, var_0.b)), 4294967295u, u_input.a.x << (~var_0.b % 32u)), _wgslsmith_div_u32(94u << ((var_0.a & 635u) % 32u), max(abs(u_input.b.x), abs(var_0.b)))), 26753i);
    var var_3 = ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(func_1(global0.x, vec3<u32>(var_2.b.x, var_0.a, u_input.b.x), Struct_1(vec4<f32>(1149f, var_1.x, var_2.a.x, -628f), vec4<u32>(4294967295u, 42573u, u_input.c, var_0.a), u_input.b.wxz, 91691u, u_input.e.x), u_input.d.xy), min(8640u, 0u)), ~var_2.c.yy));
    var var_4 = false;
    global2 = array<bool, 15>();
    let var_5 = Struct_2(84324u, 76622u);
    let x = u_input.a;
    s_output = StorageBuffer((abs(vec3<i32>(global1[_wgslsmith_index_u32(36550u, 12u)], global1[_wgslsmith_index_u32(var_3.x, 12u)], 2147483647i)) ^ reverseBits(u_input.d)) | -_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d.x, 18721i, -153i), ~vec3<i32>(0i, var_2.e, -2147483647i), u_input.e.xyx), _wgslsmith_mult_i32(max(~u_input.a.x, -12504i), reverseBits(~_wgslsmith_mod_i32(-44405i, global1[_wgslsmith_index_u32(var_5.a, 12u)]))), -_wgslsmith_sub_i32(-1i, -_wgslsmith_mult_i32(0i, 0i)));
}

