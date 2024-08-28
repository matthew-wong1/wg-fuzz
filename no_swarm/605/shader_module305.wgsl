struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global1 = array<Struct_1, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, -1808f)), true, arg_0.c ^ (countOneBits(u_input.c.x) << (_wgslsmith_sub_u32(min(4294967295u, u_input.e), 1u) % 32u)));
    let var_1 = u_input.a;
    global2 = array<Struct_1, 4>();
    global0 = !(!(!(!vec4<bool>(var_0.b, true, global0.x, var_0.b))));
    return ~(~select(var_1.zwz, vec3<i32>(arg_1, arg_1, 2147483647i) | vec3<i32>(u_input.d, arg_1, u_input.d), true)) << (vec3<u32>(4294967295u, _wgslsmith_add_u32((0u ^ u_input.c.x) << (~4294967295u % 32u), u_input.c.x), firstTrailingBit(~(arg_0.c >> (22044u % 32u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = max(_wgslsmith_add_vec3_i32(min(-func_3(Struct_1(1000f, arg_1.b, 48350u), u_input.b), u_input.a.wyw), ~u_input.a.xwx), firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.a.wxy, vec3<i32>(u_input.a.x, ~44995i, u_input.a.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_1.a)), all(select(vec4<bool>(global0.x, !arg_2.b, all(vec4<bool>(true, arg_2.b, false, global0.x)), true), !vec4<bool>(arg_1.b, global0.x, arg_0.b, false), (arg_2.b || global0.x) || global0.x)), reverseBits(_wgslsmith_clamp_u32((arg_0.c >> (29666u % 32u)) & firstTrailingBit(1u), u_input.c.x, firstTrailingBit(~arg_0.c))));
    var var_2 = _wgslsmith_sub_i32(-(~_wgslsmith_add_i32(32728i, u_input.b)), 28926i) << (_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0.c, 0u, var_1.c, 4294967295u)), select(~firstTrailingBit(vec4<u32>(arg_1.c, 4294967295u, var_1.c, 4294967295u)), vec4<u32>(arg_0.c & arg_0.c, u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17290u, 1u, 4294967295u), vec4<u32>(arg_0.c, var_1.c, u_input.e, arg_2.c))), !(!vec4<bool>(var_1.b, arg_1.b, arg_1.b, false)))) % 32u);
    let var_3 = ~vec2<i32>(~abs(_wgslsmith_div_i32(1i, u_input.d)), var_0.x);
    var var_4 = _wgslsmith_div_vec2_u32(reverseBits(~u_input.c.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(abs(50715u)), reverseBits(u_input.e)), ~_wgslsmith_clamp_vec2_u32(~u_input.c.yy, u_input.c.zy, select(vec2<u32>(14120u, arg_2.c), u_input.c.zx, vec2<bool>(var_1.b, false)))));
    return select(!vec4<bool>(arg_0.b, arg_2.b || true, any(select(global0.zzz, global0.xxz, global0.x)), _wgslsmith_f_op_f32(-2102f * 2351f) == _wgslsmith_f_op_f32(139f + var_1.a)), vec4<bool>(false, any(select(global0.wzz, global0.wxw, arg_1.b)) || arg_1.b, var_1.b, true), !select(vec4<bool>(var_3.x == -56613i, all(vec3<bool>(arg_2.b, arg_1.b, true)), arg_0.b, false), vec4<bool>(all(vec4<bool>(true, var_1.b, arg_0.b, false)), false, arg_2.b, var_1.b), _wgslsmith_sub_i32(var_3.x, var_3.x) > -u_input.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = !vec2<bool>(global0.x, global0.x);
    global0 = !select(select(vec4<bool>(true, true, all(vec3<bool>(true, var_0.x, true)), all(global0.wzz)), !func_2(Struct_1(arg_1.x, false, 40519u), Struct_1(232f, var_0.x, 26112u), global2[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(true, true, true, true)), vec4<bool>(global0.x, _wgslsmith_sub_i32(-83630i, 13117i) != min(41270i, u_input.a.x), false || any(vec4<bool>(true, var_0.x, false, false)), _wgslsmith_f_op_f32(trunc(-609f)) <= _wgslsmith_f_op_f32(-arg_1.x)), !vec4<bool>(true, any(vec4<bool>(global0.x, var_0.x, false, false)), true, true));
    let var_1 = arg_0.x;
    global2 = array<Struct_1, 4>();
    let var_2 = 746f;
    return vec4<u32>(~arg_0.x, ~(~_wgslsmith_div_u32(4294967295u, ~arg_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(~var_1), 38797u, ~(0u & u_input.c.x), countOneBits(54843u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), countOneBits(27882u), ~(~arg_0.x), var_1 << (max(50584u, u_input.e) % 32u))), select(var_1, _wgslsmith_sub_u32(reverseBits(~4294967295u), ~u_input.e), var_0.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global0 = !vec4<bool>((_wgslsmith_mod_u32(u_input.c.x, arg_2.c) ^ min(u_input.c.x, 4294967295u)) >= arg_1.c, arg_2.b, true, false);
    var var_1 = arg_1;
    global2 = array<Struct_1, 4>();
    let var_2 = vec4<bool>(~u_input.e <= abs(15035u >> (~4294967295u % 32u)), true, false, false);
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(54615u, ~(~110095u)), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~(29423u | ~(~(u_input.e << (26936u % 32u)))), 4u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f));
    var var_2 = ~1i;
    let var_3 = func_4(select(~func_1(_wgslsmith_div_vec2_u32(u_input.c.xz, u_input.c.xy), vec4<f32>(-619f, var_0.a, -1820f, var_0.a)), select(vec4<u32>(94494u, firstLeadingBit(38105u), max(u_input.e, 63026u), u_input.c.x), vec4<u32>(reverseBits(0u), 1u, u_input.e, u_input.c.x), func_2(global2[_wgslsmith_index_u32(~2208u, 4u)], Struct_1(var_0.a, false, u_input.c.x), Struct_1(-722f, false, 3584u))), false), Struct_1(1582f, global0.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.c, u_input.c.x, 4294967295u), ~1u)), global2[_wgslsmith_index_u32(func_1(vec2<u32>(var_0.c ^ _wgslsmith_div_u32(0u, 1u), ~(~0u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-883f, 2365f, 553f, 1000f) - vec4<f32>(var_0.a, var_0.a, 236f, -1105f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), 1f, _wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(select(var_0.a, -1000f, false)))))).x, 4u)]);
    var var_4 = !select(var_3.b, false, true);
    var var_5 = func_4(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 39684u, 4294967295u), vec4<u32>(4294967295u, var_0.c, var_0.c, 23980u) ^ vec4<u32>(var_0.c, var_0.c, 1u, var_0.c)), ~_wgslsmith_sub_u32(~u_input.e, firstTrailingBit(4294967295u)), ~var_3.c, ~var_0.c), global2[_wgslsmith_index_u32(var_3.c, 4u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(393f, var_0.a))), select(!(10248i == u_input.b), false, all(!vec4<bool>(global0.x, global0.x, var_3.b, var_0.b))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(20997u, 47267u, var_3.c, 7678u), vec4<u32>(71548u, var_0.c, u_input.c.x, var_3.c)), func_1(u_input.c.zz, vec4<f32>(1343f, 812f, 317f, -854f)).x, true) ^ _wgslsmith_mod_u32(~1u, reverseBits(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(459f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_3.a)))))), var_3.a, _wgslsmith_div_vec4_u32(~countOneBits(~vec4<u32>(29615u, u_input.c.x, 953u, var_0.c)), ~abs(vec4<u32>(38835u, var_3.c, var_0.c, 0u) << (vec4<u32>(var_3.c, 0u, 4294967295u, 1u) % vec4<u32>(32u)))), u_input.c.zy);
}

