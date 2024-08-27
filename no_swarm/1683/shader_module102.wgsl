struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(14921u, 0u, 4294967295u, 36665u), 2137f, vec4<f32>(-1413f, -641f, -287f, 510f), vec4<i32>(1i, -95893i, 0i, -29684i), -150f), Struct_1(vec4<u32>(2452u, 15333u, 10703u, 96822u), 1000f, vec4<f32>(-291f, -898f, -1392f, -554f), vec4<i32>(-1016i, 3718i, 1658i, 0i), 503f), Struct_1(vec4<u32>(4294967295u, 29072u, 9657u, 1u), 290f, vec4<f32>(254f, 919f, -1366f, -755f), vec4<i32>(2147483647i, 60681i, i32(-2147483648), 0i), 397f), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 68737u), -1282f, vec4<f32>(530f, 1269f, -794f, 469f), vec4<i32>(24106i, 46180i, 0i, -1i), 1373f), Struct_1(vec4<u32>(0u, 89630u, 1u, 4294967295u), 1000f, vec4<f32>(-641f, -182f, -708f, -1000f), vec4<i32>(-24671i, 36615i, -1i, 1135i), -135f), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 51985u), 1000f, vec4<f32>(1105f, -580f, -1000f, 126f), vec4<i32>(i32(-2147483648), -1i, 0i, 1i), -1139f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 8481u), 493f, vec4<f32>(-749f, -1663f, -583f, -176f), vec4<i32>(0i, i32(-2147483648), -19731i, 0i), -285f), Struct_1(vec4<u32>(49244u, 1u, 48376u, 0u), -122f, vec4<f32>(935f, 909f, 1662f, -456f), vec4<i32>(0i, 4930i, 0i, -43263i), -796f), Struct_1(vec4<u32>(45608u, 9808u, 20426u, 40524u), -1452f, vec4<f32>(-1259f, -472f, -1282f, -255f), vec4<i32>(-9554i, 22522i, 2147483647i, 0i), 2015f), Struct_1(vec4<u32>(4294967295u, 46428u, 63178u, 1u), -963f, vec4<f32>(-1586f, 1020f, -1252f, 475f), vec4<i32>(24893i, 40004i, -34218i, 1i), 131f), Struct_1(vec4<u32>(48426u, 1u, 24963u, 58706u), 796f, vec4<f32>(846f, -117f, 1169f, -326f), vec4<i32>(26028i, 1i, 21162i, -1i), 494f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = firstTrailingBit(arg_1.d) >> (~countOneBits(arg_1.a) % vec4<u32>(32u));
    return vec4<i32>(30607i, ~u_input.d, _wgslsmith_mod_i32(~(i32(-1i) * -55033i), arg_1.d.x), _wgslsmith_add_i32(firstTrailingBit(-abs(-1i)), -2147483647i));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = !any(select(!select(arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(!arg_0, !arg_0, !arg_0.x), arg_0.x));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~(~abs(countOneBits(4294967295u))), 11u)], u_input.b, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 44557u), abs(vec2<u32>(59209u, 37956u))), ~1u), ~(~abs(1u))), -454f > _wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(ceil(-155f))), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, -457f, 137f, -383f)))), _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.b, 1i, 18916i, -1i) & vec4<i32>(14065i, 1i, 0i, -8104i)), -func_3(-14152i, global0[_wgslsmith_index_u32(69329u, 11u)], vec3<bool>(true, var_0, true))), _wgslsmith_div_f32(545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(173f, -2220f))))));
    global0 = array<Struct_1, 11>();
    var_1 = Struct_2(Struct_1(vec4<u32>(~(~var_1.c), var_1.c, ~1u, _wgslsmith_mult_u32(15603u, var_1.a.a.x) ^ 26711u), var_1.e.c.x, var_1.a.c, func_3(-_wgslsmith_div_i32(var_1.b, u_input.a), global0[_wgslsmith_index_u32(var_1.e.a.x | 306u, 11u)], vec3<bool>(true, any(vec2<bool>(false, false)), var_0)), _wgslsmith_f_op_f32(max(var_1.e.c.x, _wgslsmith_f_op_f32(f32(-1f) * -439f)))), var_1.b, 4294967295u, ~(~(~var_1.c)) <= 56107u, var_1.e);
    let var_2 = Struct_2(Struct_1(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.e.a.ww, var_1.e.a.zw), max(0u, 0u), ~var_1.c, var_1.e.a.x), var_1.a.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(600f))), var_1.e.e, var_1.e.c.x, -1316f), abs(select(var_1.a.d, vec4<i32>(var_1.b, -1i, -2147483647i, -41720i) << (var_1.e.a % vec4<u32>(32u)), arg_0)), _wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(trunc(1405f)))), u_input.c.x, 4294967295u, any(select(select(arg_0.yxz, vec3<bool>(var_1.d, false, false), arg_0.yyy), arg_0.xwz, true | !arg_0.x)), var_1.a);
    return Struct_2(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_2.e.a, countOneBits(vec4<u32>(0u, 744u, 69601u, var_2.c)), vec4<u32>(4294967295u, var_1.c, 45927u, var_2.e.a.x)), ~(~var_2.a.a)), var_1.e.c.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.b * var_1.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-var_1.a.c.x)))), var_1.a.d, _wgslsmith_f_op_f32(trunc(-820f))), _wgslsmith_dot_vec2_i32(countOneBits(var_2.e.d.wy), firstTrailingBit(vec2<i32>(u_input.d, -2147483647i))), abs(59476u), select(var_0, false, false), var_1.a);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a.x;
    global0 = array<Struct_1, 11>();
    var var_1 = firstLeadingBit(arg_0.d.x | _wgslsmith_mult_i32(-arg_0.d.x, select(_wgslsmith_clamp_i32(0i, 19094i, arg_0.d.x), ~(-2147483647i), true)));
    var_0 = ~firstLeadingBit(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x << (18352u % 32u))) & ~arg_0.a.x;
    let var_2 = func_2(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true)), true));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.b) + var_2.a.c.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_1.c.x;
    var var_1 = Struct_2(Struct_1(vec4<u32>(~abs(arg_1.a.x), 4294967295u, _wgslsmith_sub_u32(397u, 1u), reverseBits(~0u)), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true)).a.b * _wgslsmith_f_op_f32(f32(-1f) * -1843f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1238f, 1f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(arg_2, -931f, true))))), -arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(6761u, arg_1.a.x, arg_0.x, 0u), 272f, arg_1.c, arg_1.d, arg_1.c.x))))), -2147483647i, firstTrailingBit(4294967295u), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), all(vec2<bool>(false, false))), vec3<bool>(true, false, true))), Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, arg_0.x, 4294967295u), _wgslsmith_mod_vec4_u32(~arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.c.x, 1240f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1207f, arg_2, arg_1.b, 484f))))), vec4<i32>(u_input.d, -12770i, 49340i, firstTrailingBit(~arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1883f)));
    var var_2 = func_2(!select(vec4<bool>(select(var_1.d, var_1.d, true), true, !var_1.d, true), select(select(vec4<bool>(true, var_1.d, var_1.d, false), vec4<bool>(true, false, var_1.d, false), var_1.d), !vec4<bool>(var_1.d, false, var_1.d, var_1.d), vec4<bool>(var_1.d, false, true, false)), vec4<bool>(24039i == arg_1.d.x, true, any(vec4<bool>(var_1.d, var_1.d, var_1.d, true)), var_1.e.a.x < 1u))).a;
    var_1 = func_2(vec4<bool>(any(vec4<bool>(all(vec4<bool>(var_1.d, var_1.d, false, false)), !var_1.d, true, false)), var_1.d, var_1.d, var_1.d));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(var_1.c), 4294967295u, firstTrailingBit(0u)), ~(~(~(var_2.a.ywy | var_1.a.a.zwy))));
    return !select(vec4<bool>(true, false, var_1.d, (arg_2 <= arg_1.e) | true), !select(select(vec4<bool>(true, var_1.d, false, true), vec4<bool>(var_1.d, false, true, var_1.d), false), vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), !vec4<bool>(true, false, true, var_1.d)), select(vec4<bool>(true, var_1.d, var_1.d && false, !var_1.d), vec4<bool>(true, !var_1.d, true, true), vec4<bool>(var_1.b == 14333i, true, all(vec2<bool>(var_1.d, var_1.d)), var_1.d & false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_u32(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 4294967295u, 46606u, 6642u), vec4<u32>(105902u, 30803u, 4294967295u, 4294967295u))), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = func_4(select(vec2<u32>(var_1.x, var_1.x), var_1.xy, true), Struct_1(~_wgslsmith_clamp_vec4_u32(var_1, var_1, vec4<u32>(38322u, var_1.x, var_1.x, 0u)) >> (~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(666f, 141f), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(37377u, 11u)]))))), vec4<f32>(-466f, 281f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-193f * 1088f))), _wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, false)).e.c.x - 629f)), vec4<i32>(~select(-1i, 1i, false), 1i, _wgslsmith_sub_i32(func_2(vec4<bool>(false, true, false, false)).b, min(var_0.x, 2147483647i)), -var_0.x), -231f), _wgslsmith_f_op_f32(max(-189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(156f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1890f, -947f, true)) * -3081f)))));
    global0 = array<Struct_1, 11>();
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.xx)), firstLeadingBit(_wgslsmith_div_u32(var_1.x, var_1.x)), _wgslsmith_mult_u32(~4294967295u, ~0u), reverseBits(var_1.x ^ var_1.x)) & var_1, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)), _wgslsmith_f_op_f32(f32(-1f) * -2406f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(322f)), _wgslsmith_f_op_f32(f32(-1f) * -413f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(1904f, -906f))) + -1165f), 466f), func_2(func_4(~var_1.xx, Struct_1(vec4<u32>(0u, var_1.x, 0u, var_1.x), -1261f, vec4<f32>(-1000f, 173f, 446f, -849f), vec4<i32>(var_0.x, var_0.x, var_0.x, -68198i), 898f), _wgslsmith_f_op_f32(ceil(1064f)))).a.d.xyy >> (~vec3<u32>(~70537u, 1u, var_1.x) % vec3<u32>(32u)));
}

