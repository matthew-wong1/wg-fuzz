struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(true, true), vec2<i32>(-5332i, 2147483647i), -898f, vec4<i32>(-5067i, -1i, 1i, 1i), -1089f), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, -1i), 490f, vec4<i32>(2147483647i, 4585i, -3868i, -1i), -240f), Struct_1(vec2<bool>(false, false), vec2<i32>(52594i, 2147483647i), -314f, vec4<i32>(-23293i, 2147483647i, 0i, 0i), -337f), Struct_1(vec2<bool>(true, true), vec2<i32>(26037i, 5719i), -442f, vec4<i32>(-1i, 41888i, -38393i, -37735i), 1110f), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i), -232f, vec4<i32>(i32(-2147483648), 2147483647i, -35688i, 0i), -2278f), Struct_1(vec2<bool>(false, false), vec2<i32>(-31270i, 0i), 1000f, vec4<i32>(1i, 75120i, 0i, 2147483647i), 629f), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -1i), -284f, vec4<i32>(-1i, -1i, -45001i, 27499i), -479f), Struct_1(vec2<bool>(true, true), vec2<i32>(-5649i, 2147483647i), 962f, vec4<i32>(-30437i, -12144i, 71638i, 24869i), 904f), Struct_1(vec2<bool>(true, true), vec2<i32>(47352i, -33766i), 1185f, vec4<i32>(-34266i, 1i, 0i, 11089i), 860f), Struct_1(vec2<bool>(false, false), vec2<i32>(32572i, 2147483647i), -502f, vec4<i32>(i32(-2147483648), 60080i, 0i, 1i), -570f), Struct_1(vec2<bool>(false, true), vec2<i32>(10285i, i32(-2147483648)), 1491f, vec4<i32>(14687i, -5825i, 100i, 16925i), -389f), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, 10564i), 210f, vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), 584f), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 1i), -1000f, vec4<i32>(5333i, -1i, 16096i, i32(-2147483648)), -747f), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -21065i), -1801f, vec4<i32>(i32(-2147483648), -40358i, 1i, 2147483647i), 1653f), Struct_1(vec2<bool>(true, false), vec2<i32>(-11404i, 2147483647i), 704f, vec4<i32>(2489i, -12594i, i32(-2147483648), 8127i), 1000f), Struct_1(vec2<bool>(true, false), vec2<i32>(-7985i, 1i), 692f, vec4<i32>(i32(-2147483648), -20592i, 25842i, 0i), 1000f), Struct_1(vec2<bool>(false, true), vec2<i32>(6176i, 37168i), 343f, vec4<i32>(-1i, 0i, -12125i, 28813i), -1054f), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 1i), 911f, vec4<i32>(-30688i, i32(-2147483648), -39216i, -8105i), -417f), Struct_1(vec2<bool>(true, true), vec2<i32>(-17438i, -58675i), -1080f, vec4<i32>(2147483647i, 24293i, -37820i, 2147483647i), -1317f), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, 0i), 313f, vec4<i32>(19519i, -51771i, -1747i, i32(-2147483648)), 840f), Struct_1(vec2<bool>(true, true), vec2<i32>(9085i, -1i), 239f, vec4<i32>(70949i, -1i, -30191i, 40117i), 508f), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, -35643i), -1000f, vec4<i32>(1i, -2271i, -20239i, 1i), 1997f), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), -166f, vec4<i32>(-30118i, -1i, -37053i, -34591i), -2770f), Struct_1(vec2<bool>(true, true), vec2<i32>(1347i, 52818i), 1000f, vec4<i32>(1i, 0i, -1i, 30005i), -1011f), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, i32(-2147483648)), 1961f, vec4<i32>(0i, 0i, 1i, -1i), -1160f), Struct_1(vec2<bool>(false, true), vec2<i32>(31240i, 1i), 406f, vec4<i32>(3789i, -1i, 0i, 23731i), 311f), Struct_1(vec2<bool>(false, false), vec2<i32>(19503i, -1i), 168f, vec4<i32>(-1i, 0i, 22958i, 52309i), -438f), Struct_1(vec2<bool>(false, true), vec2<i32>(38916i, 1i), 679f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i), 773f), Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, 0i), 801f, vec4<i32>(-33248i, -41414i, 2147483647i, 13081i), 1093f), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), 1134f, vec4<i32>(0i, 22726i, -72545i, 14254i), -268f), Struct_1(vec2<bool>(true, true), vec2<i32>(-6177i, 1i), 1000f, vec4<i32>(2147483647i, 1i, 2147483647i, -26822i), 1420f));

