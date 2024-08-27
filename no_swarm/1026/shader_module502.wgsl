struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec2<i32>(-1i, -1335i), i32(-2147483648), vec2<i32>(30137i, -17749i)), Struct_1(vec2<i32>(i32(-2147483648), 8517i), -10342i, vec2<i32>(14292i, -33767i)), Struct_2(20758u, vec2<u32>(1728u, 35625u), -5914i), vec2<u32>(41929u, 0u)), Struct_3(Struct_1(vec2<i32>(-38943i, 1i), 1207i, vec2<i32>(-51144i, 2147483647i)), Struct_1(vec2<i32>(-1i, 1i), 10386i, vec2<i32>(-197i, 269i)), Struct_2(11833u, vec2<u32>(0u, 1u), 34006i), vec2<u32>(4294967295u, 16733u)), Struct_3(Struct_1(vec2<i32>(0i, -12952i), -46051i, vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-40713i, 101365i), -27116i, vec2<i32>(70243i, 25775i)), Struct_2(40703u, vec2<u32>(5098u, 0u), 1i), vec2<u32>(56314u, 1u)), Struct_3(Struct_1(vec2<i32>(21598i, 70303i), 3801i, vec2<i32>(3866i, -1i)), Struct_1(vec2<i32>(-50688i, 1i), i32(-2147483648), vec2<i32>(-4042i, -1i)), Struct_2(64756u, vec2<u32>(13801u, 0u), 0i), vec2<u32>(47158u, 4294967295u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 0i), 50290i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(-11722i, 9517i), 9084i, vec2<i32>(-14106i, 51916i)), Struct_2(1u, vec2<u32>(4294967295u, 0u), -12784i), vec2<u32>(4294967295u, 24542u)), Struct_3(Struct_1(vec2<i32>(0i, 0i), -20456i, vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(1i, 1i), 24207i, vec2<i32>(1i, 47604i)), Struct_2(1u, vec2<u32>(49474u, 30175u), 0i), vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(vec2<i32>(-18134i, 0i), 2147483647i, vec2<i32>(15649i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), -1i), 21751i, vec2<i32>(2147483647i, -3518i)), Struct_2(4294967295u, vec2<u32>(6213u, 2589u), 2147483647i), vec2<u32>(32516u, 5003u)), Struct_3(Struct_1(vec2<i32>(-21379i, 0i), i32(-2147483648), vec2<i32>(14095i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 0i, vec2<i32>(2147483647i, 23729i)), Struct_2(29221u, vec2<u32>(0u, 70825u), -69246i), vec2<u32>(4294967295u, 19176u)), Struct_3(Struct_1(vec2<i32>(2147483647i, 37345i), -13791i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(33179i, 1i), 20864i, vec2<i32>(1i, -13179i)), Struct_2(4294967295u, vec2<u32>(1u, 1u), -9646i), vec2<u32>(4294967295u, 0u)));

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec3<i32>(-1i, 1i, 1i), -14601i, Struct_2(4294967295u, vec2<u32>(147u, 1u), -1i), vec4<bool>(true, false, true, false), true), Struct_4(vec3<i32>(0i, -7667i, -72177i), -1i, Struct_2(0u, vec2<u32>(73823u, 4792u), -48971i), vec4<bool>(true, false, false, true), true), Struct_4(vec3<i32>(i32(-2147483648), -5088i, -1967i), -30856i, Struct_2(77056u, vec2<u32>(4294967295u, 28417u), -1i), vec4<bool>(true, true, false, true), false), Struct_4(vec3<i32>(56043i, 22744i, -1i), i32(-2147483648), Struct_2(22253u, vec2<u32>(0u, 63130u), 0i), vec4<bool>(false, false, true, false), true), Struct_4(vec3<i32>(i32(-2147483648), 34738i, -17460i), 1i, Struct_2(28697u, vec2<u32>(32883u, 49380u), 2147483647i), vec4<bool>(false, true, false, false), true), Struct_4(vec3<i32>(6013i, 22424i, 18745i), -43705i, Struct_2(4294967295u, vec2<u32>(0u, 27582u), -90068i), vec4<bool>(true, false, false, true), false), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), -12873i, Struct_2(66130u, vec2<u32>(19700u, 0u), 4386i), vec4<bool>(false, false, true, false), false), Struct_4(vec3<i32>(2147483647i, -48077i, -18395i), 1i, Struct_2(123391u, vec2<u32>(0u, 1u), 0i), vec4<bool>(true, false, true, false), false), Struct_4(vec3<i32>(18306i, -1i, 1i), 17438i, Struct_2(50152u, vec2<u32>(4294967295u, 1894u), 50182i), vec4<bool>(false, false, false, true), true), Struct_4(vec3<i32>(-5884i, i32(-2147483648), -1i), 0i, Struct_2(20854u, vec2<u32>(20u, 24451u), 0i), vec4<bool>(false, false, false, false), true), Struct_4(vec3<i32>(i32(-2147483648), 36264i, 0i), 672i, Struct_2(0u, vec2<u32>(4294967295u, 4294967295u), -15105i), vec4<bool>(true, false, false, true), true), Struct_4(vec3<i32>(0i, 6791i, -17085i), i32(-2147483648), Struct_2(4294967295u, vec2<u32>(20830u, 1u), 0i), vec4<bool>(true, true, false, false), true), Struct_4(vec3<i32>(-28639i, 1i, -11363i), -34404i, Struct_2(23263u, vec2<u32>(18440u, 4294967295u), -2807i), vec4<bool>(false, true, false, true), true), Struct_4(vec3<i32>(-4135i, -1222i, 38977i), 1i, Struct_2(33973u, vec2<u32>(13233u, 60523u), 9886i), vec4<bool>(false, false, true, true), false), Struct_4(vec3<i32>(-1i, 10828i, 1i), i32(-2147483648), Struct_2(5230u, vec2<u32>(75544u, 42674u), 19987i), vec4<bool>(true, true, true, false), false), Struct_4(vec3<i32>(12202i, 2147483647i, 2147483647i), i32(-2147483648), Struct_2(77650u, vec2<u32>(1u, 28566u), i32(-2147483648)), vec4<bool>(true, false, true, false), true), Struct_4(vec3<i32>(24525i, -11045i, -4135i), 0i, Struct_2(18037u, vec2<u32>(1u, 13447u), -33716i), vec4<bool>(false, true, false, false), true), Struct_4(vec3<i32>(9470i, 2147483647i, -1i), 1i, Struct_2(4294967295u, vec2<u32>(56645u, 35708u), 1i), vec4<bool>(false, true, false, false), true), Struct_4(vec3<i32>(-63750i, i32(-2147483648), -46318i), 2147483647i, Struct_2(5620u, vec2<u32>(1u, 111832u), -8681i), vec4<bool>(true, true, false, true), true), Struct_4(vec3<i32>(2147483647i, 25246i, i32(-2147483648)), 2147483647i, Struct_2(2032u, vec2<u32>(1u, 0u), -1i), vec4<bool>(true, false, true, false), false), Struct_4(vec3<i32>(-35294i, 37887i, i32(-2147483648)), 2147483647i, Struct_2(30008u, vec2<u32>(31034u, 4486u), 1920i), vec4<bool>(false, false, true, false), true), Struct_4(vec3<i32>(i32(-2147483648), 1394i, 0i), -1i, Struct_2(31243u, vec2<u32>(35949u, 0u), i32(-2147483648)), vec4<bool>(true, true, false, true), true), Struct_4(vec3<i32>(0i, -16369i, 66931i), 36101i, Struct_2(0u, vec2<u32>(1u, 4294967295u), -18861i), vec4<bool>(true, true, false, true), false), Struct_4(vec3<i32>(2147483647i, -13648i, 0i), 1i, Struct_2(1u, vec2<u32>(20310u, 4294967295u), -15044i), vec4<bool>(false, true, true, false), true), Struct_4(vec3<i32>(0i, -3821i, 1i), 7029i, Struct_2(24434u, vec2<u32>(54725u, 45518u), 65048i), vec4<bool>(false, false, false, true), true), Struct_4(vec3<i32>(1i, 4207i, i32(-2147483648)), 38189i, Struct_2(1u, vec2<u32>(4294967295u, 21374u), 1i), vec4<bool>(false, false, false, true), true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> vec3<u32> {
    global3 = array<Struct_4, 26>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)))));
    global3 = array<Struct_4, 26>();
    var var_1 = Struct_3(Struct_1(u_input.a, arg_2, _wgslsmith_mult_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(45005i, 2147483647i), vec2<i32>(arg_3.c, 15747i), vec2<i32>(arg_3.c, 1i)), u_input.a, vec2<bool>(true, true)), -countOneBits(u_input.a))), Struct_1(-vec2<i32>(u_input.a.x | u_input.a.x, _wgslsmith_add_i32(arg_2, -2147483647i)), 1i, -vec2<i32>(arg_2, abs(-52521i))), Struct_2(1u, _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_3.b.x), vec2<u32>(arg_3.b.x, arg_3.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.b.x, arg_3.b.x), arg_3.b)), -(i32(-1i) * -arg_2)), arg_3.b);
    global3 = array<Struct_4, 26>();
    return abs(~firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3.a, var_1.c.a, arg_3.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c.b.x, var_1.d.x, 29424u), vec3<u32>(arg_3.b.x, var_1.d.x, 1u), vec3<u32>(4294967295u, arg_3.b.x, 4294967295u)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    global0 = 1f >= arg_0;
    var var_0 = ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, abs(21406u), ~0u)));
    var_0 = ~(~(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)), func_3(vec3<f32>(arg_0, 1209f, -402f), vec3<f32>(arg_1, arg_1, arg_1), arg_2.x, Struct_2(0u, var_0.zz, arg_2.x)))));
    global0 = all(select(vec4<bool>(true, !all(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, true))), !vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false))));
    global0 = 1u <= ~var_0.x;
    return Struct_1(vec2<i32>(1i, 1i) & vec2<i32>(~(u_input.a.x | u_input.a.x), arg_2.x), ~firstLeadingBit(arg_2.x), firstLeadingBit(arg_2));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    return firstTrailingBit(1u) > ~90216u;
}

