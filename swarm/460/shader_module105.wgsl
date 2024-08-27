struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_3(vec2<bool>(false, false), Struct_1(2147483647i), Struct_2(vec4<f32>(750f, -1000f, -750f, -1000f), true), Struct_2(vec4<f32>(-283f, 1011f, 567f, -622f), true), vec4<i32>(0i, -1i, 2589i, 9003i)), 1000f, 1000f, Struct_2(vec4<f32>(1061f, 613f, 671f, -500f), false), 2147483647i), Struct_4(Struct_3(vec2<bool>(true, false), Struct_1(i32(-2147483648)), Struct_2(vec4<f32>(1125f, -409f, -1508f, -1000f), true), Struct_2(vec4<f32>(1911f, 1000f, 367f, -102f), false), vec4<i32>(1i, -44842i, 1i, -1i)), -634f, 1115f, Struct_2(vec4<f32>(2407f, 1397f, -1453f, -1057f), false), -1i));

var<private> global3: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-1960f, 358f, -1000f, -750f), vec4<f32>(983f, 208f, 802f, -201f), vec4<f32>(-177f, -220f, 1000f, -805f), vec4<f32>(-587f, 1278f, 425f, -381f), vec4<f32>(189f, -682f, 683f, -1000f), vec4<f32>(-531f, 459f, 1409f, 763f), vec4<f32>(1000f, -939f, -780f, 1000f), vec4<f32>(-1119f, -982f, -406f, 1415f), vec4<f32>(-1077f, 1073f, 2177f, 723f), vec4<f32>(-538f, 436f, -1049f, -423f), vec4<f32>(578f, -427f, -1556f, -922f), vec4<f32>(336f, -505f, -475f, 620f), vec4<f32>(-338f, -388f, 2280f, -398f), vec4<f32>(1118f, 859f, -867f, 408f), vec4<f32>(-647f, 1091f, -849f, -1000f), vec4<f32>(-1000f, 1047f, 145f, 1157f), vec4<f32>(2735f, 816f, -103f, -709f), vec4<f32>(-254f, -1887f, 895f, -396f), vec4<f32>(-215f, -1167f, 812f, 448f), vec4<f32>(-1000f, -1976f, -303f, -1575f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_1(countOneBits(abs(u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - _wgslsmith_f_op_f32(-arg_0.c))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-372f)))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~(~4294967295u)), ~_wgslsmith_div_u32(4294967295u, ~1u)), ~(~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 2760u)))));
    var var_3 = u_input.a;
    var_3 = u_input.a;
    return 4294967295u;
}

fn func_2() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(1u) >> (_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(1u, 0u, 0u)), vec3<u32>(~13260u, 1u, 1u))) % 32u), 20u)];
    let var_1 = min(firstTrailingBit(~vec4<u32>(0u, 59710u, 28831u, 5602u) ^ vec4<u32>(func_3(Struct_4(Struct_3(vec2<bool>(true, true), Struct_1(-2147483647i), Struct_2(vec4<f32>(383f, var_0.x, -1000f, 367f), false), Struct_2(vec4<f32>(731f, var_0.x, 1112f, var_0.x), false), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), -1000f, -757f, Struct_2(global3[_wgslsmith_index_u32(0u, 20u)], false), u_input.a.x)), ~1u, 46727u, 1u)), vec4<u32>(1u, 89236u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9472u, 16898u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 1u, 31158u), 4294967295u), 89387u));
    global1 = array<vec4<i32>, 5>();
    var var_2 = _wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(u_input.a.x, -9841i, u_input.a.x, 1i) & vec4<i32>(u_input.a.x, 1i, -17625i, -24835i)) | (vec4<i32>(5450i, u_input.a.x, 2147483647i, 57462i) | vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))), ~abs(-global1[_wgslsmith_index_u32(34081u, 5u)]) >> (var_1 % vec4<u32>(32u)));
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_1.x), 20u)], true);
    return -1113f;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(162f * _wgslsmith_f_op_f32(-arg_3));
    let var_2 = select(select(!vec4<bool>(all(vec2<bool>(false, false)), arg_2.a > 1i, true, true), vec4<bool>(true, !any(vec3<bool>(true, true, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, select(true, false, false), arg_3 < arg_3, true))), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, !all(vec2<bool>(true, true)), true), any(vec3<bool>(any(vec2<bool>(false, false)), true, false)));
    var_1 = arg_3;
    let var_3 = Struct_4(Struct_3(select(!(!var_2.wy), vec2<bool>(arg_0 >= 4294967295u, any(vec2<bool>(true, false))), false), Struct_1(min(u_input.a.x, arg_2.a) << (reverseBits(arg_0) % 32u)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(725f, 567f, arg_3, 602f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2187f, 505f, -688f, -327f))), var_2.x), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, -2184f, -324f, arg_3))), false), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(reverseBits(43581u) | arg_0, 5u)], -global1[_wgslsmith_index_u32(4294967295u, 5u)])), 479f, arg_3, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(0u, 20u)]), global3[_wgslsmith_index_u32(reverseBits(32375u), 20u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global3[_wgslsmith_index_u32(arg_0, 20u)])))), !(2147483647i >= (-1i << (arg_0 % 32u)))), 2980i);
    return ~((32349u | _wgslsmith_mult_u32(arg_0, ~arg_0)) & firstLeadingBit(arg_0 >> (~1u % 32u)));
}

fn func_1(arg_0: bool) -> u32 {
    return func_4(3592u, -reverseBits(u_input.a.x) | u_input.a.x, Struct_1(-1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), 239f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 20>();
    global3 = array<vec4<f32>, 20>();
    var var_0 = reverseBits(5766i);
    let var_1 = vec4<u32>(~func_1(_wgslsmith_f_op_f32(step(-475f, 1090f)) <= -847f), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 4294967295u, 97466u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 49675u, 0u), vec3<u32>(1u, 1u, 1u))) | ~(~func_4(0u, 43826i, Struct_1(16012i), -1034f)), _wgslsmith_add_u32(31118u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 11074u, 66294u), ~vec3<u32>(68548u, 1u, 0u)))), func_1(true));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-496f, _wgslsmith_f_op_f32(f32(-1f) * -533f))))));
    var var_3 = Struct_5(u_input.a, _wgslsmith_f_op_f32(-1604f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1286f, _wgslsmith_f_op_f32(min(209f, -606f)))))), vec3<bool>(false, false, ~1i <= ~(u_input.a.x ^ -13857i)));
    let var_4 = Struct_5(countOneBits(var_3.a), var_3.b, !vec3<bool>(countOneBits(u_input.a.x) <= var_3.a.x, any(select(vec3<bool>(var_3.c.x, true, false), var_3.c, var_3.c)), true));
    let var_5 = 13359i == _wgslsmith_dot_vec4_i32(vec4<i32>(-20815i, ~select(var_3.a.x, var_3.a.x, var_3.c.x), countOneBits(_wgslsmith_mod_i32(1i, -67935i)), u_input.a.x), select(_wgslsmith_mod_vec4_i32(vec4<i32>(29048i, var_4.a.x, var_3.a.x, var_4.a.x), vec4<i32>(27882i, u_input.a.x, -2147483647i, 2147483647i)), ~firstLeadingBit(global1[_wgslsmith_index_u32(var_1.x, 5u)]), any(!var_4.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1.x, 20u)]);
}

