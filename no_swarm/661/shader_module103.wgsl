struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(47372u, vec3<i32>(54897i, 2147483647i, 2147483647i)), Struct_1(7633u, vec3<i32>(-44955i, -1i, 19983i)), Struct_1(4294967295u, vec3<i32>(15237i, i32(-2147483648), 0i)), Struct_1(40794u, vec3<i32>(-1i, 0i, -40127i)), Struct_1(10649u, vec3<i32>(i32(-2147483648), -20572i, 0i)), Struct_1(18684u, vec3<i32>(-1i, 1i, -24311i)), Struct_1(1u, vec3<i32>(0i, -33353i, -46850i)), Struct_1(4294967295u, vec3<i32>(-36695i, 70362i, 2147483647i)), Struct_1(21075u, vec3<i32>(-9069i, i32(-2147483648), 20708i)), Struct_1(15880u, vec3<i32>(-1i, 1i, 1i)), Struct_1(8579u, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648))), Struct_1(4400u, vec3<i32>(1i, -9577i, 18723i)), Struct_1(61215u, vec3<i32>(-1i, -2601i, 36637i)), Struct_1(4294967295u, vec3<i32>(-5498i, 0i, -15779i)), Struct_1(25042u, vec3<i32>(2147483647i, 124861i, i32(-2147483648))), Struct_1(0u, vec3<i32>(-27196i, 40753i, 0i)), Struct_1(16020u, vec3<i32>(i32(-2147483648), -48666i, 2276i)), Struct_1(0u, vec3<i32>(57375i, 2147483647i, -1i)), Struct_1(4294967295u, vec3<i32>(-27508i, 0i, 1i)), Struct_1(4294967295u, vec3<i32>(-28631i, -15337i, 17444i)), Struct_1(4294967295u, vec3<i32>(-9456i, 8415i, 0i)), Struct_1(55100u, vec3<i32>(0i, -1i, -18540i)), Struct_1(30224u, vec3<i32>(-41494i, 15708i, 1i)), Struct_1(29962u, vec3<i32>(-81449i, 25812i, i32(-2147483648))), Struct_1(1u, vec3<i32>(1i, -1i, 37906i)), Struct_1(65265u, vec3<i32>(-61561i, 9873i, 0i)), Struct_1(45u, vec3<i32>(18972i, 1i, 19138i)), Struct_1(55243u, vec3<i32>(33336i, -10028i, 1i)), Struct_1(4294967295u, vec3<i32>(17290i, 17971i, 1i)), Struct_1(48536u, vec3<i32>(50967i, 78597i, 2147483647i)), Struct_1(47657u, vec3<i32>(4522i, 1i, -11818i)));

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-588f, -1159f, -829f, -222f), vec4<f32>(641f, 2254f, -1000f, 390f), vec4<f32>(-227f, 1234f, -347f, -871f), vec4<f32>(-569f, 1736f, -205f, -1000f), vec4<f32>(-2141f, -1756f, 1080f, -316f), vec4<f32>(-1000f, 1233f, -730f, -1671f), vec4<f32>(472f, 1151f, -554f, -916f), vec4<f32>(715f, 627f, -1167f, -986f), vec4<f32>(1337f, 329f, -1407f, -136f), vec4<f32>(-1771f, -1000f, 772f, 1134f), vec4<f32>(-315f, 1644f, -1000f, 990f), vec4<f32>(814f, 939f, 426f, 2116f), vec4<f32>(-808f, -990f, -794f, -191f), vec4<f32>(2041f, -1927f, -1796f, -333f), vec4<f32>(-464f, -723f, -402f, 231f), vec4<f32>(-120f, -106f, -133f, 137f), vec4<f32>(-592f, 499f, -382f, -1386f), vec4<f32>(-344f, -1148f, -2241f, -428f), vec4<f32>(-1565f, -934f, -548f, 406f), vec4<f32>(337f, 121f, 1836f, 823f), vec4<f32>(-347f, 1466f, 209f, -2056f), vec4<f32>(-1878f, -922f, 1394f, 967f), vec4<f32>(-1000f, 185f, -1209f, -1670f), vec4<f32>(141f, -408f, 1789f, 112f), vec4<f32>(-1301f, -1000f, -1164f, -448f), vec4<f32>(376f, -968f, 1001f, -2379f));