fn func_1() -> bool {
    global1 = array<Struct_3, 23>();
    let var_0 = vec2<u32>(~0u, _wgslsmith_clamp_u32(40189u, 1u, 0u));
    global1 = array<Struct_3, 23>();
    let var_1 = vec3<bool>(!func_4(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), func_2(_wgslsmith_div_f32(-966f, 698f), _wgslsmith_f_op_f32(-911f - -1683f), u_input.a)), true, select(true && any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), false, false));
    global1 = array<Struct_3, 23>();
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global2 = array<Struct_3, 9>();
    global0 = false;
    global1 = array<Struct_3, 23>();
    global2 = array<Struct_3, 9>();
    global0 = !select(arg_0.x, any(vec2<bool>(true, true)), min(12418u, ~arg_2.c.a) < ((45818u ^ arg_2.d.x) ^ arg_2.d.x));
    return Struct_2(0u, arg_2.d, arg_1.a.x ^ _wgslsmith_dot_vec2_i32(~(-u_input.a), arg_2.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = vec3<bool>(true, true || all(vec3<bool>(true, any(vec3<bool>(false, false, true)), true)), true);
    global1 = array<Struct_3, 23>();
    var var_2 = !vec2<bool>(!var_1.x || any(!vec4<bool>(var_1.x, true, true, false)), var_1.x);
    var var_3 = func_5(!(!select(var_1, vec3<bool>(false, false, true), var_2.x)), Struct_1(-u_input.a, select(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -48726i), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x | u_input.a.x, func_1()), _wgslsmith_mult_i32(u_input.a.x & -35029i, _wgslsmith_mod_i32(-16699i, 1i)), func_4(vec2<bool>(true, var_2.x), Struct_1(u_input.a, 0i, vec2<i32>(15179i, u_input.a.x))) == var_1.x), u_input.a), Struct_3(func_2(_wgslsmith_f_op_f32(-1170f * _wgslsmith_f_op_f32(abs(975f))), -1689f, max(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), vec2<i32>(1i, 1i))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2567f, -1231f)), -1567f, ~select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec2<bool>(false, true))), Struct_2(~abs(0u), select(vec2<u32>(118865u, 4294967295u), vec2<u32>(1u, 1u), true), -37047i), ~max(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(43643u, 34542u), vec2<u32>(0u, 31161u)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-443f, 1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-326f))))), vec2<f32>(2452f, 1156f), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.c, select(var_3.c, -14972i, var_1.x) >> (2702u % 32u), u_input.a.x, countOneBits(u_input.a.x) & max(u_input.a.x, u_input.a.x)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -10277i, -875i, 33581i), max(vec4<i32>(u_input.a.x, var_3.c, var_3.c, var_3.c), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i))))));
}

