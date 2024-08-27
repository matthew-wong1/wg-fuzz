struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(2147483647i, -27429i, 38491i), vec3<i32>(-30246i, 0i, 6063i), vec3<i32>(0i, 47256i, 0i), vec3<i32>(2147483647i, -1i, -10202i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -66063i, -13852i), vec3<i32>(-15992i, -13574i, -1i), vec3<i32>(-64766i, 1i, -6710i), vec3<i32>(i32(-2147483648), 20967i, -37864i), vec3<i32>(0i, 1i, -535i), vec3<i32>(1i, 1i, -53355i), vec3<i32>(79876i, -8796i, -1i), vec3<i32>(-14941i, 10241i, 2147483647i), vec3<i32>(40987i, -50700i, 2147483647i), vec3<i32>(492i, 2147483647i, 2147483647i), vec3<i32>(-32629i, 0i, -84662i));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, i32(-2147483648), vec2<bool>(false, false)), Struct_1(0u, -1i, vec2<bool>(false, false)), Struct_1(25607u, 2147483647i, vec2<bool>(true, false)), Struct_1(38405u, -19476i, vec2<bool>(true, true)), Struct_1(57958u, -1i, vec2<bool>(false, true)), Struct_1(4294967295u, 48286i, vec2<bool>(false, true)), Struct_1(4294967295u, 5521i, vec2<bool>(false, false)), Struct_1(4294967295u, 69644i, vec2<bool>(true, false)), Struct_1(0u, i32(-2147483648), vec2<bool>(true, true)), Struct_1(0u, i32(-2147483648), vec2<bool>(false, false)), Struct_1(33090u, -1i, vec2<bool>(true, false)), Struct_1(4294967295u, 1i, vec2<bool>(false, true)), Struct_1(57003u, -1i, vec2<bool>(false, true)), Struct_1(24771u, -27219i, vec2<bool>(false, true)), Struct_1(60111u, 64031i, vec2<bool>(false, true)), Struct_1(0u, 4838i, vec2<bool>(false, false)), Struct_1(93925u, -28564i, vec2<bool>(false, true)), Struct_1(0u, 2147483647i, vec2<bool>(true, false)), Struct_1(0u, 4797i, vec2<bool>(false, false)));

var<private> global2: array<vec2<bool>, 12>;

var<private> global3: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-2058f, 294f, -288f), vec3<f32>(315f, 454f, -442f), vec3<f32>(-404f, 281f, 879f), vec3<f32>(238f, -1850f, -1000f), vec3<f32>(-1596f, -1000f, 518f), vec3<f32>(1255f, 601f, -311f), vec3<f32>(-503f, -781f, -197f), vec3<f32>(588f, -1000f, 795f), vec3<f32>(1176f, -413f, -894f), vec3<f32>(1093f, -999f, 131f), vec3<f32>(-815f, -1811f, -100f), vec3<f32>(-640f, -628f, 649f), vec3<f32>(-1257f, -859f, -561f), vec3<f32>(669f, 597f, -317f), vec3<f32>(-2406f, -819f, -257f), vec3<f32>(-228f, 625f, -832f), vec3<f32>(509f, -948f, -1283f), vec3<f32>(-420f, 1000f, -528f), vec3<f32>(-197f, 357f, 1685f), vec3<f32>(-475f, 1128f, -495f), vec3<f32>(-600f, -158f, -949f), vec3<f32>(994f, -1032f, 1860f), vec3<f32>(960f, -332f, -436f), vec3<f32>(-710f, 2312f, -1009f), vec3<f32>(-562f, -343f, 1079f), vec3<f32>(1268f, 574f, -425f), vec3<f32>(-602f, 169f, -1285f), vec3<f32>(448f, -1391f, 975f), vec3<f32>(622f, -416f, 2683f), vec3<f32>(714f, 990f, 276f));

