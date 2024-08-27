struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<f32>(-746f, -586f, -672f, -2078f), vec2<bool>(true, true)), Struct_2(vec4<f32>(-369f, 605f, 1680f, 662f), vec2<bool>(false, false)), Struct_2(vec4<f32>(1051f, -557f, 234f, -970f), vec2<bool>(false, true)), Struct_2(vec4<f32>(1000f, -347f, -1000f, 359f), vec2<bool>(false, false)), Struct_2(vec4<f32>(476f, -411f, 569f, 1000f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-1815f, -374f, -1151f, 1085f), vec2<bool>(true, true)), Struct_2(vec4<f32>(-1034f, 745f, -114f, -864f), vec2<bool>(false, false)), Struct_2(vec4<f32>(318f, 333f, -363f, 1773f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-1908f, -313f, 563f, 1000f), vec2<bool>(false, true)), Struct_2(vec4<f32>(-795f, -1000f, -826f, 1599f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-741f, 427f, 484f, -687f), vec2<bool>(true, true)), Struct_2(vec4<f32>(-1045f, -741f, -426f, -1000f), vec2<bool>(true, false)), Struct_2(vec4<f32>(213f, -322f, 1048f, -520f), vec2<bool>(false, false)), Struct_2(vec4<f32>(179f, -872f, -825f, 1195f), vec2<bool>(false, false)), Struct_2(vec4<f32>(1284f, -511f, 157f, -238f), vec2<bool>(false, true)), Struct_2(vec4<f32>(-439f, -453f, -915f, 1000f), vec2<bool>(true, false)), Struct_2(vec4<f32>(-1000f, 211f, -816f, -375f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-1089f, 319f, 1830f, -125f), vec2<bool>(false, false)), Struct_2(vec4<f32>(371f, 2342f, 389f, -1255f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-668f, -1018f, -245f, 626f), vec2<bool>(true, true)), Struct_2(vec4<f32>(-3697f, 750f, -1429f, 1219f), vec2<bool>(false, false)), Struct_2(vec4<f32>(-1016f, 2809f, 1000f, 870f), vec2<bool>(true, true)), Struct_2(vec4<f32>(472f, -2049f, -315f, -917f), vec2<bool>(true, true)), Struct_2(vec4<f32>(-382f, 2096f, 1112f, -456f), vec2<bool>(false, false)));

