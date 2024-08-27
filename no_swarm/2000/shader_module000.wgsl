struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec3<f32>(-529f, 317f, 1387f), Struct_1(true, vec3<i32>(-35485i, 419i, 34007i))), Struct_3(vec3<f32>(430f, 1233f, 671f), Struct_1(true, vec3<i32>(40610i, i32(-2147483648), -1i))), Struct_3(vec3<f32>(668f, 322f, -949f), Struct_1(false, vec3<i32>(i32(-2147483648), 1i, 15988i))), Struct_3(vec3<f32>(275f, 1414f, -746f), Struct_1(false, vec3<i32>(2147483647i, -28009i, 0i))), Struct_3(vec3<f32>(-672f, -1957f, 686f), Struct_1(false, vec3<i32>(20405i, 29807i, -7434i))), Struct_3(vec3<f32>(-614f, 595f, -801f), Struct_1(false, vec3<i32>(1i, -1i, -30271i))), Struct_3(vec3<f32>(-1000f, 708f, -332f), Struct_1(false, vec3<i32>(1i, 0i, -1i))), Struct_3(vec3<f32>(-983f, -877f, -317f), Struct_1(false, vec3<i32>(-1i, 1i, 23398i))), Struct_3(vec3<f32>(-445f, 1389f, -1000f), Struct_1(false, vec3<i32>(0i, 0i, 10854i))), Struct_3(vec3<f32>(539f, -553f, 624f), Struct_1(true, vec3<i32>(-2954i, 0i, 40301i))), Struct_3(vec3<f32>(246f, 236f, -1028f), Struct_1(true, vec3<i32>(0i, 58924i, 15504i))), Struct_3(vec3<f32>(3181f, 661f, -1535f), Struct_1(false, vec3<i32>(60285i, 15895i, 0i))), Struct_3(vec3<f32>(-586f, 1000f, 414f), Struct_1(false, vec3<i32>(2147483647i, 10239i, 2118i))), Struct_3(vec3<f32>(-153f, 929f, -298f), Struct_1(false, vec3<i32>(1i, i32(-2147483648), -10205i))), Struct_3(vec3<f32>(1804f, 244f, 269f), Struct_1(false, vec3<i32>(-21193i, 14524i, i32(-2147483648)))), Struct_3(vec3<f32>(111f, -368f, 492f), Struct_1(false, vec3<i32>(28202i, 6804i, 2147483647i))), Struct_3(vec3<f32>(526f, 587f, -1000f), Struct_1(false, vec3<i32>(i32(-2147483648), -8697i, 0i))), Struct_3(vec3<f32>(1000f, -547f, 703f), Struct_1(false, vec3<i32>(-22596i, 48716i, 2147483647i))), Struct_3(vec3<f32>(264f, 1438f, 796f), Struct_1(true, vec3<i32>(i32(-2147483648), 2147483647i, 18373i))), Struct_3(vec3<f32>(-894f, 547f, 194f), Struct_1(false, vec3<i32>(3168i, 13738i, i32(-2147483648)))), Struct_3(vec3<f32>(-833f, -766f, -811f), Struct_1(false, vec3<i32>(-12780i, -51663i, 17726i))), Struct_3(vec3<f32>(874f, -823f, -1017f), Struct_1(false, vec3<i32>(2147483647i, -17451i, -71593i))), Struct_3(vec3<f32>(-642f, -1159f, 1637f), Struct_1(true, vec3<i32>(2147483647i, -3154i, 88341i))), Struct_3(vec3<f32>(-408f, 648f, -457f), Struct_1(false, vec3<i32>(17258i, 35712i, i32(-2147483648)))), Struct_3(vec3<f32>(-1306f, -535f, -1000f), Struct_1(false, vec3<i32>(-1i, 22484i, -38754i))), Struct_3(vec3<f32>(-1373f, -833f, 1430f), Struct_1(false, vec3<i32>(16112i, -672i, 2772i))), Struct_3(vec3<f32>(-619f, -431f, -518f), Struct_1(false, vec3<i32>(-16699i, i32(-2147483648), 0i))), Struct_3(vec3<f32>(-899f, 1376f, 1973f), Struct_1(false, vec3<i32>(-6928i, 2147483647i, 1i))), Struct_3(vec3<f32>(-1683f, -2051f, 1000f), Struct_1(false, vec3<i32>(-31929i, -1i, 27524i))), Struct_3(vec3<f32>(-105f, -186f, -697f), Struct_1(false, vec3<i32>(-14932i, i32(-2147483648), -28906i))), Struct_3(vec3<f32>(-562f, 227f, 347f), Struct_1(true, vec3<i32>(0i, -1i, i32(-2147483648)))), Struct_3(vec3<f32>(-181f, -831f, -1006f), Struct_1(true, vec3<i32>(-10628i, i32(-2147483648), 47872i))));

