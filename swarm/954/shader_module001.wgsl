struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-617f, 416f, -381f), vec3<f32>(283f, -755f, -746f), vec3<f32>(456f, 310f, -1117f), vec3<f32>(-819f, 1335f, -1741f), vec3<f32>(-204f, 192f, -474f), vec3<f32>(-333f, 251f, -929f), vec3<f32>(-1263f, 1000f, -1000f), vec3<f32>(183f, -1445f, -1994f), vec3<f32>(934f, 355f, 195f), vec3<f32>(2026f, 1017f, -1000f), vec3<f32>(999f, -109f, -1000f), vec3<f32>(384f, 805f, 1000f), vec3<f32>(-1000f, 1585f, 115f), vec3<f32>(-625f, -737f, -292f), vec3<f32>(1377f, 108f, 707f), vec3<f32>(1602f, 707f, 644f), vec3<f32>(1096f, 730f, 1000f), vec3<f32>(-1162f, 1271f, 709f), vec3<f32>(777f, -1188f, 852f), vec3<f32>(463f, 509f, 422f), vec3<f32>(591f, 936f, -607f), vec3<f32>(-1000f, 581f, -1281f), vec3<f32>(341f, -625f, -1460f), vec3<f32>(-1261f, -1000f, -246f), vec3<f32>(1000f, -1046f, -1264f), vec3<f32>(-1160f, 863f, 303f), vec3<f32>(-384f, 448f, 370f));

var<private> global1: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> vec3<u32> {
    var var_0 = select(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, true, true))), !select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!any(vec4<bool>(true, true, true, false))) || true);
    var var_1 = Struct_3(u_input.a.zx);
    return abs(select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 25834u, arg_2), ~vec3<u32>(22135u, 0u, 58358u)), min(vec3<u32>(7936u, 4294967295u, 0u), vec3<u32>(arg_2, 26017u, 19797u)) << (firstTrailingBit(vec3<u32>(arg_2, 0u, arg_2)) % vec3<u32>(32u))), ~max(~vec3<u32>(arg_2, arg_2, 1u), vec3<u32>(arg_2, arg_2, 1u)), vec3<bool>(false, all(var_0.wzx), var_0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_2 {
    global1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, ~(~arg_2), _wgslsmith_add_u32(arg_2, arg_2) | 0u), func_3(Struct_2(select(vec3<i32>(u_input.a.x, u_input.b, u_input.b), u_input.a.yyz, arg_3)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 2042f)), _wgslsmith_div_f32(-880f, _wgslsmith_f_op_f32(f32(-1f) * -412f))), ~(~arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))))));
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    var var_0 = _wgslsmith_add_u32(arg_2, ~4294967295u);
    return Struct_2(min(~u_input.a.xzz, _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.b, -2147483647i), vec3<i32>(~u_input.a.x, min(u_input.b, u_input.a.x), u_input.b))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(14742u, ~1u), 1u), ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32787u, 75934u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 51708u)))));
    let var_1 = true && ((false || (all(vec3<bool>(true, true, arg_2)) == true)) & all(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2), select(vec4<bool>(false, arg_2, true, true), vec4<bool>(false, arg_2, arg_2, true), false))));
    global1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(var_0, 32810u, 34160u)), ~vec3<u32>(~_wgslsmith_div_u32(var_0, 0u), ~1u ^ abs(var_0), 0u));
    return Struct_1(select(1i, i32(-1i) * -12806i, all(vec4<bool>(arg_2, var_1, true, true))) | _wgslsmith_add_i32(arg_1.a.x, i32(-1i) * -arg_3), arg_3, arg_1.a.x, 0u, u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * -261f), -2112f), -1438f, arg_0.d, arg_1.x);
    global0 = array<vec3<f32>, 27>();
    global1 = 4294967295u;
    global1 = ~reverseBits(1u);
    global0 = array<vec3<f32>, 27>();
    return Struct_3(countOneBits(_wgslsmith_clamp_vec2_i32(u_input.a.xy, func_4(func_2(vec2<f32>(arg_2.x, 1901f), arg_2.x, 52716u, arg_3.x), Struct_3(arg_0.e.zy), arg_3.x, 25944i).e.yx, (vec2<i32>(var_0.a.x, 2147483647i) >> (vec2<u32>(52430u, arg_0.d) % vec2<u32>(32u))) & -u_input.a.zz)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<vec3<f32>, 27>();
    return func_5(func_4(func_2(arg_0.zy, _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(41152u, 4294967295u), vec2<u32>(100738u, 111137u)), vec2<u32>(4294967295u, 0u)), true), Struct_3(vec2<i32>(u_input.b >> (1u % 32u), -2147483647i)), _wgslsmith_f_op_f32(-arg_0.x) < arg_0.x, u_input.b), select(vec3<bool>(false, true, select(any(vec3<bool>(true, true, true)), true, true)), vec3<bool>(true, all(vec3<bool>(true, true, true)), false), select(vec3<bool>(true, all(vec3<bool>(true, true, false)), select(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, -2115f, arg_0.x)), vec3<f32>(arg_0.x, arg_0.x, -559f), false)))))), select(vec3<bool>(true, -572f != _wgslsmith_f_op_f32(arg_0.x + arg_0.x), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true))), 2147483647i <= u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    var var_0 = Struct_3(-u_input.a.yy);
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mult_u32(0u, 1u)), 27u)], vec3<f32>(-1052f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(442f)), 1129f, true)), _wgslsmith_f_op_f32(-712f * _wgslsmith_div_f32(573f, -1000f))))));
    var var_1 = 570f;
    var var_2 = Struct_1(-3834i, _wgslsmith_mod_i32(49906i, u_input.b), firstTrailingBit(u_input.a.x), reverseBits(~4294967295u), u_input.a);
    let var_3 = Struct_3(select(abs(var_0.a), var_0.a, vec2<bool>(true, true)));
    global0 = array<vec3<f32>, 27>();
    var_0 = var_3;
    var var_4 = !vec3<bool>(!(40495i == var_3.a.x) | true, true, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-325f * 1000f), vec4<u32>(var_2.d, 1u, var_2.d, func_3(func_2(vec2<f32>(-1819f, 1296f), 317f, 4294967295u, false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1288f, 341f))), countOneBits(0u), _wgslsmith_f_op_f32(step(-2705f, 1840f))).x) << (vec4<u32>(~countOneBits(var_2.d), select(var_2.d, 4294967295u & var_2.d, select(false, true, var_4.x)), _wgslsmith_clamp_u32(func_3(Struct_2(vec3<i32>(-2147483647i, -65919i, var_0.a.x)), vec2<f32>(-1097f, -242f), var_2.d, -693f).x, 45675u | var_2.d, max(5159u, 0u)), ~1u) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d, 1u, var_2.d), vec3<u32>(0u, 36575u, var_2.d)), vec3<u32>(16164u, 4294967295u, var_2.d) << (vec3<u32>(50509u, var_2.d, 37918u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(12716u, var_2.d, var_2.d), vec3<u32>(var_2.d, 23320u, var_2.d)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, 2072f, 383f, 611f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1300f, 1207f, -485f, -1523f) * vec4<f32>(-1000f, -526f, 1000f, -199f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-887f, -1240f)), -966f, _wgslsmith_f_op_f32(select(-977f, -1139f, var_4.x)), -426f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, 147f, -918f, 1040f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-610f, -955f, 221f, 523f))))))));
}

