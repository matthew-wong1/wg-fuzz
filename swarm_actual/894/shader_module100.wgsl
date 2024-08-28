struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(645f, 2463f, -592f, -108f, 1000f, 1013f, 533f, 585f, -1112f);

var<private> global1: vec4<u32>;

var<private> global2: i32 = 26429i;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1000f, 0u, 31689i, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(52854u, 4294967295u, 22202u, 44833u)), Struct_1(-2112f, 17799u, 17695i, vec3<u32>(38329u, 4294967295u, 59818u), vec4<u32>(0u, 12645u, 4294967295u, 91827u)), Struct_1(-424f, 4294967295u, i32(-2147483648), vec3<u32>(1u, 70297u, 37691u), vec4<u32>(0u, 33793u, 13147u, 37824u)), Struct_1(601f, 25795u, 0i, vec3<u32>(22106u, 1u, 27988u), vec4<u32>(1u, 72272u, 4294967295u, 89957u)), Struct_1(-657f, 0u, -1i, vec3<u32>(1u, 18459u, 4294967295u), vec4<u32>(28101u, 0u, 4294967295u, 4294967295u)), Struct_1(675f, 1u, 40940i, vec3<u32>(1u, 82301u, 12539u), vec4<u32>(4294967295u, 65878u, 0u, 4294967295u)), Struct_1(-830f, 0u, -1i, vec3<u32>(47112u, 45614u, 4091u), vec4<u32>(46052u, 4294967295u, 0u, 40672u)), Struct_1(1000f, 1u, i32(-2147483648), vec3<u32>(55372u, 1u, 17040u), vec4<u32>(1u, 120604u, 29831u, 0u)), Struct_1(-156f, 4294967295u, 0i, vec3<u32>(1u, 1u, 1u), vec4<u32>(78860u, 1u, 13184u, 63128u)), Struct_1(-569f, 0u, 46518i, vec3<u32>(81695u, 22234u, 1u), vec4<u32>(29851u, 19175u, 44901u, 89844u)), Struct_1(-675f, 1u, i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(23064u, 14409u, 15519u, 35724u)), Struct_1(1000f, 1072u, 1i, vec3<u32>(26769u, 0u, 1733u), vec4<u32>(0u, 41786u, 8198u, 4294967295u)), Struct_1(-1100f, 1u, 4560i, vec3<u32>(12662u, 63163u, 52064u), vec4<u32>(0u, 10650u, 0u, 31727u)), Struct_1(-622f, 1u, i32(-2147483648), vec3<u32>(37168u, 19747u, 25798u), vec4<u32>(1u, 23375u, 1u, 11034u)), Struct_1(-911f, 26217u, 0i, vec3<u32>(26906u, 12304u, 32226u), vec4<u32>(64117u, 59286u, 20438u, 57369u)), Struct_1(-936f, 0u, i32(-2147483648), vec3<u32>(4581u, 26575u, 25851u), vec4<u32>(4294967295u, 61168u, 4294967295u, 3654u)), Struct_1(-1953f, 37028u, i32(-2147483648), vec3<u32>(4294967295u, 28627u, 21820u), vec4<u32>(0u, 71764u, 1u, 0u)), Struct_1(617f, 58825u, -11941i, vec3<u32>(1u, 0u, 9515u), vec4<u32>(0u, 4294967295u, 45396u, 48072u)), Struct_1(-985f, 4294967295u, 3457i, vec3<u32>(1u, 22757u, 4294967295u), vec4<u32>(1u, 2868u, 1u, 4294967295u)), Struct_1(-1302f, 17649u, -4169i, vec3<u32>(24394u, 1u, 8575u), vec4<u32>(41780u, 1u, 1u, 1u)), Struct_1(641f, 1u, 0i, vec3<u32>(4294967295u, 1u, 4294967295u), vec4<u32>(0u, 49085u, 4294967295u, 4294967295u)), Struct_1(519f, 0u, -7449i, vec3<u32>(4719u, 1u, 11347u), vec4<u32>(0u, 6284u, 12020u, 30196u)), Struct_1(-1000f, 0u, 1i, vec3<u32>(4294967295u, 43722u, 4294967295u), vec4<u32>(47082u, 1u, 1u, 50548u)), Struct_1(511f, 4294967295u, 0i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 55937u, 39930u)), Struct_1(112f, 57341u, -1i, vec3<u32>(4294967295u, 0u, 4294967295u), vec4<u32>(25496u, 1u, 4294967295u, 4294967295u)), Struct_1(402f, 37868u, -37144i, vec3<u32>(3292u, 1u, 0u), vec4<u32>(4294967295u, 0u, 1u, 60157u)), Struct_1(-1000f, 38623u, 55395i, vec3<u32>(69221u, 1u, 15075u), vec4<u32>(1u, 0u, 102015u, 15034u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_3.a)), reverseBits(arg_3.d.x), ~(_wgslsmith_add_i32(-1i, arg_3.c & 1i) ^ _wgslsmith_sub_i32(-24887i, ~(-31364i))), vec3<u32>(~(~1u), abs(~7667u & u_input.b), ~(~(arg_3.d.x | u_input.b))), ~_wgslsmith_mult_vec4_u32(~(~arg_3.e), arg_3.e));
    global1 = var_0.e << (arg_3.e % vec4<u32>(32u));
    var var_1 = arg_3;
    let var_2 = vec3<i32>(var_0.c, ~(~max(2147483647i, -1i)), _wgslsmith_sub_i32(-_wgslsmith_add_i32(arg_3.c, arg_3.c), -1i << (0u % 32u))) ^ -abs(~vec3<i32>(arg_3.c, -2147483647i, 0i));
    let var_3 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    return ~arg_3.e;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = -(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d.x, arg_2, u_input.d.x, 0i) & vec4<i32>(-67323i, arg_0.c, arg_0.c, arg_2)), abs(vec4<i32>(arg_0.c, arg_0.c, 2147483647i, 1i) & vec4<i32>(-1i, -33148i, arg_0.c, 0i))));
    var var_1 = !vec3<bool>(!(!arg_1 | true), arg_1, !(!select(arg_1, arg_1, arg_1)));
    let var_2 = global0[_wgslsmith_index_u32(global1.x, 9u)];
    let var_3 = ~min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(20584u, ~27855u, 36792u, abs(6006u)), vec4<u32>(global1.x, 116047u >> (u_input.b % 32u), _wgslsmith_clamp_u32(arg_0.b, 1u, u_input.b), ~4294967295u)));
    let var_4 = min(func_3(select(-reverseBits(vec2<i32>(-4886i, -1i)), select(vec2<i32>(arg_2, -1116i), vec2<i32>(0i, arg_0.c), true), select(!vec2<bool>(false, arg_1), var_1.yy, arg_1 != var_1.x)), _wgslsmith_mod_vec2_u32(max(vec2<u32>(1u, u_input.b), global1.wx), ~vec2<u32>(1u, 0u)) ^ (reverseBits(vec2<u32>(4294967295u, global1.x)) ^ vec2<u32>(63286u, arg_0.d.x)), 4294967295u, global3[_wgslsmith_index_u32(global1.x, 27u)]).x, min(0u & (1u | ~arg_0.b), ~(1u | (4294967295u << (global1.x % 32u)))));
    return global1.zzz;
}