var<private> global1: vec4<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = !any(vec4<bool>(true, all(arg_0.xww), any(vec2<bool>(false, true)) | true, global1.x <= _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + _wgslsmith_f_op_f32(sign(global1.x)))))));
    var var_2 = Struct_1(arg_0.x, -(vec3<i32>(abs(2626i), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 1i)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 32992u), vec3<u32>(33444u, u_input.a, 4294967295u)) % vec3<u32>(32u))));
    let var_3 = ~(~(u_input.b.x ^ 2147483647i));
    let var_4 = Struct_4(vec4<bool>(var_2.a, true, true, !(-2147483647i >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), var_2.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), global1.x, _wgslsmith_f_op_f32(ceil(959f)), _wgslsmith_f_op_f32(select(global1.x, 1000f, true))) * vec4<f32>(_wgslsmith_f_op_f32(max(-347f, global1.x)), 1739f, global1.x, _wgslsmith_f_op_f32(min(global1.x, 2216f)))), vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), 290f)), Struct_1(arg_0.x, vec3<i32>(u_input.b.x, -abs(var_2.b.x), -(~var_2.b.x))), Struct_2(Struct_1(true, var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 849f) - _wgslsmith_f_op_f32(-global1.x)))));
    return !var_4.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec3<i32> {
    global1 = arg_0;
    let var_0 = (((firstTrailingBit(vec3<u32>(u_input.a, 48957u, u_input.a)) ^ ~vec3<u32>(302u, 27777u, 38770u)) >> (~(vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(u_input.a, u_input.a, 68458u)) % vec3<u32>(32u))) ^ abs(vec3<u32>(~28618u, _wgslsmith_sub_u32(u_input.a, 83534u), abs(30131u)))) & vec3<u32>(u_input.a, firstLeadingBit(_wgslsmith_clamp_u32(9818u, u_input.a, u_input.a)), ~8128u);
    let var_1 = select(!select(vec3<bool>(true, func_3(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), vec3<bool>(var_0.x >= var_0.x, true, any(vec3<bool>(true, true, true)))), vec3<bool>(true, true, global1.x <= _wgslsmith_f_op_f32(f32(-1f) * -411f)), vec3<bool>(true, true, true));
    global0 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 343f), _wgslsmith_f_op_f32(global1.x - 286f)));
    return ~vec3<i32>(i32(-1i) * -(~2147483647i), u_input.b.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b.x, 1i, arg_1), vec3<i32>(4078i, -1i, arg_1)) << (_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(33247u, 0u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x >> (1u % 32u), -2147483647i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_3, 32>();
    let var_0 = Struct_1(true, -func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1, 198f, 1149f)), ~_wgslsmith_sub_i32(u_input.b.x, arg_3.a.b.x)));
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.x, -501f, global1.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2437f * -1000f) * global1.x), -1674f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(890f)), _wgslsmith_f_op_f32(-1647f * arg_2.a.x))), 606f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, arg_2.a.x, global1.x, arg_1))))))));
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    return !(!(!select(!vec4<bool>(var_0.a, arg_3.a.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_3.a.a, arg_3.a.a, arg_2.b.a), select(vec4<bool>(arg_2.b.a, false, true, false), vec4<bool>(true, false, false, arg_3.a.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = global0[_wgslsmith_index_u32(1u, 32u)];
    var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), 727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 751f)))), var_1.b);
    var var_2 = select(!func_1(var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.x, 814f), global1.x)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, 14796u), 32u)], Struct_2(var_1.b)), select(!vec4<bool>(true, var_1.b.a, !var_1.b.a, !var_1.b.a), !vec4<bool>(var_1.b.a, var_1.b.a, !var_1.b.a, var_1.b.a), any(select(!vec4<bool>(true, true, false, var_1.b.a), !vec4<bool>(var_1.b.a, false, true, var_1.b.a), var_1.b.a))), all(!select(func_1(Struct_1(true, vec3<i32>(var_1.b.b.x, 44050i, 19711i)), -1000f, Struct_3(vec3<f32>(global1.x, global1.x, 1980f), Struct_1(true, var_1.b.b)), Struct_2(Struct_1(var_1.b.a, var_1.b.b))), !vec4<bool>(var_1.b.a, var_1.b.a, true, true), 1000f < var_1.a.x)));
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), 851f, _wgslsmith_f_op_f32(-global1.x)), Struct_1(!var_2.x, var_1.b.b));
    var var_4 = vec3<bool>(false, var_1.b.a, false);
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    var_4 = !var_2.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(38656i, -1000f);
}

