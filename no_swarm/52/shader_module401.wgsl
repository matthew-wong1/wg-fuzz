struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 31514u);

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-8407i, -29351i, 9889i), vec3<i32>(2147483647i, -58349i, -1i), vec3<i32>(2147483647i, -4194i, 13010i), vec3<i32>(2147483647i, 1i, 75032i), vec3<i32>(2147483647i, -21309i, 21399i), vec3<i32>(2147483647i, -2517i, 0i), vec3<i32>(29991i, 1i, -5365i), vec3<i32>(-3921i, 0i, 16661i), vec3<i32>(-3106i, 22668i, -1i), vec3<i32>(-1i, -51905i, -24833i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-16001i, -1i, 1i), vec3<i32>(45127i, 28066i, -25437i), vec3<i32>(2147483647i, -17362i, 14404i), vec3<i32>(2147483647i, 25114i, 0i), vec3<i32>(-14984i, 0i, 5246i), vec3<i32>(0i, 2147483647i, 5783i), vec3<i32>(-35395i, 1i, 0i), vec3<i32>(2147483647i, 23247i, 36074i), vec3<i32>(9831i, -11978i, -43194i), vec3<i32>(-22881i, 0i, 38043i), vec3<i32>(0i, 11897i, i32(-2147483648)), vec3<i32>(28955i, 45095i, 18242i), vec3<i32>(-418i, i32(-2147483648), 1i), vec3<i32>(1i, 50077i, 1i), vec3<i32>(23830i, -1i, i32(-2147483648)), vec3<i32>(-1i, 19294i, -17715i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<f32> {
    let var_0 = vec3<bool>(false, any(select(select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, arg_0.d)), !vec2<bool>(arg_0.d, arg_0.d), !vec2<bool>(false, arg_0.d))) || true, arg_0.d);
    global1 = array<vec3<i32>, 27>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c + arg_0.a.x))), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1409f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(231f)), 1633f)), 814f)), reverseBits(abs(global0.x) << (0u % 32u)) >= _wgslsmith_mod_u32(global0.x, global0.x), ~0i);
    global0 = ~(u_input.a.ww | u_input.a.wy);
    let var_2 = ~(~vec4<u32>(~47172u, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(22613u, 1u, 1u, u_input.a.x), vec4<u32>(14020u, 68355u, 1u, global0.x)), firstLeadingBit(u_input.a)), global0.x));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.yy - var_1.a.zx))) * vec2<f32>(972f, -261f)))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<vec3<i32>, 27>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -789f))), 370f, _wgslsmith_f_op_f32(ceil(696f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1062f, -148f, -1484f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-622f, 105f) + vec2<f32>(-830f, -1375f)) * vec2<f32>(-450f, 1901f)), -1000f, false & select(arg_0.x, arg_0.x, arg_0.x), 17246i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1364f, 565f, -975f), vec3<f32>(-1037f, -353f, -1318f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -137f), -460f)))), -277f, !(44155u <= u_input.a.x), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-42426i, -50683i, -3818i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<i32>(1i, -52205i, 1i))), ~abs(vec4<i32>(3369i, -2147483647i, 0i, 0i)))));
    let var_1 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))), _wgslsmith_f_op_f32(1028f - var_0.a.x)), -756f, var_0.d, -2147483647i);
    global0 = u_input.a.xx;
    let var_2 = ~(global0.x << (~(~39094u) % 32u));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 1317f)), _wgslsmith_f_op_f32(-var_0.c), 770f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2199f, _wgslsmith_f_op_f32(trunc(-102f)), _wgslsmith_f_op_f32(exp2(var_1.a.x)))))), var_1.a.xy, -552f, all(vec4<bool>(var_0.c != _wgslsmith_f_op_f32(sign(var_0.a.x)), arg_0.x, 12679u != _wgslsmith_mod_u32(1u, global0.x), global0.x == ~global0.x)), -1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<f32> {
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.b, _wgslsmith_div_f32(-1829f, 1341f), true, reverseBits(arg_0.e) >> (11599u % 32u));
    return arg_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x)), vec2<bool>(!arg_0.x, false)))), _wgslsmith_f_op_vec2_f32(func_3(func_2(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, -1062f, 131f)))))), _wgslsmith_f_op_f32(ceil(-1360f)), true, arg_1);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1718f + 1169f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1140f, -412f))), -299f);
    let var_2 = select(vec4<bool>(!any(vec3<bool>(arg_0.x, false, arg_0.x)), false, func_2(vec4<bool>(false, select(false, var_0.d, var_0.d), arg_0.x, var_0.b.x >= 426f)).d, true), vec4<bool>(!(false != arg_0.x), any(vec4<bool>(false, arg_0.x, true, true)), all(select(select(vec4<bool>(var_0.d, arg_0.x, false, true), vec4<bool>(true, var_0.d, true, false), vec4<bool>(false, arg_0.x, arg_0.x, false)), vec4<bool>(false, true, false, arg_0.x), !arg_0.x)), arg_0.x), select(vec4<bool>(!(!arg_0.x), ~2147483647i == var_0.e, all(select(vec4<bool>(arg_0.x, arg_0.x, var_0.d, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true)), false), select(!(!vec4<bool>(arg_0.x, false, var_0.d, true)), vec4<bool>(all(vec2<bool>(false, true)), var_0.d || arg_0.x, false, all(vec2<bool>(false, var_0.d))), false), select(vec4<bool>(var_0.d, true, any(vec3<bool>(var_0.d, true, var_0.d)), arg_0.x), !(!vec4<bool>(false, false, true, arg_0.x)), !(arg_1 < var_0.e))));
    global0 = ~min(u_input.a.xw, u_input.a.yw);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c, -210f, 917f), _wgslsmith_f_op_vec3_f32(vec3<f32>(686f, var_1.x, var_1.x) + var_0.a))))))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f * 1450f)) + var_0.c) + var_0.c), var_0.d, _wgslsmith_div_i32(~abs(0i >> (global0.x % 32u)), arg_1));
    return ~firstTrailingBit(~select(-var_0.e, ~var_0.e, true));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1249f) * 405f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(433f, arg_1))))))))), arg_2.x, select(all(vec3<bool>(true, select(false, true, false), true)), false, true), _wgslsmith_dot_vec2_i32(arg_3.zx, arg_0));
    var var_1 = var_0.a.x;
    let var_2 = -1i;
    var var_3 = var_0;
    var var_4 = func_2(vec4<bool>(select(true, any(vec2<bool>(true, true)), var_0.d), false, ((1143f >= var_0.a.x) | false) & true, var_0.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<i32>(9604i, func_1(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), false), 27728i, global0.x)), 1700f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-201f, -1090f), vec2<f32>(-520f, -894f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1213f)), -513f) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-856f, 622f) - vec2<f32>(208f, 403f)))))), vec4<i32>(_wgslsmith_div_i32(1i, (-50179i >> (u_input.a.x % 32u)) << (~4294967295u % 32u)), ~_wgslsmith_div_i32(~(-48920i), ~1i), -4954i, -2450i & _wgslsmith_mult_i32(select(-1i, 1i, true), _wgslsmith_clamp_i32(-1017i, 0i, 2147483647i))));
    let var_1 = func_2(select(!vec4<bool>(true, true, false, any(vec3<bool>(true, var_0.d, var_0.d))), select(!(!vec4<bool>(false, false, false, var_0.d)), select(!vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), !vec4<bool>(var_0.d, false, var_0.d, var_0.d), -6883i != var_0.e), vec4<bool>(var_0.d, true, true, true)), vec4<bool>(!any(vec4<bool>(var_0.d, true, false, true)), true, !(!var_0.d), true)));
    let var_2 = ~(~(vec2<i32>(-1i) * -vec2<i32>(-1i, var_0.e)));
    var var_3 = countOneBits(abs(_wgslsmith_mod_i32(var_0.e, -1i)));
    var var_4 = vec3<u32>(~global0.x, u_input.a.x, 74908u);
    let var_5 = ~var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global0.x, 91170u ^ (abs(116171u) ^ var_4.x)), abs(52180u), var_1.a.x, var_4.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(307f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
}

