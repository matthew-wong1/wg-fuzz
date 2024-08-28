struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 10>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-160f, 976f, 1000f), 677f, 4294967295u, 6649u);

var<private> global3: array<vec3<f32>, 25>;

var<private> global4: f32 = -809f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1976f - _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, arg_0.a.x) - global0.b), global2.b), global2.b, ~_wgslsmith_mult_u32(~global0.c | ~u_input.c.x, ~1u), ~(~_wgslsmith_mult_u32(u_input.c.x, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - 1102f), _wgslsmith_f_op_f32(abs(-226f))), _wgslsmith_f_op_f32(min(-549f, _wgslsmith_f_op_f32(trunc(1719f)))))), _wgslsmith_f_op_f32(round(arg_0.b)), 1u, global2.c);
    global3 = array<vec3<f32>, 25>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_f32(sign(arg_0.b)), ~var_0.d, var_1.c);
    var var_3 = select(vec3<bool>(u_input.b != (global0.c >> (_wgslsmith_mult_u32(u_input.c.x, 25277u) % 32u)), true, false), vec3<bool>(!global1[_wgslsmith_index_u32(~var_1.d, 10u)], true, all(select(!vec3<bool>(arg_1, arg_2, arg_2), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.d, 10u)]), true))), vec3<bool>(!any(!vec4<bool>(true, arg_2, true, false)), min(i32(-1i) * -45957i, _wgslsmith_mod_i32(u_input.a.x, u_input.d)) >= 7414i, any(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(global1[_wgslsmith_index_u32(var_2.c, 10u)], true, arg_1))))));
    return ~_wgslsmith_mod_u32(global2.d, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(19139u, 4294967295u)), u_input.c));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    global1 = array<bool, 10>();
    let var_0 = Struct_1(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f + -1002f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(-1354f, -777f), global2.c > arg_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + arg_1.b)))), _wgslsmith_f_op_f32(-arg_1.b), arg_1.d ^ 19130u, _wgslsmith_sub_u32(4294967295u, func_3(arg_1, true, false)));
    let var_1 = _wgslsmith_add_u32(u_input.c.x, 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, var_0.b, 440f, global0.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -257f, global0.a.x, arg_1.a.x)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, 280f, 1843f, arg_1.b) - _wgslsmith_div_vec4_f32(vec4<f32>(1021f, -722f, -165f, var_0.b), vec4<f32>(-995f, global0.a.x, global0.a.x, var_0.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1591f, 409f, 388f, -576f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 2611f, -387f, -298f)), global1[_wgslsmith_index_u32(1u, 10u)] && false)))) - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 556f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))), _wgslsmith_f_op_f32(sign(-224f))));
    let var_3 = Struct_1(global3[_wgslsmith_index_u32(~(~64262u), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * var_2.x) * _wgslsmith_f_op_f32(280f * -458f)))), ~(~_wgslsmith_add_u32(0u, func_3(arg_1, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(arg_1.d, 10u)]))), _wgslsmith_add_u32(9382u, arg_1.c));
    return _wgslsmith_f_op_vec3_f32(-global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(global0.a, _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * -551f) + _wgslsmith_f_op_f32(f32(-1f) * -130f)))), ~1686u, 11139u);
    let var_1 = Struct_1(global0.a, var_0.a.x, 1u, 1u >> (select(63600u, 4294967295u, global1[_wgslsmith_index_u32(reverseBits(55199u), 10u)]) % 32u));
    global0 = var_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), -537f, _wgslsmith_f_op_f32(var_0.b * var_0.a.x))))), _wgslsmith_f_op_f32(-var_1.a.x), min(~_wgslsmith_sub_u32(4294967295u, ~9030u), _wgslsmith_clamp_u32(1u, ~(4294967295u | var_1.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(75446u, 1u, global0.c, 22896u), ~vec4<u32>(1u, 1u, arg_0.d, 0u)))), ~48104u);
    let var_3 = var_1;
    return var_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global2 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2(-u_input.a.x << (countOneBits(39211u) % 32u), Struct_1(arg_0.xzw, _wgslsmith_f_op_f32(abs(global2.b)), global2.c, firstLeadingBit(120613u)), u_input.a.x)), _wgslsmith_f_op_f32(-global2.b), ~min(4294967295u, ~1u), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(36364u, global0.c, 0u), vec3<u32>(u_input.b, u_input.c.x, 43104u))), _wgslsmith_add_vec3_u32(vec3<u32>(global0.c, global2.c, 0u), vec3<u32>(global2.d, global2.d, 15662u)) & min(vec3<u32>(global0.d, global0.c, 5620u), vec3<u32>(88201u, 14805u, global0.c)))), ~vec3<i32>(firstLeadingBit(u_input.a.x), 0i, ~(-6999i)) | vec3<i32>(4156i, firstLeadingBit(u_input.d), u_input.a.x), 16602i, 1938f);
    let var_0 = !select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, !global1[_wgslsmith_index_u32(global0.d, 10u)], all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))), vec4<bool>(global1[_wgslsmith_index_u32(~global2.d, 10u)], false, u_input.c.x != 30549u, global1[_wgslsmith_index_u32(~0u, 10u)]), select(!vec4<bool>(global1[_wgslsmith_index_u32(17057u, 10u)], global1[_wgslsmith_index_u32(36233u, 10u)], global1[_wgslsmith_index_u32(global2.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(23493u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), !global1[_wgslsmith_index_u32(global0.d, 10u)])), !vec4<bool>(global1[_wgslsmith_index_u32(global0.d, 10u)] || true, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), false, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], false, false, global1[_wgslsmith_index_u32(global0.d, 10u)]))), any(vec2<bool>(!global1[_wgslsmith_index_u32(global0.d, 10u)], true)));
    var var_1 = ~(-select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 22389i, u_input.a.x, u_input.d), vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, -1i)), vec4<i32>(u_input.e.x, u_input.a.x, -u_input.d, ~30608i), !(!var_0)));
    return func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-742f, -1859f, 1081f) * global0.a)), 574f, firstTrailingBit(global2.d), global2.c), firstLeadingBit(vec3<i32>(u_input.e.x, u_input.e.x, u_input.d ^ u_input.e.x)), _wgslsmith_clamp_i32(1i, u_input.d, _wgslsmith_mult_i32(u_input.d, -var_1.x)), func_4(Struct_1(global2.a, 101f, 0u, 35186u), vec3<i32>(var_1.x, 1i, u_input.a.x), var_1.x, arg_0.x).a.x), var_1.yzy, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~u_input.e, u_input.a), u_input.a.x), 357f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)]))) | global1[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(f32(-1f) * -405f))), _wgslsmith_f_op_f32(max(522f, _wgslsmith_f_op_f32(342f + 881f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1701f - func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1059f, arg_3.x, global0.b, global2.b))), -307f, global2.a.x).a.x))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 884f, -159f, arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, -1350f, arg_0.a.x, -410f) - vec4<f32>(global2.b, -339f, 214f, 184f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, arg_3.x, 921f, -789f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1843f, 170f, global0.a.x, arg_3.x))))), 404f, global0.a.x).c, ~(~countOneBits(arg_2)));
    var var_2 = vec3<i32>(select(-abs(-1i >> (arg_0.d % 32u)), u_input.e.x, true), _wgslsmith_dot_vec3_i32(~arg_1.zzx << (~vec3<u32>(u_input.b, u_input.b, u_input.c.x) % vec3<u32>(32u)), u_input.e), -1i);
    var_2 = countOneBits(u_input.e);
    let var_3 = arg_0;
    return func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, 190f, var_3.b, -390f))) * vec4<f32>(-417f, -1185f, arg_3.x, 140f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(669f, 943f, arg_3.x, global2.b), vec4<f32>(-873f, -260f, 170f, 1852f)))))), global0.b, _wgslsmith_f_op_f32(-arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_1(vec4<f32>(-1862f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b + global2.a.x))), _wgslsmith_f_op_f32(step(global0.b, -1089f)), global0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1556f)))), 263f)), global0.a.x), -vec4<i32>(_wgslsmith_add_i32(0i, -41589i), _wgslsmith_div_i32(u_input.a.x, 0i) ^ u_input.d, select(u_input.d, -2147483647i, !global1[_wgslsmith_index_u32(global2.c, 10u)]), -(1i & u_input.d)), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f + global2.a.x) + global2.a.x), _wgslsmith_f_op_f32(exp2(global2.b)))));
    var var_0 = true;
    let var_1 = func_5(func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-758f, global2.a.x, global0.b, global2.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global2.b, 748f, global0.a.x), vec4<f32>(global0.b, global2.a.x, global0.b, -199f), true)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-996f)), global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(floor(global2.a.x))), vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(10586u, 10u)], true, global1[_wgslsmith_index_u32(4294967295u, 10u)])), !global1[_wgslsmith_index_u32(global2.d, 10u)], select(global1[_wgslsmith_index_u32(global0.d, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(global2.c, 10u)] | true))), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(1773f * global2.b)), ~(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, -1i, u_input.d, -1i), ~vec4<i32>(u_input.a.x, u_input.d, u_input.e.x, 1i), firstLeadingBit(vec4<i32>(-30882i, u_input.a.x, u_input.e.x, u_input.d)))), abs(~25854u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-499f, 645f, _wgslsmith_f_op_f32(global2.a.x - global2.b)), global0.a)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), 427f, 1051f)));
    global0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, -1577f, -1644f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-165f, global2.b, global0.a.x, 163f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1000f, global0.b, global0.b) + vec4<f32>(576f, -382f, 946f, var_1.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(154f)), 1000f, global2.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, var_1.a.x, global2.a.x, 885f), vec4<f32>(546f, global2.a.x, global2.a.x, global2.b))))), global2.b, -517f);
    let var_2 = var_1;
    var var_3 = vec4<i32>(u_input.a.x, -28386i, select(u_input.d, u_input.d, false && (global1[_wgslsmith_index_u32(~4294967295u, 10u)] | true)), u_input.d);
    var var_4 = global2.a.xy;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(23008u, -49497i, vec4<i32>(1101i, u_input.d, var_3.x, min(_wgslsmith_sub_i32(u_input.d, select(-24409i, -1i, true)), 1i)), u_input.c);
}