var<private> global3: vec3<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = all(vec3<bool>(true, firstLeadingBit(max(arg_1.x, arg_1.x)) <= select(max(-1i, 30651i), u_input.a.x, false), !(~(-2147483647i) == ~arg_1.x)));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(true, true)), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_2 = ~u_input.b;
    var_2 = u_input.b;
    let var_3 = min(~(~vec3<u32>(u_input.c, _wgslsmith_div_u32(66627u, u_input.c), ~1u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, _wgslsmith_mult_u32(global3.x, global3.x), global3.x), vec3<u32>(33039u, 35557u, global3.x) ^ vec3<u32>(0u, global3.x, global3.x), vec3<u32>(select(global3.x, u_input.c, true), 1u, _wgslsmith_div_u32(u_input.c, 4294967295u))));
    return var_3;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<u32> {
    let var_0 = Struct_1(global3.x, _wgslsmith_mod_vec3_i32(u_input.b.zyz, _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a.x, -1i), -vec3<i32>(u_input.b.x, -23788i, u_input.a.x))));
    global0 = array<Struct_1, 31>();
    var var_1 = -_wgslsmith_sub_i32(-23399i, var_0.b.x);
    var var_2 = vec3<i32>(u_input.b.x, _wgslsmith_add_i32(~_wgslsmith_sub_i32(-var_0.b.x, ~18513i), _wgslsmith_mult_i32(i32(-1i) * -15464i, 54886i)), _wgslsmith_clamp_i32(u_input.b.x, var_0.b.x, 51895i));
    var_1 = 2147483647i;
    return abs(~func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(56798u, 26u)], vec4<f32>(382f, -213f, -1433f, arg_0)))), firstLeadingBit(vec3<i32>(0i, var_0.b.x, 8942i))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    global3 = vec3<u32>(4294967295u >> (u_input.c % 32u), u_input.c, 0u);
    global3 = ~min(~_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 4294967295u, 1u) | vec3<u32>(69180u, 1u, arg_2), vec3<u32>(u_input.c, 4294967295u, 4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2) << (vec3<u32>(4294967295u, u_input.c, 47938u) % vec3<u32>(32u)), ~vec3<u32>(31098u, 1u, 0u)));
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.c ^ global3.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(37583u, arg_0.a), ~1u), u_input.c), _wgslsmith_add_vec3_u32(abs(vec3<u32>(32777u, 59110u, arg_0.a)), func_2(arg_1, _wgslsmith_f_op_f32(-arg_1)))), 0u, 6216u);
    var var_1 = arg_0;
    global1 = array<Struct_1, 20>();
    return ~var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = select(abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, ~arg_3.b.x), min(_wgslsmith_mod_i32(arg_3.b.x, 22552i), -u_input.b.x))), ~(~1i), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(2125f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), -1882f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f - arg_1) * -663f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-993f, 446f, 55646i == u_input.a.x)) + arg_1)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 138f, arg_1, 467f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(2425f)), _wgslsmith_f_op_f32(select(727f, arg_1, u_input.c <= 46664u)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_1)) - _wgslsmith_f_op_f32(arg_1 + arg_1)))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, arg_3.a), ~(~(~4294967295u))) << (~global3.x % 32u);
    global1 = array<Struct_1, 20>();
    let var_3 = arg_2;
    return ~(~(_wgslsmith_mod_i32(i32(-1i) * -1i, -arg_2.b.x) | u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(68525i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-307f, -3207f, -986f, 410f), global2[_wgslsmith_index_u32(global3.x, 26u)]))))), max(-_wgslsmith_mult_i32(u_input.b.x, 23037i), 0i & (0i << (u_input.c % 32u))) ^ func_4(Struct_1(func_1(global0[_wgslsmith_index_u32(32778u, 31u)], -339f, 28321u), vec3<i32>(u_input.b.x, -18113i, 0i) & u_input.b.xwy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1429f, -1131f, true)), _wgslsmith_f_op_f32(-2743f + -161f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c & 38468u, _wgslsmith_mult_u32(u_input.c, 18702u)), 20u)], Struct_1(func_2(2145f, 999f).x, -vec3<i32>(u_input.a.x, u_input.b.x, 32045i))), ~_wgslsmith_dot_vec3_u32(func_3(vec4<f32>(553f, -1000f, 1904f, -271f), ~vec3<i32>(0i, 0i, u_input.b.x)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 53276u), vec3<u32>(u_input.c, u_input.c, 0u)))));
}