var<private> global3: f32 = -1891f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, 1183f, -523f, 1227f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1107f, 1149f, 294f, -1000f), vec4<f32>(-433f, 679f, 664f, 614f))) - vec4<f32>(-1270f, -254f, -161f, -252f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, -1582f, -724f, -1574f) - vec4<f32>(1000f, 1471f, -575f, -320f)))))), global0.zw);
    global0 = !vec4<bool>(global0.x, false, !var_0.b.x, true);
    var var_1 = Struct_1(-1173f, _wgslsmith_sub_vec4_i32(select(select(u_input.e, u_input.d, global0.x), ~u_input.d, vec4<bool>(global0.x, true, false, var_0.b.x)) & _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(6410i, u_input.a, -1i, u_input.c.x), vec4<i32>(u_input.d.x, u_input.e.x, 0i, -2147483647i)), countOneBits(vec4<i32>(0i, -24579i, -15671i, 2147483647i))), ~vec4<i32>(min(u_input.b.x, 0i), -u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, -2147483647i, 14289i), u_input.d), ~8374i)));
    var_1 = Struct_1(_wgslsmith_div_f32(var_0.a.x, 549f), vec4<i32>(1i, -2147483647i, _wgslsmith_mult_i32(~0i, _wgslsmith_clamp_i32(1i, u_input.c.x, u_input.d.x)) & (~u_input.b.x & -u_input.e.x), u_input.e.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), -1550f) * _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_div_f32(var_1.a, -1082f)), global0.x))) * var_0.a.x);
    return any(vec2<bool>(all(!vec2<bool>(global0.x, var_0.b.x)), var_0.b.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    var var_0 = true;
    let var_1 = select(vec4<bool>(!(!global0.x), func_3(), false, all(vec4<bool>(global0.x, global0.x, any(vec2<bool>(global0.x, false)), global0.x))), vec4<bool>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 72023u, 13530u), vec4<u32>(32505u, arg_0.x, 4294967295u, arg_0.x)) > _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), arg_0.x | 8098u), select(global0.x, !global0.x, false), global0.x), true & (global0.x & all(global0.ywx)));
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(max(1f, arg_1)), !(var_1.x && global0.x)))));
    global1 = array<vec3<f32>, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -128f), vec4<i32>(u_input.c.x, ~(-select(2147483647i, u_input.a, true)), _wgslsmith_add_i32(u_input.b.x, -44544i), i32(-1i) * -33023i));
    return countOneBits(2147483647i);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -595f)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-arg_1.b.xw, ~(-arg_0.xy)), _wgslsmith_mult_i32(-arg_0.x, 2147483647i) | 12781i, _wgslsmith_sub_i32(func_2(~vec2<u32>(1u, 0u), -454f), countOneBits(arg_1.b.x << (7606u % 32u))), arg_1.b.x));
    var var_1 = !global0.xz;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1240f, var_0.a, var_0.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.a, -1542f, -286f), vec4<f32>(-1000f, 183f, var_0.a, arg_1.a))))) - vec4<f32>(-152f, 1034f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(945f - var_0.a), 767f)))));
    global0 = !vec4<bool>(!(global0.x | any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))), true, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-528f, 307f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1166f))), any(select(select(vec4<bool>(var_1.x, var_1.x, true, global0.x), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, global0.x, false, false)), select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(global0.x, false, true, global0.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, global0.x, false), vec4<bool>(var_1.x, true, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(-978f, var_0.a), 578f), _wgslsmith_f_op_f32(floor(1190f))));
    return func_2(_wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a, 1170f, false)), var_3)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<u32>(~_wgslsmith_mult_u32(4294967295u, 0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(29809u, 52525u, 4294967295u))), vec3<u32>(abs(4294967295u), 1u, 69755u))));
    let var_1 = select(global0.wzx, vec3<bool>(all(vec3<bool>(any(vec4<bool>(global0.x, true, global0.x, true)), false, true)), ((25215i | u_input.d.x) >> (_wgslsmith_div_u32(41505u, var_0.x) % 32u)) < ~select(2147483647i, arg_1.b.x, false), global0.x), !vec3<bool>(func_3(), global0.x, select(global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x)), !global0.x)));
    let var_2 = var_0.x;
    var var_3 = ~_wgslsmith_sub_i32(arg_1.b.x, ~(~(~arg_1.b.x)));
    global1 = array<vec3<f32>, 21>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(vec2<i32>(func_1(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -7567i), Struct_1(120f, u_input.c)), _wgslsmith_add_i32(-14611i, 1i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.c))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -799f))))), -vec4<i32>(0i, abs(18915i) & u_input.b.x, -12096i, abs(u_input.b.x)));
    let var_1 = global1[_wgslsmith_index_u32(24413u, 21u)];
    global3 = _wgslsmith_f_op_f32(trunc(var_1.x));
    global1 = array<vec3<f32>, 21>();
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_div_f32(var_0.a, var_0.a))), -750f, -2164f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(-654f + 1133f), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(var_0.a, var_1.x))))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(50746u, 0u, 1u, 1u), ~vec4<u32>(100597u, 1u, 2906u, 15750u)), 1u) ^ vec2<u32>(firstLeadingBit(1u), ~(~0u)), vec3<u32>(1u, 4294967295u | _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24344u, 18485u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u))), abs(firstTrailingBit(68830u) | reverseBits(26604u))), u_input.c.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.c.x, u_input.b.x), var_2)), 1000f))));
}

