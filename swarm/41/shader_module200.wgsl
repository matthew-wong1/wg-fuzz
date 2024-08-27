struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(4294967295u, 26468u), vec2<u32>(4294967295u, 0u), vec2<u32>(9872u, 53484u), vec2<u32>(0u, 0u), vec2<u32>(62032u, 0u), vec2<u32>(1u, 291u), vec2<u32>(52388u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(67642u, 0u), vec2<u32>(118056u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 15200u));

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<f32, 7> = array<f32, 7>(345f, -1764f, -345f, 1806f, -599f, 2496f, 319f);

var<private> global3: bool;

var<private> global4: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, -30130i, -33514i, 0i), vec4<i32>(2147483647i, -38818i, 1i, -1i), vec4<i32>(-8598i, -27673i, 0i, i32(-2147483648)), vec4<i32>(-7484i, i32(-2147483648), 11845i, -1i), vec4<i32>(1i, 35205i, 12066i, -50536i), vec4<i32>(2147483647i, 12550i, -38077i, 1i), vec4<i32>(0i, 25227i, i32(-2147483648), -59308i), vec4<i32>(10570i, 1813i, 1i, -32162i), vec4<i32>(0i, 43459i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -3153i, -25945i, -2540i), vec4<i32>(23962i, 2147483647i, -32922i, 0i), vec4<i32>(-3700i, -1i, 0i, 1776i), vec4<i32>(-1374i, 4533i, 60809i, i32(-2147483648)), vec4<i32>(-1i, -17563i, 9946i, -25263i), vec4<i32>(-33509i, 14841i, -24488i, -1i), vec4<i32>(9685i, -9845i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 2147483647i, -35730i, -2542i), vec4<i32>(0i, 1i, -1i, -25568i), vec4<i32>(-36691i, 1i, 86596i, -40082i), vec4<i32>(-1i, -1i, -417i, 1i), vec4<i32>(0i, 26873i, -19888i, 31995i), vec4<i32>(-23833i, 7162i, 18739i, -27896i), vec4<i32>(i32(-2147483648), 1i, -1i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(~1u, 1u), ~_wgslsmith_sub_u32(u_input.c, ~9520u), u_input.c);
    var var_1 = select(select(select(select(select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(false, arg_0.c, false), true), select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(false, false, arg_0.c)), !vec3<bool>(arg_0.c, false, arg_0.c)), vec3<bool>(arg_0.c, arg_0.c, any(vec4<bool>(true, false, true, arg_0.c))), 63012u == u_input.c), !(!select(vec3<bool>(false, false, arg_0.c), vec3<bool>(false, arg_0.c, arg_0.c), true)), vec3<bool>(!(global2[_wgslsmith_index_u32(u_input.c, 7u)] <= global2[_wgslsmith_index_u32(1u, 7u)]), false, 0i <= firstTrailingBit(u_input.b.x))), select(!select(vec3<bool>(arg_0.c, true, false), select(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(false, true, true), false), true), select(vec3<bool>(false, arg_0.c, false), vec3<bool>(arg_0.c, any(vec3<bool>(false, false, arg_0.c)), all(global1[_wgslsmith_index_u32(var_0.x, 15u)])), !(u_input.b.x == -33341i)), arg_0.c && (var_0.x < abs(u_input.c))), all(!(!(!vec3<bool>(arg_0.c, arg_0.c, false)))));
    let var_2 = vec4<u32>(0u, ~(_wgslsmith_clamp_u32(5879u, 117861u << (u_input.c % 32u), firstTrailingBit(u_input.c)) >> (u_input.c % 32u)), abs(~_wgslsmith_div_u32(19689u, u_input.c)), ~1u);
    let var_3 = arg_0;
    let var_4 = var_3;
    return _wgslsmith_mult_i32(var_3.b.x, _wgslsmith_mult_i32(-(-var_3.b.x ^ (arg_0.b.x ^ var_4.b.x)), u_input.a));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<vec2<bool>, 15>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x - 507f), _wgslsmith_f_op_f32(-981f - 251f))) * _wgslsmith_div_f32(arg_2.a.x, arg_2.a.x)), global2[_wgslsmith_index_u32(abs(arg_1) ^ abs(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(24066u, u_input.c, 5186u, 14445u), vec4<u32>(1u, u_input.c, arg_1, arg_1)))), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 7u)]), -777f))))), 988f);
    global3 = !(arg_2.b.x > ~func_3(Struct_1(var_0.zy, vec3<i32>(-20046i, 2147483647i, 0i), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-993f, -210f)), _wgslsmith_f_op_f32(733f - 692f), _wgslsmith_f_op_f32(floor(var_0.x)))))));
    var var_2 = Struct_1(var_0.xz, vec3<i32>(u_input.a, -1i, -(arg_2.b.x << (34137u % 32u))) ^ u_input.b.zzy, true);
    return !select(select(select(!vec4<bool>(var_2.c, false, arg_2.c, true), vec4<bool>(false, true, arg_0.x, true), u_input.a >= u_input.a), vec4<bool>(false, var_2.b.x >= -2147483647i, var_2.c, false), all(select(arg_0, vec3<bool>(true, var_2.c, arg_2.c), arg_0))), vec4<bool>(arg_2.c, select(any(global1[_wgslsmith_index_u32(u_input.c, 15u)]), arg_0.x, all(vec4<bool>(var_2.c, arg_2.c, true, true))), true, var_2.c), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(193f, 1081f) + _wgslsmith_f_op_vec2_f32(sign(arg_1.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, global2[_wgslsmith_index_u32(u_input.c, 7u)]))))));
    global1 = array<vec2<bool>, 15>();
    global4 = array<vec4<i32>, 23>();
    global1 = array<vec2<bool>, 15>();
    global4 = array<vec4<i32>, 23>();
    return vec3<bool>(all(select(select(vec4<bool>(true, arg_1.c, false, arg_1.c), !vec4<bool>(false, true, true, arg_1.c), true), select(func_2(vec3<bool>(true, arg_1.c, true), 64159u, Struct_1(vec2<f32>(-1278f, var_0.x), arg_1.b, true)), func_2(vec3<bool>(false, arg_1.c, arg_1.c), u_input.c, Struct_1(vec2<f32>(-1596f, arg_1.a.x), vec3<i32>(-40940i, u_input.a, arg_1.b.x), true)), vec4<bool>(true, true, true, true)), vec4<bool>(-238f >= arg_1.a.x, false, true, arg_1.c | arg_1.c))), !arg_1.c, arg_1.c);
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = !func_2(!select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0)), _wgslsmith_mult_u32(u_input.c, 26996u), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 7u)] + -415f), global2[_wgslsmith_index_u32(u_input.c, 7u)]), select(u_input.b.zxy, vec3<i32>(16369i, u_input.b.x, -1i), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, arg_0), arg_0)), true));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 7u)] - global2[_wgslsmith_index_u32(~u_input.c, 7u)]), 644f, all(!vec4<bool>(var_0.x, true, arg_0, arg_0)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, 0u >> (u_input.c % 32u)), ~36017u), 7u)]), min(select(-vec3<i32>(u_input.b.x, 12393i, 434i), u_input.b.wyy, !(!var_0.yzz)), -u_input.b.xww), arg_0);
    let var_2 = var_1;
    var_0 = !vec4<bool>(arg_0, ((0u << (u_input.c % 32u)) >> (select(u_input.c, u_input.c, false) % 32u)) > (71682u & u_input.c), true, true);
    global1 = array<vec2<bool>, 15>();
    return vec2<i32>(2147483647i, _wgslsmith_add_i32(firstTrailingBit(-var_2.b.x | u_input.a), -46165i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_4(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(global0[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), u_input.b.zxx, true))))), -_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.a) | select(u_input.b.wz, vec2<i32>(-38911i, 2147483647i), false)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-201f, 1f))), ~(-_wgslsmith_mod_vec3_i32(u_input.b.zxz << (vec3<u32>(u_input.c, u_input.c, 5744u) % vec3<u32>(32u)), abs(u_input.b.xzz))), true);
    var var_2 = Struct_1(var_1.a, vec3<i32>(firstTrailingBit(var_1.b.x), var_0.x, u_input.a), !(15108i > _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.b.x, -20344i, -68983i) << (vec4<u32>(0u, 49905u, 1u, u_input.c) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(~31495u, 23u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, -796f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.a.x, var_2.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18142u, 7u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(258f, global2[_wgslsmith_index_u32(u_input.c, 7u)], var_1.a.x, 956f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-157f, var_1.a.x, 818f, 1578f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(176f, 1698f, 2502f, global2[_wgslsmith_index_u32(0u, 7u)]), vec4<f32>(1000f, 810f, var_2.a.x, 566f))))))), _wgslsmith_div_vec4_f32(vec4<f32>(-388f, -1109f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-261f - var_2.a.x)), _wgslsmith_f_op_f32(step(-1000f, -361f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1878f, global2[_wgslsmith_index_u32(4754u, 7u)], -749f, 1146f) + vec4<f32>(var_2.a.x, global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(u_input.c, 7u)], var_1.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1901f), _wgslsmith_f_op_f32(-432f * var_1.a.x), var_1.a.x, -237f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.x + 308f), abs(global0[_wgslsmith_index_u32(3753u, 13u)]) >> (global0[_wgslsmith_index_u32(~(~u_input.c), 13u)] % vec2<u32>(32u)), var_0.x);
}

