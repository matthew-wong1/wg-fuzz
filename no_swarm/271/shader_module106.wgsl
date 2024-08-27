struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-6482i, -1i), vec2<i32>(-8984i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(10102i, 17389i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_2.a)), -10181i, 1i, false, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(arg_2.a, vec4<f32>(arg_1.x, arg_1.x, 973f, arg_1.x), arg_2.d)), vec4<f32>(arg_1.x, -1000f, 871f, arg_2.a.x), select(vec4<bool>(true, arg_0.x, arg_2.d, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x))), arg_2.a)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a + var_0.e), var_0.b, u_input.a, var_0.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_2.e))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.a.x, var_0.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(128f)))), _wgslsmith_f_op_f32(2773f * _wgslsmith_f_op_f32(floor(-334f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))))), u_input.a, 58400i, any(!vec3<bool>(false & arg_0.x, 63944u < u_input.b, any(vec3<bool>(var_0.d, false, false)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, arg_2.e.x, var_0.e.x, arg_2.e.x), vec4<f32>(717f, 2074f, arg_2.a.x, 1685f)))))))));
    var var_2 = u_input.b;
    let var_3 = !(select(true, !all(arg_0), all(select(arg_0.zx, arg_0.xx, arg_0.yz))) | (_wgslsmith_clamp_i32(var_0.b, 64162i, i32(-1i) * -1i) <= -43127i));
    return select(vec3<bool>(all(select(!arg_0.zy, select(arg_0.xz, arg_0.yz, true), true)), ~(66903u & u_input.b) <= 1u, true), vec3<bool>(any(select(!vec4<bool>(arg_0.x, true, arg_0.x, true), !vec4<bool>(arg_0.x, var_0.d, var_3, false), all(vec3<bool>(true, false, true)))), false, !any(vec4<bool>(false, var_1.d, true, var_0.d))), arg_0);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.b, -2147483647i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -29180i), global0[_wgslsmith_index_u32(u_input.b, 5u)])), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-9487i, arg_0.c, 2147483647i, u_input.a), vec4<i32>(-2147483647i, arg_0.b, 2629i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, arg_0.c)), select(!vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), select(vec4<bool>(arg_0.d, false, arg_0.d, false), vec4<bool>(arg_0.d, arg_0.d, true, true), vec4<bool>(true, true, false, true)), false)), min(vec4<i32>(arg_0.c, u_input.a, arg_0.c, u_input.a ^ 2836i), firstLeadingBit(vec4<i32>(84979i, arg_0.c, 68923i, arg_0.b)))) & vec4<i32>(-14382i << (u_input.b % 32u), ~((i32(-1i) * -2147483647i) << (~u_input.b % 32u)), -1i, -_wgslsmith_sub_i32(~(-2147483647i), arg_0.c));
    let var_1 = 4294967295u;
    let var_2 = !(!select(!select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, true), vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d)), vec4<bool>(true, func_2(vec3<bool>(true, true, arg_0.d), vec2<f32>(arg_0.a.x, 849f), Struct_1(vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.a.x, arg_0.a.x), 8496i, u_input.a, true, arg_0.e)).x, true, true), !(!vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d))));
    var var_3 = vec4<bool>((~_wgslsmith_div_u32(4294967295u, u_input.b) > u_input.b) == false, !all(vec2<bool>(true, var_2.x && var_2.x)), arg_0.d, true);
    var var_4 = arg_0;
    return var_3.zzz;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 5>();
    let var_0 = arg_1;
    global0 = array<vec2<i32>, 5>();
    let var_1 = -1014f;
    global0 = array<vec2<i32>, 5>();
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), arg_1.e), i32(-1i) * -u_input.a, -8194i, true, vec4<f32>(_wgslsmith_f_op_f32(min(var_1, 1335f)), arg_2.a.x, _wgslsmith_f_op_f32(floor(-126f)), _wgslsmith_f_op_f32(step(2595f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(683f, -1673f))))));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = select(-2147483647i, ~((i32(-1i) * -u_input.a) >> (min(u_input.b, u_input.b) % 32u)), !any(vec4<bool>(true, true, false, select(true, true, true))));
    let var_1 = func_4(select(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), !any(vec3<bool>(false, true, false))), select(select(vec3<bool>(false, true, true), func_2(vec3<bool>(false, true, false), vec2<f32>(1000f, 135f), Struct_1(vec4<f32>(arg_0, 1514f, arg_0, arg_0), -1i, -1i, true, vec4<f32>(arg_0, arg_0, arg_0, -1038f))), vec3<bool>(true, true, true)), vec3<bool>(select(true, false, true), var_0 < 47953i, true), !func_3(Struct_1(vec4<f32>(827f, -548f, 383f, arg_0), var_0, u_input.a, false, vec4<f32>(arg_0, 788f, arg_0, arg_0)))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, arg_0, -557f, -1269f)), -44930i | var_0, _wgslsmith_div_i32(u_input.a, 51604i), true, vec4<f32>(arg_0, 1326f, -457f, arg_0))).x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1387f, 804f, 591f))) + vec4<f32>(-177f, _wgslsmith_f_op_f32(903f - arg_0), arg_0, 487f)), 55433i, -_wgslsmith_sub_i32(u_input.a, 10721i) | max(firstLeadingBit(u_input.a), _wgslsmith_sub_i32(-6242i, -2393i)), !any(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1623f, 773f, arg_0, -1000f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 497f), arg_0, _wgslsmith_f_op_f32(step(arg_0, 135f)), arg_0)), min(~var_0 ^ 2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.a, u_input.a))), ~_wgslsmith_mult_i32(var_0, 10544i) ^ 15999i, !func_3(Struct_1(vec4<f32>(arg_0, 1000f, arg_0, -851f), -4142i, -8603i, false, vec4<f32>(1907f, 851f, arg_0, 1225f))).x, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 2573f, -1407f, arg_0)));
    global0 = array<vec2<i32>, 5>();
    var var_2 = select(!select(select(vec4<bool>(false, var_1.d, true, false), select(vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), vec4<bool>(false, var_1.d, true, false), var_1.d), select(vec4<bool>(false, var_1.d, var_1.d, false), vec4<bool>(true, true, var_1.d, var_1.d), vec4<bool>(false, false, false, var_1.d))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.d, true, var_1.d, false), vec4<bool>(var_1.d, var_1.d, false, false), vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d)), var_1.d), !vec4<bool>(var_1.d, false, false, var_1.d)), !(!vec4<bool>(var_1.d, !var_1.d, arg_0 > 187f, any(vec4<bool>(true, true, false, true)))), !select(vec4<bool>(!var_1.d, any(vec3<bool>(var_1.d, false, var_1.d)), true, all(vec4<bool>(var_1.d, var_1.d, true, var_1.d))), !select(vec4<bool>(true, var_1.d, false, var_1.d), vec4<bool>(var_1.d, true, false, true), true), !var_1.d && var_1.d));
    var var_3 = false;
    return _wgslsmith_f_op_vec4_f32(var_1.e - var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-935f)), _wgslsmith_f_op_f32(f32(-1f) * -474f))), 1f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1703f, -1108f, 943f, var_0.x), vec4<f32>(var_0.x, -904f, -1181f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(func_1(var_0.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), 1i, countOneBits(u_input.a), func_2(select(func_3(Struct_1(vec4<f32>(2158f, 465f, var_0.x, var_0.x), 2147483647i, u_input.a, true, vec4<f32>(1077f, var_0.x, 301f, var_0.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true), func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec2<f32>(var_0.x, 279f), Struct_1(vec4<f32>(-948f, var_0.x, var_0.x, var_0.x), -37915i, u_input.a, true, vec4<f32>(var_0.x, var_0.x, 1835f, 634f))).x), func_4(func_3(func_4(vec3<bool>(false, true, true), Struct_1(vec4<f32>(var_0.x, var_0.x, 2007f, -749f), 1i, u_input.a, true, vec4<f32>(-853f, -369f, var_0.x, var_0.x)), Struct_1(vec4<f32>(-1441f, var_0.x, 783f, var_0.x), u_input.a, -5119i, false, vec4<f32>(var_0.x, var_0.x, -978f, var_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1818f, 295f, 458f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -890f, var_0.x)), u_input.a, func_4(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-454f, var_0.x, -1623f, -1015f), 1i, -31574i, false, vec4<f32>(1233f, -1262f, var_0.x, var_0.x)), Struct_1(vec4<f32>(557f, var_0.x, var_0.x, var_0.x), u_input.a, u_input.a, false, vec4<f32>(1002f, var_0.x, var_0.x, var_0.x))).b, true, vec4<f32>(-147f, -1190f, -459f, 847f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, var_0.x, var_0.x, var_0.x)), 1i, abs(u_input.a), any(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 708f, var_0.x, var_0.x))))).e.xz, Struct_1(vec4<f32>(-462f, -274f, _wgslsmith_f_op_f32(var_0.x + 1031f), -609f), 1i, u_input.a, any(func_2(vec3<bool>(true, false, true), vec2<f32>(-1000f, -1000f), Struct_1(vec4<f32>(-609f, -1368f, var_0.x, var_0.x), 23932i, u_input.a, true, vec4<f32>(870f, var_0.x, 396f, 322f))).zy), vec4<f32>(351f, _wgslsmith_f_op_f32(trunc(var_0.x)), 1371f, var_0.x))).x, _wgslsmith_div_vec4_f32(vec4<f32>(-365f, 868f, var_0.x, 505f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-884f, -221f, -464f, var_0.x), vec4<f32>(-1000f, -718f, -1117f, 321f))), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 631f, 946f, 662f), vec4<f32>(-951f, var_0.x, var_0.x, var_0.x)))))));
    var var_2 = abs(_wgslsmith_mult_u32(4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 40855u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, 46180u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 80197u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 13358u, 1u, 4294967295u))), select(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), countOneBits(vec4<u32>(u_input.b, u_input.b, 35050u, 36648u)), select(vec4<bool>(false, var_1.d, var_1.d, var_1.d), vec4<bool>(var_1.d, true, false, var_1.d), var_1.d)) ^ abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 5362u, 40781u), vec4<u32>(u_input.b, u_input.b, 11486u, 46906u)))), ~(~(~select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, 1u, u_input.b, u_input.b), vec4<bool>(var_1.d, true, var_1.d, true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a.yy)));
    var var_4 = Struct_1(var_1.a, var_1.c, 6945i, func_4(vec3<bool>(false, var_1.d, var_1.d && true), func_4(vec3<bool>(var_1.d, -337f < var_1.a.x, var_1.d), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, var_1.e.x, var_0.x, var_1.a.x)), 1i, -u_input.a, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3266f, -413f, var_0.x, 384f))), func_4(func_3(Struct_1(vec4<f32>(-1579f, var_0.x, var_1.e.x, var_1.a.x), var_1.b, 9881i, true, var_1.a)), func_4(vec3<bool>(true, var_1.d, false), Struct_1(vec4<f32>(var_0.x, 116f, 510f, var_1.e.x), var_1.c, var_1.b, true, vec4<f32>(1774f, var_0.x, var_1.a.x, var_1.a.x)), Struct_1(vec4<f32>(-1245f, -843f, var_0.x, var_1.a.x), u_input.a, u_input.a, var_1.d, vec4<f32>(917f, 730f, var_1.e.x, var_1.a.x))), func_4(vec3<bool>(false, var_1.d, var_1.d), Struct_1(var_1.a, u_input.a, u_input.a, var_1.d, var_1.a), Struct_1(var_1.e, 16911i, var_1.b, true, var_1.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.a.x, 1010f, 792f) + var_1.e))), firstLeadingBit(firstTrailingBit(var_1.c)), -u_input.a, func_2(func_2(vec3<bool>(var_1.d, false, var_1.d), var_1.a.xy, Struct_1(var_1.e, var_1.c, 62199i, var_1.d, vec4<f32>(1147f, 1997f, var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-var_1.e.yy), Struct_1(vec4<f32>(-704f, -228f, 1589f, var_1.e.x), u_input.a, u_input.a, var_1.d, vec4<f32>(var_0.x, var_1.a.x, var_1.a.x, -234f))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(1724f)) - vec4<f32>(var_0.x, -1106f, var_0.x, var_1.a.x)))).d, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.x, countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3, 32987u), vec2<u32>(var_3, 1u)) & firstLeadingBit(vec2<u32>(4294967295u, u_input.b)), _wgslsmith_add_vec2_u32(select(vec2<u32>(var_3, 1u), vec2<u32>(var_3, u_input.b), true), abs(vec2<u32>(4294967295u, 0u))))), i32(-1i) * -var_4.b);
}

