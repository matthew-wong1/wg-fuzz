struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(47330i, 30916i, -68420i, 0i, -40094i, 1i, 0i, 2147483647i, 0i, 0i, 7040i, 0i, i32(-2147483648), 41004i, -1i, i32(-2147483648), 1i, 1i, 1i, 67765i, 21250i, i32(-2147483648), -1i, 42754i, 4707i, -53788i, 0i, -1i, -43458i, -28952i, 2147483647i, 2147483647i);

var<private> global1: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-264f, 885f, 2561f, 1325f), vec4<f32>(377f, -1171f, -478f, -504f), vec4<f32>(-1537f, 300f, 419f, 731f), vec4<f32>(-1188f, -1740f, -583f, -243f), vec4<f32>(1482f, 1135f, -683f, -750f), vec4<f32>(958f, 161f, -1498f, 2993f), vec4<f32>(1127f, -488f, 1198f, 887f));

var<private> global2: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yzx, ~firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.b.xwy, vec3<u32>(4294967295u, 1u, u_input.b.x)))), u_input.b.x, ~_wgslsmith_mod_u32(62634u, u_input.a) >> (~_wgslsmith_dot_vec3_u32(abs(u_input.b.yzy), vec3<u32>(u_input.b.x, u_input.b.x, 0u)) % 32u));
    var var_1 = u_input.c;
    let var_2 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_div_f32(arg_0.b.x, -543f)), 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-364f, -304f)) - _wgslsmith_f_op_f32(min(arg_0.b.x, 1000f))), -807f)), arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(543f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x))))), 1144f);
    var var_3 = arg_2;
    var_1 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(560f, _wgslsmith_f_op_f32(-var_2.x)) + var_2.yx));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<f32>) -> vec3<f32> {
    global1 = array<vec4<f32>, 7>();
    var var_0 = ~u_input.c;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(select(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(41896i, u_input.c), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), ~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c)), arg_1 | true), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(4453i, -1i, 2147483647i, global0[_wgslsmith_index_u32(80822u, 32u)])), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(arg_0, 32u)], 48613i, -1i) ^ ~vec4<i32>(2147483647i, 1i, -15990i, global0[_wgslsmith_index_u32(u_input.a, 32u)]))), -2147483647i, global0[_wgslsmith_index_u32(0u, 32u)]);
    global1 = array<vec4<f32>, 7>();
    global0 = array<i32, 32>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(550f * arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), -1360f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1488f * -1428f), _wgslsmith_f_op_f32(floor(arg_2.x))) + 167f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(round(arg_2.x))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(2147483647i, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_u32(~(~u_input.a), ~_wgslsmith_sub_u32(30493u, u_input.b.x)), true || all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(42073i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-995f, 1137f, 420f))), i32(-1i) * -17817i, Struct_2(vec3<bool>(true, true, true)))))));
    var var_1 = Struct_3(~abs(u_input.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f - -850f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_3)))), 678f), vec3<f32>(-1365f, arg_2, var_0.b.x))));
    var_0 = Struct_3(u_input.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b))) * _wgslsmith_f_op_vec3_f32(func_4(u_input.a, true, var_0.b.zx))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-arg_2)) - var_1.b.xy)));
    let var_3 = var_2.x;
    return Struct_2(vec3<bool>(!any(vec4<bool>(false, false, false, false)) || !all(vec3<bool>(true, true, false)), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), vec2<i32>(0i, 1i)) > global0[_wgslsmith_index_u32(1u, 32u)], firstLeadingBit(u_input.a) < 0u));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = -1i >= firstLeadingBit(select(_wgslsmith_div_i32(~(-1i), -12496i), reverseBits(select(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(arg_0, 32u)], true)), true));
    let var_1 = var_0;
    var var_2 = Struct_1(!any(select(vec4<bool>(var_0, var_0, true, true), select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(false, false, var_1, false), vec4<bool>(false, false, true, var_1)), select(vec4<bool>(false, var_1, true, true), vec4<bool>(var_1, var_0, true, true), vec4<bool>(false, var_1, var_0, false)))), vec2<f32>(-210f, -222f));
    var var_3 = func_2(48224i, var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * -106f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)), all(vec3<bool>(false, true, true)) & var_2.a)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(u_input.c, vec3<f32>(-149f, var_2.b.x, 183f)), 1i, Struct_2(vec3<bool>(var_2.a, true, var_2.a)))).x) - vec2<f32>(var_2.b.x, 328f)))));
    return Struct_4(-u_input.c, Struct_1(all(func_2(-12051i, _wgslsmith_div_f32(var_4.x, 743f), 2071f, -160f).a.zy), var_2.b), vec4<u32>(_wgslsmith_add_u32(12836u | arg_0, arg_0 & u_input.b.x), u_input.b.x, ~(abs(32854u) & arg_0), 4294967295u), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), ~vec2<i32>(u_input.c, -22637i)), -2147483647i, ~global0[_wgslsmith_index_u32(16251u, 32u)] ^ abs(global0[_wgslsmith_index_u32(arg_0, 32u)]), -13449i)), select(select(!vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, false), select(!vec4<bool>(var_3.a.x, var_3.a.x, false, true), vec4<bool>(true, true, false, var_0), !vec4<bool>(var_0, var_3.a.x, var_1, true)), !select(vec4<bool>(true, false, var_1, var_0), vec4<bool>(var_3.a.x, var_0, var_0, var_3.a.x), vec4<bool>(var_1, var_2.a, var_2.a, var_1))), vec4<bool>(var_2.a, select(var_2.a, var_3.a.x, all(var_3.a)), all(select(vec4<bool>(var_3.a.x, var_3.a.x, var_0, var_0), vec4<bool>(var_3.a.x, var_0, false, false), vec4<bool>(var_1, var_1, true, false))), !(u_input.c != -1698i)), !select(all(vec4<bool>(var_0, false, var_0, true)), any(vec3<bool>(var_0, true, var_3.a.x)), var_2.a)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    global0 = array<i32, 32>();
    let var_0 = func_2(~select(~(i32(-1i) * -2147483647i), ~(-26388i), arg_1.a), _wgslsmith_f_op_f32(-303f - arg_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2359f), _wgslsmith_f_op_f32(-1401f * _wgslsmith_f_op_f32(f32(-1f) * -798f)), true)))), 305f);
    let var_1 = Struct_2(var_0.a);
    global0 = array<i32, 32>();
    global2 = !(!(!(!all(vec4<bool>(var_1.a.x, true, var_1.a.x, true)))));
    return func_1(~_wgslsmith_mod_u32(arg_3.c.x, max(_wgslsmith_clamp_u32(17543u, 2339u, 1u), 12243u))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-21759i, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-948f, -1000f, 361f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1056f, 527f, -1000f))))), Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-880f, -769f), vec2<f32>(1610f, -894f))))), false, func_1(_wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(u_input.a, u_input.a)))), ~(~vec4<u32>(u_input.b.x, 4294967295u, 51229u, u_input.a) & _wgslsmith_mod_vec4_u32(~u_input.b, ~u_input.b)), vec4<i32>(u_input.c, firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(min(1u, u_input.a), 32u)])), -_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 5171i, -8473i), ~vec3<i32>(global0[_wgslsmith_index_u32(16500u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -485i)), u_input.c), vec4<bool>(firstLeadingBit(select(-2147483647i, -1i, true)) <= (-1i | u_input.c), all(func_2(1i, _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(f32(-1f) * -2298f)).a.zy), false, all(vec2<bool>(true, true)) && false));
    let var_1 = ~var_0.c.x;
    let var_2 = _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(firstLeadingBit(var_0.c.x), ~var_1, var_1, var_0.c.x)), min(var_0.c, ~u_input.b));
    global0 = array<i32, 32>();
    let var_3 = Struct_2(var_0.e.wwy);
    global1 = array<vec4<f32>, 7>();
    let var_4 = !vec3<bool>(any(vec4<bool>(false, true, var_0.b.b.x >= -106f, any(var_0.e.xxw))), var_0.e.x, true);
    var var_5 = abs(_wgslsmith_div_vec3_u32(select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 26198u, var_1), vec3<u32>(var_1, 46559u, var_0.c.x), var_2.xzw), vec3<u32>(4294967295u | var_2.x, 1u, var_0.c.x), vec3<bool>(true, false, true)), u_input.b.zyx));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), -425f, var_0.b.b.x, _wgslsmith_f_op_f32(floor(var_0.b.b.x)))) + global1[_wgslsmith_index_u32(var_1 >> ((_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(0u, 5896u, 8980u, 59612u)) & ~var_2.x) % 32u), 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x, ~(-27131i));
}

