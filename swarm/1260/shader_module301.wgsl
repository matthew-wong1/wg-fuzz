struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<u32> {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = Struct_1(all(vec4<bool>(select(arg_0.a, any(vec2<bool>(false, arg_0.a)), all(vec2<bool>(arg_0.a, arg_0.a))), any(!vec4<bool>(arg_0.a, arg_0.a, true, true)), false, false)), vec2<bool>(all(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), any(!select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))), -(~u_input.c.x) & -u_input.b, firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.a.x) & vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, 67224u)) ^ u_input.a), _wgslsmith_div_f32(945f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12679u, 6u)])));
    let var_1 = Struct_3(var_0.d.x <= 1u);
    return abs(firstTrailingBit(reverseBits(min(firstLeadingBit(vec4<u32>(var_0.d.x, u_input.d, var_0.d.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.a.x, var_0.d.x), vec4<u32>(80401u, u_input.a.x, u_input.d, u_input.d))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_u32(func_3(Struct_3(arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -546f, 629f), vec3<f32>(666f, global0[_wgslsmith_index_u32(u_input.d, 6u)], -775f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -735f, -712f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(80402u, 6u)], -110f, global0[_wgslsmith_index_u32(u_input.d, 6u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, -789f, 990f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], -264f, 494f)))))), vec4<u32>(max(firstLeadingBit(40352u), reverseBits(1u)), u_input.a.x, min(~arg_1, 88581u), firstLeadingBit(u_input.a.x)) >> (vec4<u32>(1u, countOneBits(u_input.a.x | u_input.d), max(1u, u_input.a.x), ~11037u) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(13392u, 22340u, u_input.d, 0u)), ~vec4<u32>(arg_1, u_input.d, u_input.d, arg_1)), select(vec4<u32>(func_3(Struct_3(true), vec3<f32>(-804f, global0[_wgslsmith_index_u32(arg_1, 6u)], -284f)).x, _wgslsmith_mult_u32(4294967295u, 1u), 4294967295u, select(55712u, u_input.a.x, arg_0.x)), vec4<u32>(arg_1, ~u_input.d, reverseBits(u_input.a.x), abs(1u)), any(vec2<bool>(false, arg_0.x)))));
    let var_1 = Struct_1(all(!(!vec2<bool>(arg_0.x, true))), !(!select(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), arg_0.x), !arg_0.zz, all(arg_0))), min(~(-2147483647i), _wgslsmith_div_i32(~(-19456i), abs(u_input.c.x))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.wxw, var_0.xzz) ^ _wgslsmith_mod_u32(var_0.x, 31790u), firstLeadingBit(u_input.a.x)), 803f);
    var var_2 = var_1.b.x;
    let var_3 = 11986u;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-667f, -273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(78896u, 6u)], global0[_wgslsmith_index_u32(var_3, 6u)])))), -795f, var_1.e) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1094f, 1039f, -1228f, var_1.e))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-961f, -540f, -410f, var_1.e), vec4<f32>(984f, 464f, var_1.e, -778f)) - vec4<f32>(var_1.e, global0[_wgslsmith_index_u32(4294967295u, 6u)], -1000f, -1309f))))));
    return Struct_3(true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = vec4<i32>(-arg_1.c.c, arg_1.c.c, u_input.c.x, arg_1.d);
    let var_1 = arg_1.c;
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_2 = arg_0;
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_0 = vec4<bool>(any(vec3<bool>(!(global0[_wgslsmith_index_u32(u_input.d, 6u)] >= -639f), true, true)), func_4(func_2(vec3<bool>(true, false, true), u_input.a.x | ~u_input.a.x), Struct_2(~vec4<u32>(u_input.a.x, 3620u, 29572u, u_input.a.x), vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, false, true)), true), Struct_1(true, select(vec2<bool>(false, false), vec2<bool>(true, false), true), _wgslsmith_sub_i32(u_input.c.x, arg_0), u_input.a ^ u_input.a, _wgslsmith_f_op_f32(ceil(1185f))), ~arg_0)), func_2(vec3<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 6u)] - global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 6u)] * global0[_wgslsmith_index_u32(u_input.d, 6u)]), all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true))), 1u).a, false);
    global0 = array<f32, 6>();
    let var_1 = select(vec3<bool>(~min(-35372i, arg_0) <= firstLeadingBit(24331i), var_0.x, false), var_0.yzx, var_0.x);
    return Struct_1(!func_4(Struct_3(false != var_0.x), Struct_2(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.d), select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, false, false, false), vec4<bool>(false, var_0.x, true, true)), Struct_1(false, var_0.yy, 22127i, vec2<u32>(u_input.a.x, u_input.a.x), -1974f), -u_input.b)), !var_1.yx, 26978i, _wgslsmith_sub_vec2_u32(func_3(Struct_3(true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, global0[_wgslsmith_index_u32(30864u, 6u)], 1694f))).yx, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(105747u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d, u_input.a.x, 0u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(20719u, 74174u, 4294967295u)), ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), !vec3<bool>(var_1.x, true, var_1.x)))), 6u)]);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-947f, 382f, -2018f, 334f) - vec4<f32>(1244f, arg_1.c.e, -1000f, -1541f)), vec4<f32>(-244f, 1000f, arg_0, arg_1.c.e))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(14264u, 6u)])))), arg_1.c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1536f - arg_1.c.e) * _wgslsmith_f_op_f32(-1206f * 304f)), _wgslsmith_f_op_f32(1732f * -648f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(52048u & arg_1.d.x, arg_1.d.x), _wgslsmith_mult_vec2_u32(arg_1.d, arg_1.d));
    var var_1 = -705f;
    let var_2 = ~_wgslsmith_div_i32(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, arg_1.c, arg_1.c), vec4<i32>(0i, u_input.b, -17028i, u_input.c.x))), 0i);
    let var_3 = _wgslsmith_div_vec4_f32(arg_2, arg_2);
    let var_4 = Struct_1(arg_1.a, !(!func_1(1i).b), ~var_2, countOneBits(vec2<u32>(u_input.a.x, var_0.x)) >> (~vec2<u32>(firstLeadingBit(0u), arg_1.d.x) % vec2<u32>(32u)), var_3.x);
    return func_1(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(0u, 6u)], Struct_2(min(vec4<u32>(26231u, 4294967295u, 0u, u_input.a.x), vec4<u32>(4294967295u, 0u, u_input.a.x, 1u)), vec4<bool>(true, true, true, true), func_1(u_input.b), 26258i))), 2907f, -873f), func_1(u_input.b ^ ~(~(-48224i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, global0[_wgslsmith_index_u32(57891u, 6u)], 753f, 2824f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(5032u, 6u)], -717f, global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(67246u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]) * vec4<f32>(global0[_wgslsmith_index_u32(85091u, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1312f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -2082f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))))));
    let var_1 = ~vec2<i32>(var_0.c, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-10184i, 1538i, var_0.c, 15815i), vec4<i32>(0i, -1i, var_0.c, var_0.c))), vec4<i32>(-u_input.c.x, var_0.c, u_input.b << (4294967295u % 32u), 0i)));
    let var_2 = Struct_2(~(~vec4<u32>(var_0.d.x, u_input.d, var_0.d.x, 4294967295u)) & vec4<u32>(~10432u, ~(~var_0.d.x), ~u_input.d >> (var_0.d.x % 32u), var_0.d.x), vec4<bool>(false, false, var_0.a, !func_6(vec3<f32>(2146f, 237f, global0[_wgslsmith_index_u32(69438u, 6u)]), Struct_1(var_0.b.x, var_0.b, -3486i, var_0.d, -681f), vec4<f32>(var_0.e, 1316f, var_0.e, 753f)).b.x), var_0, var_0.c);
    var var_3 = _wgslsmith_f_op_f32(func_5(var_2.c.e, Struct_2(select(var_2.a, ~var_2.a, false), vec4<bool>(false, ~1u >= _wgslsmith_add_u32(var_2.c.d.x, 39769u), true, var_2.b.x || (184f < var_0.e)), func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c.e, var_0.e, 1000f)))), var_2.c, vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(164f * -2130f), -1148f, 160f)), -_wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.c.c, 3969i), u_input.b))));
    global0 = array<f32, 6>();
    var var_4 = _wgslsmith_f_op_f32(var_2.c.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-918f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(min(-vec3<i32>(var_2.d, var_0.c, var_0.c), vec3<i32>(0i, var_2.c.c, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f - 178f)), u_input.a.x, var_2.a);
}

