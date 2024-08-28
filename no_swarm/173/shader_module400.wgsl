struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_3(Struct_1(vec3<i32>(1i, 3839i, 2147483647i), vec2<bool>(false, true), vec3<f32>(-302f, 244f, 1000f), true, vec4<bool>(false, true, false, false))), 42869u, vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-30122i, -30972i)), Struct_4(Struct_3(Struct_1(vec3<i32>(2147483647i, 27903i, -4295i), vec2<bool>(false, false), vec3<f32>(712f, 733f, 1626f), false, vec4<bool>(false, false, false, false))), 79439u, vec2<i32>(64821i, 0i), vec2<i32>(13316i, -50832i)), Struct_4(Struct_3(Struct_1(vec3<i32>(6365i, 3945i, 1i), vec2<bool>(false, true), vec3<f32>(-620f, 448f, -199f), true, vec4<bool>(false, true, true, false))), 21517u, vec2<i32>(2521i, 0i), vec2<i32>(1i, 1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(-1i, -1i, -75423i), vec2<bool>(false, false), vec3<f32>(687f, -1000f, -1000f), true, vec4<bool>(false, true, false, true))), 52477u, vec2<i32>(-1i, 46553i), vec2<i32>(-1761i, 69928i)), Struct_4(Struct_3(Struct_1(vec3<i32>(32607i, 1i, 52036i), vec2<bool>(true, true), vec3<f32>(196f, 1000f, -2113f), false, vec4<bool>(false, false, false, false))), 0u, vec2<i32>(-1i, 30704i), vec2<i32>(1i, -1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(-57932i, -49886i, 2147483647i), vec2<bool>(true, true), vec3<f32>(1458f, -137f, 515f), false, vec4<bool>(false, true, true, false))), 4294967295u, vec2<i32>(2147483647i, 1i), vec2<i32>(70316i, -23771i)), Struct_4(Struct_3(Struct_1(vec3<i32>(-57201i, 0i, 0i), vec2<bool>(true, false), vec3<f32>(-295f, 169f, 1490f), true, vec4<bool>(false, true, true, true))), 1u, vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-26992i, -1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<bool>(false, false), vec3<f32>(1330f, -1163f, 1592f), true, vec4<bool>(true, false, true, true))), 6512u, vec2<i32>(20754i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -6578i)), Struct_4(Struct_3(Struct_1(vec3<i32>(10482i, i32(-2147483648), -16662i), vec2<bool>(false, false), vec3<f32>(1000f, -1011f, 158f), false, vec4<bool>(false, false, false, true))), 0u, vec2<i32>(2081i, -38436i), vec2<i32>(6767i, -12862i)), Struct_4(Struct_3(Struct_1(vec3<i32>(0i, 2114i, 34169i), vec2<bool>(false, true), vec3<f32>(-678f, 269f, -1000f), true, vec4<bool>(true, false, false, true))), 19542u, vec2<i32>(0i, -176i), vec2<i32>(2147483647i, 13398i)), Struct_4(Struct_3(Struct_1(vec3<i32>(-44870i, 51973i, -1i), vec2<bool>(false, false), vec3<f32>(1159f, -251f, -1118f), false, vec4<bool>(true, true, false, false))), 59145u, vec2<i32>(28560i, 1i), vec2<i32>(1i, -1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 5614i, 2147483647i), vec2<bool>(true, false), vec3<f32>(-1358f, 341f, 1785f), false, vec4<bool>(true, false, true, false))), 0u, vec2<i32>(1i, -31095i), vec2<i32>(26479i, 1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(-28450i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true), vec3<f32>(-1132f, -238f, 1000f), true, vec4<bool>(false, true, true, true))), 4294967295u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i)), Struct_4(Struct_3(Struct_1(vec3<i32>(43272i, 1i, -51648i), vec2<bool>(true, true), vec3<f32>(-1026f, -2997f, 109f), false, vec4<bool>(true, false, false, true))), 47595u, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-2527i, -40694i)));

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_1(vec3<i32>(25824i, -40693i, 0i), vec2<bool>(false, true), vec3<f32>(-1777f, -186f, 1480f), false, vec4<bool>(true, true, true, true))), 4294967295u, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(27693i, -1i));