var<private> global2: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = global0.a.x & true;
    global2 = array<vec3<bool>, 11>();
    global2 = array<vec3<bool>, 11>();
    let var_1 = var_0;
    var var_2 = ~(~(~firstLeadingBit(_wgslsmith_mod_vec2_i32(global0.b, vec2<i32>(9663i, arg_1.d.x)))));
    return 1u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_1(vec2<bool>(false, all(vec2<bool>(false, global0.a.x))), abs(vec2<i32>(~min(-1i, 5552i), u_input.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1133f - global0.c), _wgslsmith_f_op_f32(step(1274f, global0.e)), !global0.a.x))))), min(vec4<i32>(i32(-1i) * -27345i, 1i, abs(-22896i), _wgslsmith_mod_i32(1i, 17440i)), select(vec4<i32>(-31763i, -41241i, 0i, -2147483647i), ~vec4<i32>(2147483647i, global0.d.x, u_input.a.x, 1i), false)) & vec4<i32>(abs(~(-35448i)), _wgslsmith_mod_i32(71149i, u_input.a.x), _wgslsmith_mult_i32(arg_1.x, global0.b.x) << (arg_0.x % 32u), firstTrailingBit(_wgslsmith_clamp_i32(29076i, 57748i, -19812i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-414f, global0.c), _wgslsmith_f_op_f32(173f - global0.c))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(160f, global0.e) * global0.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e), 735f)))))));
    var var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(30777u, 31u)];
    var var_3 = !var_0.a;
    var var_4 = _wgslsmith_f_op_f32(select(-393f, -1401f, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-443f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-479f, 1000f, true))))))) - -1884f);
}

fn func_1() -> Struct_1 {
    global2 = array<vec3<bool>, 11>();
    let var_0 = global0.d.x;
    var var_1 = 13874i;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(59383u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(11667u, 18427u), func_2(vec2<u32>(1u, 4294967295u), global1[_wgslsmith_index_u32(1u, 31u)])), ~_wgslsmith_div_u32(1u, 7196u)), _wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(45195u, 55915u), vec2<u32>(110697u, 0u))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 19416u, 66987u), vec4<u32>(81943u, 30839u, 0u, 59894u)), abs(87819u))), vec4<u32>(~2300u, 0u, ~select(1u, 1562u, false), ~_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 38865u), ~0u)));
    var var_3 = _wgslsmith_mod_u32(4294967295u, 29798u);
    return Struct_1(select(!vec2<bool>(all(vec4<bool>(true, global0.a.x, global0.a.x, false)), true), vec2<bool>(global0.a.x, global0.a.x), global0.a.x), global0.b, global0.e, min(u_input.a, -global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(~0u, ~4294967295u, firstLeadingBit(var_2)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, global0.b.x, 0i), vec4<i32>(-17513i, u_input.a.x, global0.d.x, -8600i))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> StorageBuffer {
    global1 = array<Struct_1, 31>();
    var var_0 = -vec2<i32>(arg_0.b.x & ~arg_0.d.x, u_input.a.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.e, global0.c, arg_0.a.x)), -1288f)))), global0.c)), -2959f);
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_1, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e, 275f) + var_1) + vec2<f32>(279f, global0.e)), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c, 1054f)), global0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(), global2[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(~49086u, ~76711u)), 11u)]);
}