var<private> global4: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)), _wgslsmith_f_op_f32(-1014f - _wgslsmith_f_op_f32(floor(660f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1227f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1247f, -333f, -265f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(2258u, 30u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3[_wgslsmith_index_u32(21221u, 30u)], _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(abs(28832u), 30u)] * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-337f, 676f, -1000f)))))), Struct_1(4294967295u, max(2147483647i, 25349i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.a, ~1u)), 12u)]), global1[_wgslsmith_index_u32(31000u, 19u)]);
    let var_1 = Struct_2(Struct_1(~(~63293u), 28137i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.d.a, u_input.a) ^ ~select(var_0.a.a, var_0.a.a, var_0.d.c.x), 12u)]), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_0.e.a, 86050u), vec2<u32>(4294967295u, 2537u), true), vec2<u32>(1u, min(var_0.a.a, u_input.a))), 30u)] * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(~1u, 30u)])) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-1025f)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(round(var_0.c.x))))), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.e.a, var_0.e.a), ~vec3<u32>(u_input.a, 0u, 2528u))), 30u)], Struct_1(4294967295u, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0.d.b, 2147483647i), vec4<i32>(-2147483647i, var_0.d.b, -895i, var_0.e.b))), vec2<bool>(true, var_0.a.c.x)), Struct_1(1u, -9793i, vec2<bool>(!any(vec3<bool>(var_0.a.c.x, false, false)), true)));
    let var_2 = var_1;
    let var_3 = var_2.d;
    global4 = _wgslsmith_f_op_f32(-1414f + 1000f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -468f, -358f, var_1.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1199f, 836f, 1921f, 775f) + vec4<f32>(-1459f, var_0.b.x, -1295f, -1000f))) - vec4<f32>(var_2.b.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -830f), var_2.c.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.b.x, var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1989f + 505f) * -1756f), _wgslsmith_f_op_f32(-1f)), vec4<f32>(var_2.b.x, -3120f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-643f, 672f)))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~18002u, 19u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -239f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 676f, -1806f))), vec3<f32>(_wgslsmith_div_f32(542f, arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -1894f, -185f)))), _wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 45079u), 30u)]))))), global1[_wgslsmith_index_u32(~u_input.a, 19u)], Struct_1(~12189u, abs(i32(-1i) * -27302i), vec2<bool>(true, true)));
    global1 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_sub_vec2_u32(min(abs(~(vec2<u32>(var_0.e.a, var_0.d.a) & vec2<u32>(u_input.a, var_0.e.a))), firstTrailingBit((vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(u_input.a, u_input.a)) | abs(vec2<u32>(var_0.e.a, var_0.e.a)))), ~select(~(~vec2<u32>(u_input.a, 1324u)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_0.a.a), select(vec2<u32>(var_0.d.a, u_input.a), vec2<u32>(0u, var_0.a.a), true)), select(vec2<bool>(false, true), select(vec2<bool>(true, var_0.d.c.x), vec2<bool>(false, var_0.d.c.x), false), var_0.e.c.x)));
    global2 = array<vec2<bool>, 12>();
    let var_2 = select(select(!select(!vec3<bool>(var_0.d.c.x, var_0.a.c.x, true), vec3<bool>(false, var_0.e.c.x, var_0.a.c.x), true), vec3<bool>(!(!var_0.d.c.x), !(!var_0.a.c.x), true), !(var_0.a.b == (var_0.d.b | -16752i))), !(!select(!vec3<bool>(false, var_0.a.c.x, false), vec3<bool>(var_0.e.c.x, var_0.e.c.x, true), vec3<bool>(false, false, true))), any(vec4<bool>(!(!var_0.e.c.x), all(!global2[_wgslsmith_index_u32(var_1.x, 12u)]), any(select(vec3<bool>(false, false, var_0.e.c.x), vec3<bool>(true, var_0.d.c.x, true), true)), var_0.d.c.x)));
    return var_0.e.b | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.b, -2147483647i, -1i, var_0.d.b), vec4<i32>(-12863i, var_0.a.b, var_0.a.b, var_0.e.b)), vec4<i32>(~0i, -2147483647i, 8944i, countOneBits(-617i))), _wgslsmith_add_i32(-(~var_0.d.b), max(var_0.d.b, countOneBits(var_0.e.b))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = vec2<i32>(func_3(_wgslsmith_f_op_vec4_f32(func_2())), firstTrailingBit(max(abs(-1i), 15500i)));
    var var_1 = -firstLeadingBit(0i);
    global0 = array<vec3<i32>, 16>();
    var var_2 = Struct_2(global1[_wgslsmith_index_u32((_wgslsmith_clamp_u32(select(arg_0.a, u_input.a, arg_0.c.x), 1u, _wgslsmith_add_u32(arg_0.a, u_input.a)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 89012u, u_input.a), vec4<u32>(101303u, u_input.a, u_input.a, 1u))) | ~(~(~arg_0.a)), 19u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 47790u, 4294967295u), vec4<u32>(u_input.a, arg_0.a, u_input.a, 4226u) & vec4<u32>(1u, 56624u, 4294967295u, 1u)), 30u)])), _wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(arg_0.a, 30u)])), global1[_wgslsmith_index_u32(~1u, 19u)], Struct_1(~(~_wgslsmith_mod_u32(67805u, 28790u)), _wgslsmith_sub_i32(26914i, _wgslsmith_mult_i32(-arg_0.b, max(var_0.x, arg_0.b))), select(global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(34477u)), 12u)], global2[_wgslsmith_index_u32(0u, 12u)], select(arg_0.c, vec2<bool>(true, true), !arg_0.c))));
    return ~(~abs(select(vec2<u32>(17003u, 4294967295u), vec2<u32>(16167u, 0u), vec2<bool>(arg_0.c.x, arg_0.c.x))) >> (reverseBits(vec2<u32>(var_2.a.a, 1u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(1i, ~_wgslsmith_clamp_i32(-23661i, -1i, _wgslsmith_sub_i32(-2147483647i, 1i)), false);
    global0 = array<vec3<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_sub_vec2_u32(func_1(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, 0u), 19u)]), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1015u, u_input.a, 4294967295u)), ~vec3<u32>(u_input.a, 1u, u_input.a)))), 1u);
}