var<private> global3: Struct_4 = Struct_4(Struct_3(Struct_1(vec3<i32>(10738i, -14320i, 29222i), vec2<bool>(true, true), vec3<f32>(-937f, -211f, -507f), false, vec4<bool>(false, false, true, true))), 4294967295u, vec2<i32>(2147483647i, -27676i), vec2<i32>(-1i, 28558i));

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_vec3_i32(global3.a.a.a, vec3<i32>(global2.a.a.a.x, ~48113i, reverseBits(0i))), global3.a.a.b, vec3<f32>(-987f, 518f, _wgslsmith_f_op_f32(trunc(185f))), global2.a.a.e.x, select(vec4<bool>(global2.a.a.d, false, true, !global3.a.a.d), global3.a.a.e, global2.a.a.d)));
    var var_1 = global3.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(286f, _wgslsmith_f_op_f32(-2073f + -217f))))), global3.a.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(449f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(357f, global3.a.a.c.x)))))));
    global3 = global1[_wgslsmith_index_u32(~(13429u & (41649u << (u_input.a.x % 32u))), 14u)];
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~global3.b) | abs(abs(global2.b)), ~global2.b), 14u)];
    return Struct_1(-(~vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i), 1i, var_0.a.a.x)), global3.a.a.e.wz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.a.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -1067f, 264f)))), false, vec4<bool>(true, true, !all(!global3.a.a.e), true));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = min(global2.b, 1u);
    var_0 = ~(_wgslsmith_dot_vec2_u32(~(u_input.a.xz | u_input.a.zy), vec2<u32>(u_input.a.x | global3.b, ~arg_0)) << (26570u % 32u));
    let var_1 = Struct_4(Struct_3(func_2()), ~arg_0, ~abs(~(-vec2<i32>(global2.d.x, 0i))), -(~global3.a.a.a.zy));
    let var_2 = var_1.a.a;
    let var_3 = var_1;
    return global1[_wgslsmith_index_u32(~var_1.b, 14u)];
}

fn func_3() -> u32 {
    let var_0 = global3.a.a.d;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-476f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1030f), global2.a.a.c.x), _wgslsmith_f_op_f32(max(global3.a.a.c.x, global2.a.a.c.x)))), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(22862u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), 0u));
    global4 = true;
    var var_2 = true;
    var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(global3.a.a.c.x)), ~(~max(_wgslsmith_mult_u32(global2.b, 1u), _wgslsmith_sub_u32(var_1.b, 0u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-_wgslsmith_clamp_i32(global3.a.a.a.x, _wgslsmith_div_i32(0i, abs(global3.a.a.a.x)), 15081i), ~(~(~(global3.d.x & global3.d.x))), _wgslsmith_add_i32(~(-40157i), _wgslsmith_sub_i32(15922i, 100368i | global3.d.x)), 0i);
    global2 = func_1(34647u);
    var var_1 = Struct_2(_wgslsmith_div_f32(1213f, global3.a.a.c.x), ~(~(global2.b | ~u_input.a.x)));
    global4 = false;
    var var_2 = vec3<i32>(2147483647i, -10821i, 1i | var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(global3.d.x, 33533i), -_wgslsmith_mult_i32(2147483647i, 1i), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(var_0.xyw, vec3<i32>(var_2.x, func_1(u_input.a.x).d.x, max(-2147483647i, global2.a.a.a.x)))), global3.c, max(vec2<u32>(~4294967295u, global2.b), vec2<u32>(func_3(), ~6969u) & vec2<u32>(_wgslsmith_add_u32(9947u, u_input.a.x), global3.b)));
}