fn func_2() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b | 40610u, _wgslsmith_mod_u32(0u, global1.x)), 27u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), _wgslsmith_sub_u32(var_0.d.x >> (73176u % 32u), 0u), var_0.c, func_4(Struct_1(251f, 4294967295u, -34058i, ~global1.wxy, _wgslsmith_sub_vec4_u32(func_3(vec2<i32>(-5671i, -27267i), var_0.d.xy, global1.x, Struct_1(var_0.a, var_0.e.x, -2147483647i, vec3<u32>(global1.x, 1u, 0u), vec4<u32>(global1.x, 1u, 10552u, 100105u))), min(vec4<u32>(var_0.b, 0u, var_0.e.x, u_input.b), vec4<u32>(var_0.b, global1.x, 19483u, 14390u)))), !(any(vec2<bool>(false, false)) && (u_input.b == 12842u)), -20192i), var_0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1351f))), u_input.b, var_0.c, ~vec3<u32>(func_4(global3[_wgslsmith_index_u32(1u, 27u)], false, -12517i).x, 1u, _wgslsmith_sub_u32(4294967295u, 56001u)) >> (reverseBits(reverseBits(~vec3<u32>(0u, var_1.e.x, global1.x))) % vec3<u32>(32u)), ~(~var_0.e));
    var var_3 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(global1.x, var_0.b) | ~(~1u), 34274u);
    global1 = vec4<u32>(_wgslsmith_add_u32(~var_1.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, 22137u, var_0.e.x >> (83578u % 32u)), vec3<u32>(abs(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_2.d.x, 4294967295u, 39599u), var_2.e), firstTrailingBit(u_input.b)))), 56243u, countOneBits(4294967295u), ~5433u);
    return global3[_wgslsmith_index_u32(0u, 27u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2().d.x, 0u) ^ _wgslsmith_mult_u32(~select(~var_0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(46167u, u_input.b, var_0.b), vec3<u32>(u_input.b, 24066u, u_input.b)), select(arg_1.x, arg_1.x, arg_1.x)), global1.x), 27u)];
    var var_2 = func_2();
    global0 = array<f32, 9>();
    var var_3 = vec3<u32>(u_input.b, max(~firstTrailingBit(82926u), _wgslsmith_mult_u32(var_1.d.x, func_2().e.x)), _wgslsmith_sub_u32(4294967295u, u_input.b));
    return global3[_wgslsmith_index_u32(19700u, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    global0 = array<f32, 9>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], 1000f, -226f, 778f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1123f, global0[_wgslsmith_index_u32(global1.x, 9u)], -648f, global0[_wgslsmith_index_u32(u_input.b, 9u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 550f, -1000f))))))), vec2<bool>(any(vec2<bool>(true, true)), u_input.b == 17919u));
    var var_2 = -102f;
    global1 = ~_wgslsmith_div_vec4_u32(max(vec4<u32>(var_1.b, func_3(vec2<i32>(u_input.d.x, -36222i), vec2<u32>(global1.x, 45178u), 26765u, var_1).x, 4317u, func_3(u_input.d, global1.yy, 4294967295u, Struct_1(global0[_wgslsmith_index_u32(var_1.b, 9u)], u_input.b, -2147483647i, vec3<u32>(18047u, var_1.b, global1.x), vec4<u32>(1u, 1u, global1.x, global1.x))).x), _wgslsmith_sub_vec4_u32(vec4<u32>(54853u, global1.x, global1.x, 4294967295u), reverseBits(var_1.e))), vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(global1.x), 34042u), ~firstTrailingBit(global1.x), _wgslsmith_dot_vec3_u32(global1.yyy, vec3<u32>(u_input.b, 4294967295u, u_input.b) ^ vec3<u32>(global1.x, var_1.d.x, 55998u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(~var_1.c), u_input.c, var_1.c), vec3<i32>(i32(-1i) * -2147483647i, u_input.d.x, -16778i)), u_input.d, global0[_wgslsmith_index_u32(~var_1.d.x, 9u)], global0[_wgslsmith_index_u32(~var_1.e.x, 9u)]);
}

